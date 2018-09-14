/*
 * zynqaxi.h
 * 
 * Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * Copyright (C) 2018, Victor Hugo Schulz <schulz89@gmail.com>
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
 * \brief Xilinx Zynq SoC AXI communication.
 *
 * \see http://www.wiki.xilinx.com/file/view/usergpio.c/414351414/usergpio.c
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * \author Victor Hugo Schulz <schulz89@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 10/04/2018
 * 
 * \defgroup zynqaxi ZynqAXI
 * \{
 */

#ifndef ZYNQAXI_H_
#define ZYNQAXI_H_

#include <stdint.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define ZYNQAXI_DEFAULT_BASE_ADDRESS    0x40000000
#define ZYNQAXI_DEFAULT_MAP_SIZE        32UL

/**
 * \brief This class implements a device to communicate with the logic region of a Xilinx Zync SoC.
 */
class ZynqAXI
{
    private:
        int memfd;                      /**< Memory device file descriptor. */
        bool is_open;                   /**< Open/Closed flag. */
        void *mapped_base;              /**< Mapped memory base address. */
        void *mapped_dev_base;          /**< Mapped device base address. */
        off_t dev_base;                 /**< Device base address. */
        uint32_t width;                 /**< Number of mapped addresses. */
        unsigned volatile int* reg;     /**< Register memory address pointer. */
    public:

        /**
         * \brief Class constructor without the device opening.
         *
         * \return None
         */
        ZynqAXI();

        /**
         * \brief Class constructor with device opening.
         *
         * \param[in] base_adr is the base address to start the mapping.
         * \param[in] map_size is the number of addresses to map.
         *
         * \return None
         */
        ZynqAXI(off_t base_adr, uint32_t map_size=ZYNQAXI_DEFAULT_MAP_SIZE);

        /**
         * \brief Class destructor.
         *
         * \return None
         */
        ~ZynqAXI();

        /**
         * \brief Opens and maps the device.
         *
         * \param[in] base_adr is the base address to start the mapping.
         * \param[in] map_size is the number of addresses to map.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool Open(off_t base_adr=ZYNQAXI_DEFAULT_BASE_ADDRESS, uint32_t map_size=ZYNQAXI_DEFAULT_MAP_SIZE);

        /**
         * \brief Close the device.
         *
         * \return TRUE/FALSE if successful or not.
         */
        bool Close();

        /**
         * \brief Writes a value to a given register (starting at the base address).
         *
         * \param[in] index is the register number (default = 0, for the first register).
         * \param[in] val is the value to write into the register.
         *
         * \return None
         */
        void Write(uint16_t index, uint32_t val);

        /**
         * \brief Reads the value from a given register (starting at the base address).
         *
         * \param[in] index is the register number (default = 0, for the first register).
         *
         * \return The value from the given register number (index).
         */
        uint32_t Read(uint16_t index);

        /**
         * \brief Subscript operator overload.
         *
         * \param[in] i is the register index value.
         *
         * \return The reg variable value for the given index.
         */
        unsigned volatile int& operator [](unsigned int i);
};

#endif // ZYNQAXI_H_

//! \} End of zynqaxi group
