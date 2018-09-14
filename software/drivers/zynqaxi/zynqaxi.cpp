/*
 * zynqaxi.cpp
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
 * \brief Xilinx Zynq SoC AXI communication implementation.
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
 * \addtogroup zynqaxi
 * \{
 */

#include <stdexcept>

#include "zynqaxi.h"

using namespace std;

ZynqAXI::ZynqAXI()
{
    this->is_open = false;
}

ZynqAXI::ZynqAXI(off_t base_adr, uint32_t map_size)
    : ZynqAXI()
{
    this->Open(base_adr, map_size);
}

ZynqAXI::~ZynqAXI()
{
    this->Close();
}

bool ZynqAXI::Open(off_t base_adr, uint32_t map_size)
{
    this->dev_base = base_adr;

    this->memfd = open("/dev/mem", O_RDWR | O_SYNC);

    this->width = map_size;

    if (this->memfd == -1)
    {
        throw runtime_error("Can't open \"/dev/mem\"!");

        return false;
    }

    this->mapped_base = mmap(0, this->width, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, dev_base & ~(this->width-1));
    if (this->mapped_base == (void *) -1)
    {
        throw runtime_error("Can't map the memory to user space!");

        return false;
    }

    this->mapped_dev_base = this->mapped_base + (this->dev_base & (this->width-1));

    this->reg = (unsigned volatile int *)(this->mapped_dev_base);

    this->is_open = true;

    return true;
}

bool ZynqAXI::Close()
{
    if (this->is_open)
    {
        if (munmap(this->mapped_base, this->width) == -1)
        {
            throw runtime_error("Can't unmap memory from user space!");

            return false;
        }

        close(this->memfd);

        this->is_open = false;

        return true;
    }
    else
    {
        throw runtime_error("The device is not opened!");

        return false;
    }
}

void ZynqAXI::Write(uint16_t index, uint32_t val)
{
    if (this->is_open)
    {
        if (index < this->width)
        {
            this->reg[index] = val;
        }
        else
        {
            throw out_of_range("The index value is out of range!");
        }
    }
    else
    {
        throw runtime_error("The device is not opened!");
    }
}

uint32_t ZynqAXI::Read(uint16_t index)
{
    if (this->is_open)
    {
        if (index < this->width)
        {
            return (uint32_t)(this->reg[index]);
        }
        else
        {
            throw out_of_range("The index value is out of range!");
            
            return 0;
        }
    }
    else
    {
        throw runtime_error("The device is not opened!");

        return 0;
    }
}

unsigned volatile int& ZynqAXI::operator [](unsigned int i)
{
    return this->reg[i];
}

//! \} End of zynqaxi group
