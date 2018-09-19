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
 * \version 0.1.0
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

        uint32_t pixels;

        switch(format)
        {
            case CAPTURER_FORMAT_GRAY8:
                pixels = (this->GetResolution().width*this->GetResolution().height)/4;      // 4: 4 pixels per address
                break;
            case CAPTURER_FORMAT_RGB444:
                pixels = (this->GetResolution().width*this->GetResolution().height)/2;      // 2: 2 pixels per address
                break;
            case CAPTURER_FORMAT_RGB565:
                pixels = (this->GetResolution().width*this->GetResolution().height)/2;      // 2: 2 pixels per address
                break;
            default:
                throw invalid_argument("Invalid format in image generation!");

                return false;
        }

        for(uint32_t i=0; i<pixels; i++)
        {
            uint32_t adr_value = this->zynq_axi->Read(i);

            switch(format)
            {
                case CAPTURER_FORMAT_GRAY8:
                    this->buffer.push_back(Point3i(0, (adr_value & 0x000000FF), 0));
                    this->buffer.push_back(Point3i(0, (adr_value & 0x0000FF00) >> 8, 0));
                    this->buffer.push_back(Point3i(0, (adr_value & 0x00FF0000) >> 16, 0));
                    this->buffer.push_back(Point3i(0, (adr_value & 0xFF000000) >> 24, 0));
                    break;
                case CAPTURER_FORMAT_RGB444:
                    this->buffer.push_back(Point3i(16*((adr_value & 0x0000000F)),
                                                   16*((adr_value & 0x000000F0) >> 4),
                                                   16*((adr_value & 0x00000F00) >> 8)));
                    this->buffer.push_back(Point3i(16*((adr_value & 0x0000F000) >> 12),
                                                   16*((adr_value & 0x000F0000) >> 16),
                                                   16*((adr_value & 0x00F00000) >> 20)));
                    break;
                case CAPTURER_FORMAT_RGB565:
                    this->buffer.push_back(Point3i(8*((adr_value & 0x0000001F)),
                                                   4*((adr_value & 0x000007E0) >> 5),
                                                   8*((adr_value & 0x0000F800) >> 11)));
                    this->buffer.push_back(Point3i(8*((adr_value & 0x001F0000) >> 16),
                                                   4*((adr_value & 0x07E00000) >> 21),
                                                   8*((adr_value & 0xF8000000) >> 27)));
                    break;
            }
        }

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

        for(unsigned int i=0; i<this->resolution.width; i++)
        {
            for(unsigned int j=0; j<this->resolution.height; j++)
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

//! \} End of capturer group
