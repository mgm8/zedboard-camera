/*
 * debug.cpp
 * 
 * Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * This file is part of debug-lib.
 * 
 * debug-lib is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * debug-lib is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with debug-lib. If not, see <http://www.gnu.org/licenses/>.
 * 
 */

/**
 * \brief Debug functions implementation.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 0.1.0
 * 
 * \date 09/09/2018
 * 
 * \addtogroup debug
 * \{
 */

#include <iostream>
#include <chrono>
#include <sstream>
#include <ctime>
#include <iomanip>

#include "debug.h"

using namespace std;

Debug::Debug()
{
    this->Setup("DEBUG", true);
}

Debug::Debug(const char *n, bool s)
{
    this->Setup(n, s);
}

Debug::Debug(string n, bool s)
{
    this->Setup(n, s);
}

Debug::~Debug()
{

}

void Debug::Setup(const char *n, bool s)
{
    this->SetName(n);

    this->SetState(s);
}

void Debug::Setup(string n, bool s)
{
    this->SetName(n);

    this->SetState(s);
}

void Debug::SetName(const char *n)
{
    this->name = string(n);
}

void Debug::SetName(string n)
{
    this->name = string(n);
}

void Debug::SetState(bool state)
{
    this->enabled = state;
}

void Debug::Enable()
{
    this->SetState(true);
}

void Debug::Disable()
{
    this->SetState(false);
}

void Debug::WriteMsg(const char *msg)
{
    if (this->enabled)
    {
        cout << msg;
    }
}

void Debug::WriteMsg(string msg)
{
    if (this->enabled)
    {
        cout << msg;
    }
}

void Debug::WriteEvent(const char *msg)
{
    this->WriteEvent(string(msg));
}

void Debug::WriteEvent(string msg)
{
    if (this->enabled)
    {
        this->WriteTime();

        cout << this->name << ": " << msg;
    }
}

void Debug::WriteDec(unsigned int n)
{
    if (this->enabled)
    {
        cout << dec << n;
    }
}

void Debug::WriteHex(uint32_t n)
{
    if (this->enabled)
    {
        cout << "0x" << hex << n;
        cout << dec;
    }
}

void Debug::NewLine()
{
    if (this->enabled)
    {
        cout << endl;
    }
}

string Debug::GetTime()
{
    auto now = chrono::system_clock::now();
    auto now_time_t = chrono::system_clock::to_time_t(now);

    stringstream ss;
    ss << put_time(localtime(&now_time_t), "%X");

    return ss.str();
}

void Debug::WriteTime()
{
    if (this->enabled)
    {
        cout << "[ " << this->GetTime() << " ] ";
    }
}

//! \} End of debug group
