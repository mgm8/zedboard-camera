/*
 * capturer.cpp
 * 
 * Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * This file is part of ZedCam.
 * 
 * ZedCam is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * ZedCam is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with ZedCam. If not, see <http://www.gnu.org/licenses/>.
 * 
 */

/**
 * \brief Frame capturer implementation.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 0.2.1
 * 
 * \date 18/09/2018
 * 
 * \addtogroup capturer
 * \{
 */

#include <stdexcept>

#include "capturer.h"

using namespace std;
using namespace cv;

Capturer::Capturer()
{
    this->is_opened = false;

    this->SetResolution(CAPTURER_DEFAULT_IMAGE_WIDTH, CAPTURER_DEFAULT_IMAGE_HEIGHT);
}

Capturer::Capturer(uint32_t address, uint32_t range)
    : Capturer()
{
    this->Open(address, range);
}

Capturer::~Capturer()
{
    this->Close();
}

bool Capturer::Open(uint32_t address, uint32_t range)
{
    this->zynq_axi = new ZynqAXI;

    if (!this->zynq_axi->Open(address, range))
    {
        return false;
    }

    this->is_opened = true;

    return true;
}

bool Capturer::Close()
{
    if (this->IsOpened())
    {
        delete this->zynq_axi;

        this->buffer.clear();

        return true;
    }
    else
    {
        return false;
    }
}

bool Capturer::IsOpened()
{
    return this->is_opened;
}

void Capturer::SetResolution(Size res)
{
    this->resolution = res;
}

void Capturer::SetResolution(unsigned int width, unsigned int height)
{
    this->SetResolution(Size(width, height));
}

Size Capturer::GetResolution()
{
    return this->resolution;
}

bool Capturer::ReadPixels(int format)
{
    if (this->IsOpened())
    {
        this->buffer.clear();

        uint32_t pixels = this->GetResolution().width*this->GetResolution().height;

        this->Enable();

        for(uint32_t adr=0; adr<pixels; adr++)
        {
            uint32_t value = this->ReadMemAdr(adr);

            switch(format)
            {
                case CAPTURER_FORMAT_GRAY8:
                    this->buffer.push_back(Point3i(0, (value & 0x000000FF), 0));
                    break;
                case CAPTURER_FORMAT_RGB444:
                    this->buffer.push_back(Point3i(16*((value & 0x0000000F)),
                                                   16*((value & 0x000000F0) >> 4),
                                                   16*((value & 0x00000F00) >> 8)));
                    break;
                case CAPTURER_FORMAT_RGB565:
                    this->buffer.push_back(Point3i(8*((value & 0x0000001F)),
                                                   4*((value & 0x000007E0) >> 5),
                                                   8*((value & 0x0000F800) >> 11)));
                    break;
                default:
                    throw invalid_argument("Invalid format in image generation!");

                    return false;
            }
        }

        this->Disable();

        return true;
    }
    else
    {
        throw runtime_error("Capturer not opened! The Capturer must be opened to read pixels!");

        return false;
    }
}

bool Capturer::GenerateImage(Mat &image, int format)
{
    if (!this->buffer.empty())
    {
        uint32_t pixel = 0;

        switch(format)
        {
            case CAPTURER_FORMAT_GRAY8:
                image = Mat::zeros(this->GetResolution(), CV_8UC1);
                break;
            case CAPTURER_FORMAT_RGB444:
                image = Mat::zeros(this->GetResolution(), CV_8UC3);
                break;
            case CAPTURER_FORMAT_RGB565:
                image = Mat::zeros(this->GetResolution(), CV_8UC3);
                break;
            default:
                throw invalid_argument("Invalid format in image generation!");

                return false;
        }

        for(unsigned int i=0; i<this->resolution.height; i++)
        {
            for(unsigned int j=0; j<this->resolution.width; j++)
            {
                switch(format)
                {
                    case CAPTURER_FORMAT_GRAY8:
                        image.at<uchar>(i,j) = this->buffer[pixel++].y;
                        break;
                    case CAPTURER_FORMAT_RGB444:
                        image.at<Vec3b>(i,j)[0] = this->buffer[pixel].x;
                        image.at<Vec3b>(i,j)[1] = this->buffer[pixel].y;
                        image.at<Vec3b>(i,j)[2] = this->buffer[pixel++].z;
                        break;
                    case CAPTURER_FORMAT_RGB565:
                        image.at<Vec3b>(i,j)[0] = this->buffer[pixel].x;
                        image.at<Vec3b>(i,j)[1] = this->buffer[pixel].y;
                        image.at<Vec3b>(i,j)[2] = this->buffer[pixel++].z;
                        break;
                }
            }
        }

        return true;
    }
    else
    {
        throw underflow_error("Pixels buffer is empty!");

        return false;
    }
}

bool Capturer::GetFrame(Mat &image, int format)
{
    return this->ReadPixels(format) and this->GenerateImage(image, format);
}

void Capturer::Enable()
{
    this->zynq_axi->Write(1, 1);
}

void Capturer::Disable()
{
    this->zynq_axi->Write(1, 0);
}

uint32_t Capturer::ReadMemAdr(uint32_t index)
{
    this->zynq_axi->Write(0, index);

    return this->zynq_axi->Read(0);
}

//! \} End of capturer group
