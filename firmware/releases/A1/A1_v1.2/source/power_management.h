/*
 * power_management.h
 *
 *  Created on: Jul 10, 2017
 *      Author: Mihai
 */

#ifndef SOURCES_POWER_MANAGEMENT_H_
#define SOURCES_POWER_MANAGEMENT_H_

#include "stdbool.h"
#include "power_modes.h"



void POWER_init(void);
void POWER_sleep(uint32_t ms);
void POWER_recover(void);
void POWER_handle_power_button(void);



#endif /* SOURCES_POWER_MANAGEMENT_H_ */
