/*
 * gpio.cpp
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
 * \brief GPIO driver implementation.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 30/03/2018
 * 
 * \addtogroup gpio
 * \{
 */

#include "gpio.h"

using namespace std;

GPIO::GPIO()
{

}

GPIO::GPIO(uint8_t p, bool d)
    : GPIO()
{
    this->Open(p, d);
}

GPIO::~GPIO()
{
    this->Close();
}

bool GPIO::Open(uint8_t p, bool d)
{
    this->pin = p;

    this->dir = d;

    this->zynqaxi = new ZynqAXI;

    return this->zynqaxi->Open(0x41200000);
}

bool GPIO::Close()
{
    delete zynqaxi;

    return true;
}

bool GPIO::SetDir(bool d)
{
    this->dir = d;

    return true;
}

bool GPIO::Set(bool s)
{
    uint32_t val = this->zynqaxi->Read(0);

    if (s)
    {
        val |= (1 << this->pin);
    }
    else
    {
        val &= ~(1 << this->pin);
    }

    this->zynqaxi->Write(0, val);

    return true;
}

bool GPIO::Toggle()
{
    bool state;

    this->Get(state);

    return this->Set(!state);
}

bool GPIO::Get(bool &s)
{
    uint32_t val = this->zynqaxi->Read(0);

    if (val & (1 << this->pin))
    {
        s = true;
    }
    else
    {
        s = false;
    }

    return true;
}

uint8_t GPIO::GetPinNumber()
{
    return this->pin;
}

bool GPIO::GetDir()
{
    return this->dir;
}

//! \} End of gpio group
