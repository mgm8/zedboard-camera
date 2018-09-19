/*
 * capturer.h
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
 * \brief Frame capturer definition.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 0.1.0
 * 
 * \date 18/09/2018
 * 
 * \defgroup capturer Capturer
 * \{
 */

#ifndef CAPTURER_H_
#define CAPTURER_H_

#include <stdint.h>
#include <vector>

#include <opencv2/opencv.hpp>

#include <drivers/zynqaxi/zynqaxi.h>

#define CAPTURER_DEFAULT_MEM_ADDRESS        0x40000000      /**< Default memory address with image pixels. */
#define CAPTURER_DEFAULT_MEM_RANGE          128000          /**< Default memory range with the image pixels. */

#define CAPTURER_DEFAULT_IMAGE_WIDTH        640             /**< Default width of the frames (in pixels). */
#define CAPTURER_DEFAULT_IMAGE_HEIGHT       480             /**< Default height of the frames (in pixels). */

/**
 * \brief Input/Output image format.
 */
enum Format
{
    CAPTURER_FORMAT_GRAY8 = 0,          /**< Grayscale 8-bits. */
    CAPTURER_FORMAT_RGB444,             /**< RGB 4-bits. */
    CAPTURER_FORMAT_RGB565              /**< R 5-bits, G 6-bits, B 5-bits. */
};

/**
 * \brief Frame capturer.
 *
 * This class captures frames from a mapped memory region.
 */
class Capturer
{
    private:

        /**
         * \brief Is opened flag.
         */
        bool is_opened;

        /**
         * \brief Zynq AXI communication bus.
         */
        ZynqAXI *zynq_axi;

        /**
         * \brief Pixels buffer.
         */
        std::vector<cv::Point3i> buffer;

        /**
         * \brief Frames resolution.
         */
        cv::Size resolution;

    public:

        /**
         * \brief Constructor without setup.
         *
         * \return None.
         */
        Capturer();

        /**
         * \brief Overloaded constructor with setup.
         *
         * \param[in] address is the memory address to map.
         * \param[in] range is the range of addresses to map.
         *
         * \return None.
         */
        Capturer(uint32_t address, uint32_t range);

        /**
         * \brief Destructor.
         *
         * \return None.
         */
        ~Capturer();

        /**
         * \brief Initializes the memory mapped region with the stored frame pixels.
         *
         * \param[in] address is the memory address to map.
         * \param[in] range is the range of addresses to map.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool Open(uint32_t address=CAPTURER_DEFAULT_MEM_ADDRESS, uint32_t range=CAPTURER_DEFAULT_MEM_RANGE);

        /**
         * \brief Closes the capturer if opened.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool Close();

        /**
         * \brief Verifies if the capturer is opened or not.
         *
         * \return TRUE/FALSE if the capturer is opened or not.
         */
        bool IsOpened();

        /**
         * \brief Sets the frames resolution.
         *
         * \param[in] res is the new frame resolution in pixels.
         *
         * \return None.
         */
        void SetResolution(cv::Size res);

        /**
         * \brief Sets the frames resolution.
         *
         * \param[in] width is the resolution width in pixels.
         * \param[in] height is the resolution height in pixels.
         *
         * \return None.
         */
        void SetResolution(unsigned int width, unsigned int height);

        /**
         * \brief Gets the frames resolution.
         *
         * \return The current frames resolution.
         */
        cv::Size GetResolution();

        /**
         * \brief Read pixels from the mapped memory region and stores them in a buffer.
         *
         * \param[in] format is the image format to read and store the pixels.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool ReadPixels(int format=CAPTURER_FORMAT_GRAY8);

        /**
         * \brief Generates an image from the stored pixels in the buffer.
         *
         * \param[in,out] image is the image to generate a new frame from the read pixels.
         * \param[in] format is the image format to read the pixels.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool GenerateImage(cv::Mat &image, int format=CAPTURER_FORMAT_GRAY8);

        /**
         * \brief Gets the last frame from the pixels buffer.
         *
         * \param[in,out] image is the image to store the new frame.
         * \param[in] format is the image format to read the pixels.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool GetFrame(cv::Mat &image, int format=CAPTURER_FORMAT_GRAY8);
};

#endif // CAPTURER_H_

//! \} End of capturer group
