/*
 * debug.h
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
 * \brief Debug functions.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 0.1.0
 * 
 * \date 09/09/2018
 * 
 * \defgroup debug Debug
 * \{
 */

#ifndef DEBUG_H_
#define DEBUG_H_

#include <string>
#include <stdint.h>

/**
 * \brief Debug class.
 */
class Debug
{
    private:
        /**
         * \brief Name of the device or module to debug.
         */
        std::string name;

        /**
         * \brief On/Off flag (enables or disables the debug messages).
         */
        bool enabled;

        /**
         * \brief Gets the system time.
         *
         * \return The system time as an string.
         */
        std::string GetTime();

        /**
         * \brief Writes the system time in the format: HH:MM:SS.
         *
         * \return None.
         */
        void WriteTime();

    public:
        /**
         * \brief Class constructor.
         *
         * \return None.
         */
        Debug();

        /**
         * \brief Class constructor.
         *
         * \param[in] name is the name of the device or module to debug.
         * \param[in] state is the state of the debug (true=enabled, false=disabled).
         *
         * \return None.
         */
        Debug(const char *n, bool s=true);

        /**
         * \brief Class constructor.
         *
         * \param[in] name is the name of the device or module to debug.
         * \param[in] state is the state of the debug (true=enabled, false=disabled).
         *
         * \return None.
         */
        Debug(std::string n, bool s=true);

        /**
         * \brief Class destructor.
         *
         * \return None.
         */
        ~Debug();

        /**
         * \brief Initializes and configure the debug messages.
         *
         * \param[in] name is the name of the device or module to debug.
         * \param[in] state is the state of the debug (true=enabled, false=disabled).
         *
         * \return None.
         */
        void Setup(const char *n, bool s=true);

        /**
         * \brief Initializes and configure the debug messages.
         *
         * \param[in] name is the name of the device or module to debug.
         * \param[in] state is the state of the debug (true=enabled, false=disabled).
         *
         * \return None.
         */
        void Setup(std::string n, bool s=true);

        /**
         * \brief Sets the name of the device or module to debug.
         *
         * \param[in] name is the name of the device or module to debug.
         *
         * \return None.
         */
        void SetName(const char *n);

        /**
         * \brief Sets the name of the device or module to debug.
         *
         * \param[in] name is the name of the device or module to debug.
         *
         * \return None.
         */
        void SetName(std::string n);

        /**
         * \brief Sets the state of the debug messages.
         *
         * \param[in] state is the state of the debug (true=enabled, false=disabled).
         *
         * \return None.
         */
        void SetState(bool state);

        /**
         * \brief Enables the debug messages.
         *
         * \return None.
         */
        void Enable();

        /**
         * \brief Disables the debug messages.
         *
         * \return None.
         */
        void Disable();

        /**
         * \brief Writes a debug message.
         *
         * \param[in] msg is the message to write.
         *
         * \return None.
         */
        void WriteMsg(const char *msg);

        /**
         * \brief Writes a debug message.
         *
         * \param[in] msg is the message to write.
         *
         * \return None.
         */
        void WriteMsg(std::string msg);

        /**
         * \brief Writes an event message.
         *
         * \param[in] msg is the message of the event.
         *
         * \return None.
         */
        void WriteEvent(const char *msg);

        /**
         * \brief Writes an event message.
         *
         * \param[in] msg is the message of the event.
         *
         * \return None.
         */
        void WriteEvent(std::string msg);

        /**
         * \brief Writes a number in decimal format.
         *
         * \param[in] n is the decimal number to write.
         *
         * \return None.
         */
        void WriteDec(unsigned int n);

        /**
         * \brief Writes a number in hexadecimal format.
         *
         * \param[in] n is the hexadecimal number to write.
         *
         * \return None.
         */
        void WriteHex(uint32_t n);

        /**
         * \brief Goes to the next line.
         *
         * \return None.
         */
        void NewLine();
};

#endif // DEBUG_H_

//! \} End of debug group
