/*
 * acc_i2c.h
 *
 *  Created on: May 19, 2017
 *      Author: blili
 */

#ifndef SOURCES_ACC_I2C_H_
#define SOURCES_ACC_I2C_H_

/* Transmit to ACC slave */
status_t accWrite (i2c_master_transfer_t master_acc, unsigned char *acc_buff);

/* Receive from UV slave*/
status_t accRead (i2c_master_transfer_t master_acc, unsigned char *acc_buff);

/*Receive what Transmited*/
status_t accReadWhatWrote(i2c_master_transfer_t master_acc, unsigned char *acc_buff);

/*Get movement*/
void accGet (int *accX, int *accY, int *accZ);

void accMove (int *accX, int *accY, int *accZ);

/*Init accelerometer*/

void init_acc();


#endif /* SOURCES_ACC_I2C_H_ */
