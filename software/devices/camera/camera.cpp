/*
 * camera.cpp
 * 
 * Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 * 
 */

/**
 * \brief AXI camera device implementation.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 11/09/2018
 * 
 * \addtogroup camera
 * \{
 */

#include <string>

#include <stdint.h>
#include <unistd.h>

#include <drivers/mt9d111/mt9d111_driver.h>

#include "camera.h"

using namespace std;
using namespace cv;

Camera::Camera()
{
    this->width = CAMERA_DEFAULT_WIDTH;
    this->height = CAMERA_DEFAULT_HEIGHT;

    this->is_opened = false;

    this->debug = new Debug("Camera");
}

Camera::Camera(int index)
    : Camera()
{
    this->open(index);
}

Camera::~Camera()
{
    this->release();

    delete debug;
}

double Camera::get(int propid)
{
    switch(propid)
    {
        case CAM_PROP_POS_FRAMES:
            return 0;
        case CAM_PROP_FRAME_WIDTH:
            return this->width;
        case CAM_PROP_FRAME_HEIGHT:
            return this->height;
        case CAM_PROP_FPS:
            return 0;
        case CAM_PROP_FORMAT:
            return 0;
        default:
            return 0;
    }
}

bool Camera::grab()
{
    if (this->isOpened())
    {
        if (this->sensor->CheckDevice())
        {
            this->zynq_axi->Write(1, 1);

            buffer.clear();

            uint32_t adr = 0;
            for(unsigned int i=0; i<this->height; i++)
            {
                vector<uint32_t> row;

                for(unsigned int j=0; j<this->width; j++)
                {
                    this->zynq_axi->Write(0, adr++);

                    row.push_back(this->zynq_axi->Read(0));
                }

                buffer.push_back(row);
            }

            this->zynq_axi->Write(1, 0);

            return true;
        }
        else
        {
            this->debug->WriteEvent("Error grabbing a frame: Camera disconnected!");
            this->debug->NewLine();

            return false;
        }
    }
    else
    {
        this->debug->WriteEvent("Error grabbing a frame: Camera not opened!");
        this->debug->NewLine();

        return false;
    }
}

bool Camera::isOpened()
{
    return this->is_opened;
}

bool Camera::open(int index)
{
    string i2c_dev;

    switch(index)
    {
        case 0:
            i2c_dev = "/dev/i2c-0";
            break;
        case 1:
            i2c_dev = "/dev/i2c-1";
            break;
        case 2:
            i2c_dev = "/dev/i2c-2";
            break;
        case 3:
            i2c_dev = "/dev/i2c-3";
            break;
        case 4:
            i2c_dev = "/dev/i2c-4";
            break;
        default:
            return false;
    }

    if (this->isOpened())
    {
        this->release();    // If already opened, close before open again
    }

    this->sensor = new MT9D111;

    if (!this->sensor->Open(i2c_dev.c_str()))
    {
        this->debug->WriteEvent("Error during sensor opening!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->CheckDevice())
    {
        this->debug->WriteEvent("Error checking sensor!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->Config())
    {
        this->debug->WriteEvent("Error configuring sensor!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    sleep(1);

    if (!this->sensor->EnablePLL(0x1000, 0x0500))
    {
        this->debug->WriteEvent("Error configuring sensor PLL!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->SetOutputFormat(MT9D111_OUTPUT_FORMAT_RGB444x))
    {
        this->debug->WriteEvent("Error configuring sensor output format!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->SetResolution(MT9D111_MODE_PREVIEW, this->width, this->height))
    {
        this->debug->WriteEvent("Error configuring sensor resolution for preview mode!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->SetResolution(MT9D111_MODE_CAPTURE, this->width, this->height))
    {
        this->debug->WriteEvent("Error configuring sensor resolution for capture mode!");
        this->debug->NewLine();

        delete this->sensor;

        return false;
    }

    if (!this->sensor->WriteReg(0xF0, 0x00))
    {
        delete this->sensor;

        return false;
    }

    if (!this->sensor->WriteReg(0x21, 0x8403))
    {
        delete this->sensor;

        return false;
    }

    if (!this->sensor->SequencerCmd(MT9D111_DRIVER_VAR_SEQUENCER_CMD_REFRESH))
    {
        delete this->sensor;

        return false;
    }

    this->zynq_axi = new ZynqAXI(0x43C00000, 4096);

    this->is_opened = true;

    return true;
}

bool Camera::read(Mat &image, int flag)
{
    return (this->grab() and this->retrieve(image, flag));
}

void Camera::release()
{
    if (this->isOpened())
    {
        this->debug->WriteEvent("Releasing camera...");
        this->debug->NewLine();

        delete this->sensor;
        delete this->zynq_axi;

        this->is_opened = false;
    }
}

bool Camera::retrieve(Mat &image, int flag)
{
    if (!this->buffer.empty())
    {
        image = Mat::zeros(Size(this->get(CAM_PROP_FRAME_WIDTH), this->get(CAM_PROP_FRAME_HEIGHT)), CV_8UC3);

        for(unsigned int i=0; i<this->get(CAM_PROP_FRAME_HEIGHT); i++)
        {
            for(unsigned int j=0; j<this->get(CAM_PROP_FRAME_WIDTH); j++)
            {
                image.at<Vec3b>(i,j)[0] = ((1 << 8)/(1 << 4))*(this->buffer[i][j] & 0x00F);
                image.at<Vec3b>(i,j)[1] = ((1 << 8)/(1 << 4))*((this->buffer[i][j] & 0x0F0) >> 4);
                image.at<Vec3b>(i,j)[2] = ((1 << 8)/(1 << 4))*((this->buffer[i][j] & 0xF00) >> 8);
            }
        }

        return true;
    }
    else
    {
        this->debug->WriteEvent("Error retrieving frame: Empty buffer!");
        this->debug->NewLine();

        return false;
    }
}

bool Camera::set(int propid, double value)
{
    if (this->isOpened())
    {
        switch(propid)
        {
            case CAM_PROP_POS_FRAMES:
                return false;
            case CAM_PROP_FRAME_WIDTH:
                this->width = (unsigned int)(value);

                return (this->sensor->SetResolution(MT9D111_MODE_PREVIEW, (uint16_t)(this->width), (uint16_t)(this->height)) and
                        this->sensor->SetResolution(MT9D111_MODE_CAPTURE, (uint16_t)(this->width), (uint16_t)(this->height)));
            case CAM_PROP_FRAME_HEIGHT:
                this->height = (unsigned int)(value);

                return (this->sensor->SetResolution(MT9D111_MODE_PREVIEW, (uint16_t)(this->width), (uint16_t)(this->height)) and
                        this->sensor->SetResolution(MT9D111_MODE_CAPTURE, (uint16_t)(this->width), (uint16_t)(this->height)));
            case CAM_PROP_FPS:
                return false;
            case CAM_PROP_FORMAT:
                return false;
            default:
                this->debug->WriteEvent("Invalid parameter to set!");
                this->debug->NewLine();

                return false;
        }
    }
    else
    {
        this->debug->WriteEvent("Camera not opened to set parameter!");
        this->debug->NewLine();

        return false;
    }
}

//! \} End of camera group
