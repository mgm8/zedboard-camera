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
#include <errno.h>
#include <string.h>

#include "i2c.h"

I2C::I2C()
{
    this->debug = new Debug("I2C");
}

I2C::I2C(const char* dev_adr, uint8_t dev_id)
    : I2C()
{
    this->Setup(dev_adr, dev_id);
}

I2C::~I2C()
{
    this->debug->WriteEvent("Closing I2C...");
    this->debug->NewLine();

    errno = 0;

    if (close(fd) < 0)
    {
        this->debug->WriteEvent("Error closing device: ");
        this->debug->WriteMsg(strerror(errno));
        this->debug->NewLine();
    }
}

bool I2C::Setup(const char* dev_adr, uint8_t dev_id)
{
    this->debug->WriteEvent("Configuring peripheral ");
    this->debug->WriteHex(dev_id);
    this->debug->WriteMsg(" in \"");
    this->debug->WriteMsg(dev_adr);
    this->debug->WriteMsg("\"...");
    this->debug->NewLine();

    errno = 0;

    if ((fd = open(dev_adr, O_RDWR)) < 0)
    {
        this->debug->WriteEvent("Error opening \"");
        this->debug->WriteMsg(dev_adr);
        this->debug->WriteMsg("\": ");
        this->debug->WriteMsg(strerror(errno));
        this->debug->NewLine();

        return false;
    }

    errno = 0;

    if (ioctl(fd, I2C_SLAVE, dev_id) < 0)
    {
        this->debug->WriteEvent("Error configuring peripheral ");
        this->debug->WriteHex(dev_id);
        this->debug->WriteMsg(": ");
        this->debug->WriteMsg(strerror(errno));
        this->debug->NewLine();

        return false;
    }

    return true;
}

bool I2C::SMBusAccess(int8_t rw, uint8_t command, uint16_t len, I2C_SMBus_Data *data)
{
    I2C_SMBus_IOCtl_Data args;

    args.read_write = rw;
    args.command    = command;
    args.size       = len;
    args.data       = data;

    errno = 0;

    if (ioctl(fd, I2C_SMBUS, &args) < 0)
    {
        this->debug->WriteEvent("Error during SMBus access: ");
        this->debug->WriteMsg(strerror(errno));
        this->debug->NewLine();

        return false;
    }

    return true;
}

bool I2C::Read(uint8_t *val)
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &data))
    {
        *val = data.byte & 0xFF;

        return true;
    }
    else
    {
        this->debug->WriteEvent("Error reading from device!");
        this->debug->NewLine();

        return false;
    }
}

bool I2C::ReadReg8(uint8_t reg_adr, uint8_t *val)
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, reg_adr, I2C_SMBUS_BYTE_DATA, &data))
    {
        *val = data.byte & 0xFF;

        return true;
    }
    else
    {
        this->debug->WriteEvent("Error reading register ");
        this->debug->WriteHex(reg_adr);
        this->debug->WriteMsg(" from device!");
        this->debug->NewLine();

        return false;
    }
}

bool I2C::ReadReg16(uint8_t reg_adr, uint16_t *val)
{
    I2C_SMBus_Data data;

    if (this->SMBusAccess(I2C_SMBUS_READ, reg_adr, I2C_SMBUS_WORD_DATA, &data))
    {
        *val = data.word & 0xFFFF;

        return true;
    }
    else
    {
        this->debug->WriteEvent("Error reading register ");
        this->debug->WriteHex(reg_adr);
        this->debug->WriteMsg(" from device!");
        this->debug->NewLine();

        return false;
    }
}

bool I2C::Write(uint8_t byte)
{
    if (this->SMBusAccess(I2C_SMBUS_WRITE, byte, I2C_SMBUS_BYTE, NULL))
    {
        return true;
    }
    else
    {
        this->debug->WriteEvent("Error writing to device!");
        this->debug->NewLine();

        return false;
    }
}

bool I2C::WriteReg8(uint8_t reg_adr, uint8_t value)
{
    I2C_SMBus_Data data;

    data.byte = value;
    
    if (this->SMBusAccess(I2C_SMBUS_WRITE, reg_adr, I2C_SMBUS_BYTE_DATA, &data))
    {
        return true;
    }
    else
    {
        this->debug->WriteEvent("Error writing to register ");
        this->debug->WriteHex(reg_adr);
        this->debug->WriteMsg("!");
        this->debug->NewLine();

        return false;
    }
}

bool I2C::WriteReg16(uint8_t reg_adr, uint16_t value)
{
    I2C_SMBus_Data data;

    data.word = value;
    
    if (this->SMBusAccess(I2C_SMBUS_WRITE, reg_adr, I2C_SMBUS_WORD_DATA, &data))
    {
        return true;
    }
    else
    {
        this->debug->WriteEvent("Error writing to register ");
        this->debug->WriteHex(reg_adr);
        this->debug->WriteMsg("!");
        this->debug->NewLine();

        return false;
    }
}

//! \} End of i2c group
