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
 * \brief GPIO Raspberry Pi driver implementation.
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

    return true;
}

bool GPIO::Close()
{
    return (this->Set(false) and this->Unexport());
}

bool GPIO::Export()
{
    return true;
}

bool GPIO::Unexport()
{
    return true;
}

bool GPIO::SetDir(bool d)
{
    this->dir = d;

    return true;
}

bool GPIO::Set(bool s)
{
    this->state = s;

    return true;
}

bool GPIO::Toggle()
{
    if (this->state)
    {
        return this->Set(false);
    }
    else
    {
        return this->Set(true);
    }
}

bool GPIO::Get(bool &s)
{
    s = this->state;

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
