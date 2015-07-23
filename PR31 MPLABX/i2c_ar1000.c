/*******************************************************************************
* This file provides the functions for the I2C module.
*
* Author: Kong Wai Weng @ Cytron Technologies Sdn. Bhd.
*******************************************************************************/



#include <htc.h>
#include "i2c_ar1000.h"





/*******************************************************************************
* PRIVATE GLOBAL VARIABLES                                                     *
*******************************************************************************/

// The flag to indicate whether an I2C error has occured.
//unsigned char b_i2c_error_flag = 0;



/*******************************************************************************
* PUBLIC FUNCTION: i2c_initialize
*
* PARAMETERS:
* ~ void
*
* RETURN:
* ~ void
*
* DESCRIPTIONS:
* Initialize the I2C module.
*
*******************************************************************************/
void ar_i2c_initialize(void)
{
// Set the SCL and SDA pin as input.
	TRISC3 = 1;
	TRISC4 = 1;
	
	// Set the I2C clock frequency.
	// 400kHz, SSPADD = (FOSC / (4 * F_I2C) ) - 1  ;12   if change to 100k then is 49
	SSPADD = 12;    
	
	// Select I2C master mode, clock = FOSC / (4 * (SSPADD+1) ).
	SSPM3 = 1;
	SSPM2 = 0;
	SSPM1 = 0;
	SSPM0 = 0;						
	
	// Clear the Write Collision Detect bit.
	WCOL = 0;
	
	// Clear the Receive Overflow Indicator bit.
	SSPOV = 0;						
	
	// Enable the MSSP module.
	SSPEN = 1;	
		

}	



/*******************************************************************************
* PUBLIC FUNCTION: ar_i2c_read
*
* PARAMETERS:
* ~ ar_slave_address	- The I2C slave address.
* ~ ar_register			- The register that we want to read.
*
* RETURN:
* ~ The data that we read from the I2C.
*
* DESCRIPTIONS:
* This function will read a single byte of data using the I2C.
*
*******************************************************************************/
unsigned int ar_i2c_read(unsigned char ar_slave_address, unsigned char ar_register)
{
	// Buffer for the received byte.
	unsigned char ar_received_byte1=0, ar_received_byte2=0;
	unsigned int ar_received_byte=0;
	
	
	// Send start bit.	
	SEN = 1;
	while (SEN == 1);

	// Send slave address and indicate to write.
	SSPBUF = ar_slave_address | 0x00;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);

	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);
		
		return 0;
	}

	// Send the register address that we want to read.
	SSPBUF = ar_register;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);
	
	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);
		
		return 0;
	}

	
	
	// Send repeated start bit.
	RSEN = 1;
	while (RSEN == 1);
	
	// Send slave address and indicate to read.
	SSPBUF = ar_slave_address | 0x01;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);

	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);
		
		return 0;
	}
	
	// Enable receive.
	RCEN = 1;

	// Wait until the data is received.
	unsigned long count = 10000L;
	while (BF == 0) {
		
		// If timeout...
		if (--count == 0) {
			// Send stop bit.
			PEN = 1;
			while (PEN == 1);
			
			return 0;
		}
	}

	// Read the received data.
	ar_received_byte1 = SSPBUF;
	
	// Send Acknowledge.
	ACKDT = 0;
	ACKEN = 1;
	while (ACKEN == 1);
	RCEN = 1;
	// Wait until the data is received.
	unsigned long count = 10000L;
	while (BF == 0) {
		
		// If timeout...
		if (--count == 0) {
			// Send stop bit.
			PEN = 1;
			while (PEN == 1);
			
			return 0;
		}
	}

	// Read the received data.
	ar_received_byte2 = SSPBUF;
	
	// Send Not Acknowledge.
	ACKDT = 1;
	ACKEN = 1;
	while (ACKEN == 1);
	
	// Send stop bit
	PEN = 1;
	while (PEN == 1);
	
	ar_received_byte = (ar_received_byte1 << 8);	
	ar_received_byte |= ar_received_byte2;


	return ar_received_byte;
	
}


/*******************************************************************************
* PRIVATE FUNCTION: ar_i2c_write
*
* PARAMETERS:
* ~ ar_slave_address	- The I2C slave address.
* ~ ar_register			- The register that we want to write.
* ~ ar_data				- The data that we want to write.
*
* RETURN:
* ~ void
*
* DESCRIPTIONS:
* This function will write a single byte of data using the I2C.
*
*******************************************************************************/
void ar_i2c_write(unsigned char ar_slave_address, unsigned char ar_register, unsigned long ar_data)
{
	// Clear the error flag before we start a new I2C operation.

	unsigned char ar_transmit_byte1, ar_transmit_byte2;
	ar_transmit_byte1 = (ar_data & 0xFF00) >> 8;
	ar_transmit_byte2 = (ar_data & 0x00FF);
	
	// Send start bit.	
	SEN = 1;
	while (SEN == 1);
	
	// Send slave address and indicate to write.
	SSPBUF = ar_slave_address | 0x00;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);
	
	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);
		
		return;
	}
	
	// Send the register address that we want to write.
	SSPBUF = ar_register;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);
	
	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);

		return;
	}
	
	// Send the data.

	SSPBUF = ar_transmit_byte1;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);
	
	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);
	
		return;
	}

	// Send the data.
	SSPBUF = ar_transmit_byte2;
	
	// Wait for slave to acknowledge.
	while (R_W == 1);
	
	// If slave does not acknowledge...
	if (ACKSTAT == 1) {
		// Send stop bit.
		PEN = 1;
		while (PEN == 1);

		return;
	}

	// Send stop bit
	PEN = 1;
	while (PEN == 1);
	
}
