/*
 * camera.h
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
 * \brief AXI camera device.
 *
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 11/09/2018
 * 
 * \defgroup camera Camera
 * \{
 */

#ifndef CAMERA_H_
#define CAMERA_H_

#include <vector>
#include <stdint.h>

#include <opencv2/opencv.hpp>

#include <devices/debug/debug.h>
#include <drivers/mt9d111/mt9d111.h>
#include <drivers/zynqaxi/zynqaxi.h>

#define CAMERA_DEFAULT_WIDTH    640
#define CAMERA_DEFAULT_HEIGHT   480

/**
 * \brief Camera properties.
 */
enum CAM_PROP
{
    CAM_PROP_POS_FRAMES = 0,    /**< 0-based index of the frame to be decoded/captured next. */
    CAM_PROP_FRAME_WIDTH,       /**< Width of the frames in the video stream. */
    CAM_PROP_FRAME_HEIGHT,      /**< Height of the frames in the video stream. */
    CAM_PROP_FPS,               /**< Frame rate. */
    CAM_PROP_FORMAT             /**< Format of the Mat objects returned by retrieve(). */
};

/**
 * \brief This class implements a AXI camera device.
 */
class Camera
{
    private:

        /**
         * \brief Debug messages.
         */
        Debug *debug;

        /**
         * \brief Image sensor.
         */
        MT9D111 *sensor;

        /**
         * \brief Zynq AXI bus.
         */
        ZynqAXI *zynq_axi;

        /**
         * \brief Open/close flag.
         */
        bool is_opened;

        /**
         * \brief Frame buffer.
         */
        std::vector<std::vector<uint32_t> > buffer;

        /**
         * \brief Camera frames width.
         */
        unsigned int width;

        /**
         * \brief Camera frames height.
         */
        unsigned int height;
    public:

        /**
         * \brief Class constructor without device opening.
         *
         * \return None.
         */
        Camera();

        /**
         * \brief Class constructor with device opening.
         *
         * \param[in] index Camera device ID to open.
         *
         * \return None.
         */
        Camera(int index);

        /**
         * \brief Class destructor.
         *
         * \return None.
         */
        ~Camera();

        /**
         * \brief Returns the specified Camera property.
         *
         * \param[in] propid Property identifier. It can be one of the following:
         * \parblock
         *     - CAM_PROP_POS_FRAMES 0-based index of the frame to be decoded/captured next.
         *     - CAM_PROP_FRAME_WIDTH Width of the frames in the video stream.
         *     - CAM_PROP_FRAME_HEIGHT Height of the frames in the video stream.
         *     - CAM_PROP_FPS Frame rate.
         *     - CAM_PROP_FORMAT Format of the Mat objects returned by retrieve().
         *     .
         * \endparblock
         *
         * \return Rhe specified Camera property.
         */
        double get(int propid);

        /**
         * \brief Grabs the next frame from video file or capturing device.
         *
         * The methods/functions grab the next frame from camera and return true (non-zero) in the case of
         * success.
         *
         * \return True in case of success.
         */
        bool grab();

        /**
         * \brief Returns true if video capturing has been initialized already.
         *
         * If the previous call to Camera constructor or Camera::open succeeded, the method returns true.
         *
         * \return True in case of success of Camera::open.
         */
        bool isOpened();

        /**
         * \brief Open camera device for video capturing.
         *
         * \param[in] index Camera device ID to open.
         *
         * \return True in case of success.
         */
        bool open(int index=0);

        /**
         * \brief Grabs, decodes and returns the next video frame.
         *
         * The methods/functions combine Camera::grab and Camera::retrieve in one call. This is the most
         * convenient method for capturing data from decode and return the just grabbed frame. If no frames has
         * been grabbed (camera has been disconnected), the method return false.
         *
         * \param[out] image is an image from the camera device.
         * \param[in] flag
         *
         * \return True in case of success.
         */
        bool read(cv::Mat &image, int flag=0);

        /**
         * \brief Closes the capturing device.
         *
         * The methods are automatically called by subsequent Camera::open and by Camera destructor.
         *
         * \return None.
         */
        void release();

        /**
         * \brief Decodes and returns the grabbed video frame.
         *
         * The methods/functions decode and return the just grabbed frame. If no frames has been grabbed
         * (camera has been disconnected), the method return false.
         *
         * \param[out] image is an image from the camera device.
         * \param[in] flag
         *
         * \return True in case of success.
         */
        bool retrieve(cv::Mat &image, int flag=0);

        /**
         * \brief Sets a property in the Camera.
         *
         * \param[in] propid Property identifier. It can be one of the following:
         * \parblock
         *     - CAM_PROP_POS_FRAMES 0-based index of the frame to be decoded/captured next.
         *     - CAM_PROP_FRAME_WIDTH Width of the frames in the video stream.
         *     - CAM_PROP_FRAME_HEIGHT Height of the frames in the video stream.
         *     - CAM_PROP_FPS Frame rate.
         *     - CAM_PROP_FORMAT Format of the Mat objects returned by retrieve().
         *     .
         * \endparblock
         * \param[in] value Value of the property.
         *
         * \return True in case of success.
         */
        bool set(int propid, double value);
};

#endif // CAMERA_H_

//! \} End of camera group
