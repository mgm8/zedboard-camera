/*
 * i2c.cpp
 *
 * Copyright (c) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * This file is part of MT9D111-Driver.
 * 
 * MT9D111-Driver is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * MT9D111-Driver is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with MT9D111-Driver; if not, see <http://www.gnu.org/licenses/>
 * 
 */

/**
 * \brief I2C Linux driver implementation.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 10/05/2017
 * 
 * \addtogroup i2c
 * \{
 */

#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "i2c.h"

I2C::I2C()
{
    
}

I2C::I2C(const char* dev_adr, uint8_t dev_id)
{
    this->Setup(dev_adr, dev_id);
}

I2C::~I2C()
{
    if (fd >= 0)
    {
        close(fd);
    }
}

bool I2C::Setup(const char* dev_adr, uint8_t dev_id)
{
    if ((fd = open(dev_adr, O_RDWR)) < 0)
    {
        return false;
    }

    if (ioctl(fd, I2C_SLAVE, dev_id) < 0)
    {
        return false;
    }
    else
    {
        return true;
    }
}

int I2C::SMBusAccess(int8_t rw, uint8_t command, uint16_t len, I2C_SMBus_Data *data)
{
    I2C_SMBus_IOCtl_Data args;

    args.read_write = rw;
    args.command    = command;
    args.size       = len;
    args.data       = data;
    
    return ioctl(fd, I2C_SMBUS, &args);
}

uint8_t I2C::Read()
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &data))
    {
        return -1;
    }
    else
    {
        return data.byte & 0xFF;
    }
}

uint8_t I2C::ReadReg8(uint8_t reg_adr)
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, reg_adr, I2C_SMBUS_BYTE_DATA, &data))
    {
        return -1;
    }
    else
    {
        return data.byte & 0xFF;
    }
}

uint16_t I2C::ReadReg16(uint8_t reg_adr)
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, reg_adr, I2C_SMBUS_WORD_DATA, &data))
    {
        return -1;
    }
    else
    {
        return data.word & 0xFFFF;
    }
}

bool I2C::Write(uint8_t byte)
{
    return this->SMBusAccess(I2C_SMBUS_WRITE, byte, I2C_SMBUS_BYTE, NULL);
}

bool I2C::WriteReg8(uint8_t reg_adr, uint8_t value)
{
    I2C_SMBus_Data data;

    data.byte = value;
    
    return this->SMBusAccess(I2C_SMBUS_WRITE, reg_adr, I2C_SMBUS_BYTE_DATA, &data);
}

bool I2C::WriteReg16(uint8_t reg_adr, uint16_t value)
{
    I2C_SMBus_Data data;

    data.word = value;
    
    return this->SMBusAccess(I2C_SMBUS_WRITE, reg_adr, I2C_SMBUS_WORD_DATA, &data);
}

//! \} End of i2c group
