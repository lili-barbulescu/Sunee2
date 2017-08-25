/*
 * uv_i2c.c
 *  Created on: May 19, 2017
 *      Author: blili
 */

#include <string.h>
/*  SDK Included Files */
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_i2c.h"

#include "fsl_common.h"
#include "pin_mux.h"
#include "fsl_gpio.h"
#include "fsl_port.h"

#define I2C_MASTER_CLK_SRC I2C0_CLK_SRC
#define I2C_MASTER_CLK_FREQ CLOCK_GetFreq(I2C0_CLK_SRC)
#define EXAMPLE_I2C_MASTER_BASEADDR I2C0

#define I2C_MASTER_SLAVE_ADDR_7BIT 0b0011101
#define I2C_MASTER_SLAVE_UV_ADDR_7BIT 0x10
#define I2C_BAUDRATE 100000U

#include "uv_i2c.h"

#define I2C_DATA_LENGTH 32U



status_t uvWrite (i2c_master_transfer_t master_uv, unsigned char *uv_buff)
{

	status_t result;
	memset(&master_uv, 0, sizeof(master_uv));
	master_uv.slaveAddress = I2C_MASTER_SLAVE_UV_ADDR_7BIT;
	master_uv.direction = kI2C_Write;
	master_uv.subaddress = 0;
	master_uv.subaddressSize = 1;
	master_uv.data = uv_buff;
	master_uv.dataSize =2;
	master_uv.flags = kI2C_TransferDefaultFlag;
	result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_uv);

	return result;

}

status_t uvReadWhatWrote(i2c_master_transfer_t master_uv, unsigned char *uv_buff)
{
	status_t result;
	master_uv.slaveAddress = I2C_MASTER_SLAVE_UV_ADDR_7BIT;
	master_uv.direction = kI2C_Read;
	master_uv.subaddress = 0;
	master_uv.subaddressSize = 1;
	master_uv.data =uv_buff;
	master_uv.dataSize =2;
	master_uv.flags = kI2C_TransferDefaultFlag;
	result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_uv);

	return result;

}



status_t uvReadIndex(i2c_master_transfer_t master_uv, uint32_t subadr , int *val)
{
	status_t result;
	unsigned char uv_buff[2];
	memset(&master_uv, 0, sizeof(master_uv));
	master_uv.slaveAddress = I2C_MASTER_SLAVE_UV_ADDR_7BIT;
	master_uv.direction = kI2C_Read;
	master_uv.subaddress = subadr;
	master_uv.subaddressSize = 1;
	master_uv.data = uv_buff;
	master_uv.dataSize =2;
	master_uv.flags = kI2C_TransferDefaultFlag;
	result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_uv);

	*val = uv_buff[0] + (((int) uv_buff[1]) << 8);
	return result;


}

void uvIndex(int *UVA_index, int *UVB_index )
{
	i2c_master_transfer_t master_uv;
	int uv_A, uv_B;
	int uvComp1, uvComp2;
	double uvA_Calc, uvB_Calc;

	double a = 2.22, b = 1.33, c = 2.95 , d = 1.74 ;
	double UVAr = 0.001461 , UVBr = 0.002591 ;

	uvReadIndex( master_uv, 7, &uv_A);
	uvReadIndex( master_uv, 9 , &uv_B);
	uvReadIndex( master_uv, 10 , &uvComp1);
	uvReadIndex( master_uv, 11 , &uvComp2);

	uvA_Calc = uv_A - a * uvComp1 - b * uvComp2;
	uvB_Calc = uv_B - c * uvComp1 - d * uvComp2;

	*UVA_index = uvA_Calc * UVAr;
	*UVB_index = uvB_Calc * UVBr;

	//*UVA_index =uv_A;
	//*UVB_index =uv_B;


}

void init_uv()
{
	unsigned char uv_buff[10];
	// write to UV sensor
	uv_buff[0] = 0b00000100;
	uv_buff[1] = 0;
	status_t result;
	i2c_master_transfer_t master_uv;

	do
	{
		result = uvWrite(master_uv, uv_buff);
	}
	while (result != kStatus_Success);
}




