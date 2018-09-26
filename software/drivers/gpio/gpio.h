/*
 * gpio.h
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
 * \brief GPIO driver.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 30/03/2018
 * 
 * \defgroup gpio GPIO
 * \{
 */

#ifndef GPIO_H_
#define GPIO_H_

#include <stdint.h>

#include <drivers/zynqaxi/zynqaxi.h>

#define GPIO_DIR_OUTPUT         0
#define GPIO_DIR_INPUT          1

/**
 * \brief Class for a GPIO pin of the Raspberry Pi.
 */
class GPIO
{
    private:
        uint8_t pin;    /**< GPIO pin number. */
        bool dir;       /**< GPIO direction (output or input). */

        /**
         * \brief Zynq AXI communication.
         */
        ZynqAXI *zynqaxi;

    public:

        /**
         * \brief Class constructor (without initialization).
         *
         * \return None
         */
        GPIO();

        /**
         * \brief Class constructor with pin initialization.
         *
         * \param[in] p is the GPIO pin number.
         * \param[in] d is the GPIO direction (GPIO_DIR_OUTPUT or GPIO_DIR_INPUT).
         * \param[in] adr is the GPIO pin memory address.
         *
         * \return None
         */
        GPIO(uint8_t p, bool d=GPIO_DIR_OUTPUT, uint32_t adr=0x40000000);

        /**
         * \brief Class destructor.
         *
         * \return None
         */
        ~GPIO();

        /**
         * \brief GPIO initialization.
         *
         * \param[in] p is the GPIO pin number.
         * \param[in] d is the GPIO direction (GPIO_DIR_OUTPUT or GPIO_DIR_INPUT).
         * \param[in] adr is the GPIO pin memory address.
         *
         * \return TRUE/FALSE if it was successful or not.
         */
        bool Open(uint8_t p, bool d, uint32_t adr);

        /**
         * \brief Closes the GPIO pin (deinitialization).
         *
         * \rerun TRUE/FALSE if it was successful or not.
         */
        bool Close();

        /**
         * \brief Sets GPIO direction.
         *
         * \param[in] d is the direction of the GPIO pin (GPIO_DIR_OUTPUT or GPIO_DIR_INPUT).
         *
         * \return TRUE/FALSE if it was successful or not.
         */
        bool SetDir(bool d);

        /**
         * \brief Sets GPIO state (when it is a output GPIO).
         *
         * \param[in] s is the state of the output GPIO pin (HIGH or LOW).
         *
         * \return TRUE/FALSE if it was successful or not.
         */
        bool Set(bool s);

        /**
         * \brief Toggles an output GPIO state.
         *
         * \return TRUE/FALSE if it was successful or not.
         */
        bool Toggle();

        /**
         * \brief Gets the state of a input GPIO.
         *
         * \param[in,out] s is a variable to store the state of the input GPIO.
         *
         * \return TRUE/FALSE if it was successful or not.
         */
        bool Get(bool &s);

        /**
         * \brief Returns the GPIO pin number.
         *
         * \return The number of the GPIO pin.
         */
        uint8_t GetPinNumber();

        /**
         * \brief Returns the GPIO direction.
         *
         * \return The direction of the GPIO pin.
         */
        bool GetDir();
};

#endif // GPIO_H_

//! \} End of gpio group
