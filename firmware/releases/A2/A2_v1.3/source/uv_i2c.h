/*
 * uv_i2c.h
 *
 *  Created on: May 19, 2017
 *      Author: blili
 */

#ifndef SOURCES_UV_I2C_H_
#define SOURCES_UV_I2C_H_

/* Transmit to UV slave */
status_t uvWrite (i2c_master_transfer_t master_uv, unsigned char *uv_buff);

/* Receive from UV slave*/
status_t uvRead (i2c_master_transfer_t master_uv, uint32_t subadr, unsigned char *uv_buff);

/*Receive what Transmited*/
status_t uvReadWhatWrote(i2c_master_transfer_t master_uv, unsigned char *uv_buff);

void uvIndex(double *UVA_index, double *UVB_index );

void init_uv();


#endif /* SOURCES_UV_I2C_H_ */
