/*
 * acc_i2c.c
 *
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
#include "acc_i2c.h"

#define I2C_MASTER_CLK_					SRC I2C0_CLK_SRC
#define I2C_MASTER_CLK_FREQ 			CLOCK_GetFreq(I2C0_CLK_SRC)
#define EXAMPLE_I2C_MASTER_BASEADDR 	I2C0

#define I2C_MASTER_SLAVE_ADDR_7BIT 		0b0011101
#define I2C_MASTER_SLAVE_UV_ADDR_7BIT 	0x10
#define I2C_BAUDRATE 					100000U
#define I2C_DATA_LENGTH 				32U

#define NHIST 							4

/*Transmit acc on i2c*/

status_t accWrite (i2c_master_transfer_t master_acc, unsigned char *acc_buff)
{
	memset(&master_acc, 0, sizeof(master_acc));
	master_acc.slaveAddress = I2C_MASTER_SLAVE_ADDR_7BIT;
	master_acc.direction = kI2C_Write;
	master_acc.subaddress = 0x20;
	master_acc.subaddressSize = 1;
	master_acc.data = acc_buff;
	master_acc.dataSize =1;
	master_acc.flags = kI2C_TransferDefaultFlag;

	status_t result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_acc);

	return result;

}


status_t accReadWhatWrote(i2c_master_transfer_t master_acc, unsigned char *acc_buff)
{
	memset(&master_acc, 0, sizeof(master_acc));
	master_acc.slaveAddress = I2C_MASTER_SLAVE_ADDR_7BIT;
	master_acc.direction = kI2C_Read;
	master_acc.subaddress = 0x20;
	master_acc.subaddressSize = 1;
	master_acc.data = acc_buff;
	master_acc.dataSize =1;
	master_acc.flags = kI2C_TransferDefaultFlag;

	status_t result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_acc);
	return result;

}



status_t accReadIndex(i2c_master_transfer_t master_acc, unsigned char *acc_buff)
{
	memset(&master_acc, 0, sizeof(master_acc));
	master_acc.slaveAddress = I2C_MASTER_SLAVE_ADDR_7BIT;
	master_acc.direction = kI2C_Read;
	master_acc.subaddress = 0x28;
	master_acc.subaddressSize = 1;
	master_acc.data = acc_buff;
	master_acc.dataSize =6;
	master_acc.flags = kI2C_TransferDefaultFlag;

	status_t result = I2C_MasterTransferBlocking(EXAMPLE_I2C_MASTER_BASEADDR, &master_acc);
	return result;

}

void init_acc()
{
	unsigned char acc_buff[6];
	i2c_master_transfer_t master_acc;
	status_t result1;
	// write address to ACC sensor
	acc_buff[0] = 0b00010111;

	do
	{
		result1 = accWrite(master_acc, acc_buff);
	}
	while (result1 != kStatus_Success);
}

void accGet (int *accX, int *accY, int *accZ)
{
	unsigned char acc_buff[6];
	i2c_master_transfer_t master_acc;

	accReadIndex(master_acc, acc_buff);
	*accX=acc_buff[0] + (((int) acc_buff[1]) << 8);
	*accY=acc_buff[2] + (((int) acc_buff[3]) << 8);
	*accZ=acc_buff[4] + (((int) acc_buff[5]) << 8);


}

void accMove (int *movX, int *movY, int *movZ){

	int std[3], avg, i, j;
	static int accHist[NHIST][3], accCurrent;

	accGet(&accHist[accCurrent][0],&accHist[accCurrent][1], &accHist[accCurrent][2]);
	accCurrent = (accCurrent + 1) % NHIST;
	for (int i=0; i<3; i++)
	{
		// compute average
		avg = 0;
		std[i]=0;
		for(j = 0; j < NHIST; j++)
			avg+= accHist[j][i];
		avg/=NHIST;
		//
		for(j = 0; j < NHIST; j++)
			std[i]+= (accHist[j][i] - avg) * ( accHist[j][i] - avg);
		std[i]/=NHIST;
	}

	*movX=std[0];
	*movY=std[1];
	*movZ=std[2];
}




