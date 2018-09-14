/*
 * i2c.h
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
 * \brief I2C Linux driver.
 * 
 * \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
 * 
 * \version 1.0
 * 
 * \date 10/05/2017
 * 
 * \defgroup i2c Linux I2C Driver
 * \{
 */

#ifndef I2C_H_
#define I2C_H_

#include <stdint.h>

#include <devices/debug/debug.h>

// I2C definitions
#define I2C_SLAVE                           0x0703
#define I2C_SMBUS                           0x0720  // SMBus-level access

#define I2C_SMBUS_READ                      1
#define I2C_SMBUS_WRITE                     0

// SMBus transaction types
#define I2C_SMBUS_QUICK                     0
#define I2C_SMBUS_BYTE                      1
#define I2C_SMBUS_BYTE_DATA                 2 
#define I2C_SMBUS_WORD_DATA                 3
#define I2C_SMBUS_PROC_CALL                 4
#define I2C_SMBUS_BLOCK_DATA                5
#define I2C_SMBUS_I2C_BLOCK_BROKEN          6
#define I2C_SMBUS_BLOCK_PROC_CALL           7       // SMBus 2.0
#define I2C_SMBUS_I2C_BLOCK_DATA            8

// SMBus messages
#define I2C_SMBUS_BLOCK_MAX                 32      // As specified in SMBus standard	
#define I2C_SMBUS_I2C_BLOCK_MAX             32      // Not specified but we use same structure

/**
 * \brief Structure used in the ioctl() calls.
 */
union I2C_SMBus_Data
{
    uint8_t  byte;                              /**< Byte (If a byte will be transfered). */
    uint16_t word;                              /**< Word (If a 16-bit word will be transfered). */
    uint8_t  block[I2C_SMBUS_BLOCK_MAX + 2];    /**< Block [0] is used for length + one more for PEC. */
};

/**
 * \brief 
 */
struct I2C_SMBus_IOCtl_Data
{
    char read_write;        /**< Read (I2C_SMBUS_READ) or write (I2C_SMBUS_WRITE) operation. */
    uint8_t command;        /**< Command (or register address). This byte is written before the data stream. */
    int size;               /**< Data length. */
    I2C_SMBus_Data *data;   /**< Data to transfer. */
};

/**
 * \brief I2C master driver.
 * 
 * This class uses the ioctl() function to communicate with an slave I2C device.
 */
class I2C
{
    private:
        int fd;     /**< File descriptor. */

        /**
         * \brief Debug messages class.
         */
        Debug *debug;

        /**
         * \brief 
         * 
         * \param rw indicates a read (I2C_SMBUS_READ) or write (I2C_SMBUS_WRITE) operation.
         * \param command is a byte written before the data stream.
         * \param len is the length of the data.
         * \param data is the data to be transfered.
         * 
         * \return The ioctl() function error code.
         */
        int SMBusAccess(int8_t rw, uint8_t command, uint16_t len, I2C_SMBus_Data *data);
    public:

        /**
         * \brief Class constructor (Only initialization).
         * 
         * \return None
         */
        I2C();

        /**
         * \brief Class constructor (Initialization and configuration).
         * 
         * \param[in] dev_adr is the I2C device address.
         * \param[in] dev_adr is the I2C slave ID (7-bit I2C address).
         * 
         * \return None
         */
        I2C(const char* dev_adr, uint8_t dev_id);

        /**
         * \brief Class destructor.
         * 
         * \return None
         */
        ~I2C();

        /**
         * \brief Configures the I2C communication with an I2C device.
         * 
         * \param[in] dev_adr is the I2C device address.
         * \param[in] dev_id is the I2C slave ID (7-bit I2C address).
         * 
         * \return It returns:
         *          -\b TRUE if no error occurred during the configuration.
         *          -\b FALSE if an error occurred during the configuration.
         *          .
         */
        bool Setup(const char* dev_adr, uint8_t dev_id);

        /**
         * \brief Reads a byte from the device.
         * 
         * \return The byte read from the slave.
         */
        uint8_t Read();

        /**
         * \brief Reads a byte from a register of the device.
         * 
         * \param[in] reg_adr is the device register address.
         * 
         * \return The byte from the slave register.
         */
        uint8_t ReadReg8(uint8_t reg_adr);

        /**
         * \brief Reads a word (16-bit) from a register of the device.
         * 
         * \param[in] reg_adr is the device register address.
         * 
         * \return The word (16-bit) from the slave register.
         */
        uint16_t ReadReg16(uint8_t reg_adr);

        /**
         * \brief Write a byte to the device (No specific register).
         * 
         * \param[in] byte is the byte to be written to the device.
         * 
         * \return It returns:
         *          -\b TRUE if no error occurred during the transmission.
         *          -\b FALSE if an error occurred during the transmission.
         *          .
         */
        bool Write(uint8_t byte);

        /**
         * \brief Writes a byte to a register.
         * 
         * \param[in] reg_adr is the device register address.
         * \param[in] value is the value to be written in the register.
         * 
         * \return It returns:
         *          -\b TRUE if no error occurred during the transmission.
         *          -\b FALSE if an error occurred during the transmission.
         *          .
         */
        bool WriteReg8(uint8_t reg_adr, uint8_t value);

        /**
         * \brief Writes a word (16-bit) to a register.
         * 
         * \param[in] reg_adr is the device register address.
         * \param[in] value is the value to be written in the register.
         * 
         * \return It returns:
         *          -\b TRUE if no error occurred during the transmission.
         *          -\b FALSE if an error occurred during the transmission.
         *          .
         */
        bool WriteReg16(uint8_t reg_adr, uint16_t value);
};

#endif // I2C_H_

//! \} End of i2c group
