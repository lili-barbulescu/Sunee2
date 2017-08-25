/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*  Standard C Included Files */
#include <string.h>
/*  SDK Included Files */
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_i2c.h"

#include "fsl_common.h"
#include "pin_mux.h"
#include "leds.h"
#include "fsl_gpio.h"
#include "fsl_port.h"
#include "uv_i2c.h"
#include "acc_i2c.h"
#include "power_management.h"
#include "misc.h"
#include <math.h>

/*******************************************************************************
 * Definitions
 ******************************************************************************/
/* I2C source clock */
#define I2C_MASTER_CLK_SRC I2C0_CLK_SRC
#define I2C_MASTER_CLK_FREQ CLOCK_GetFreq(I2C0_CLK_SRC)
#define EXAMPLE_I2C_MASTER_BASEADDR I2C0

#define I2C_MASTER_SLAVE_ADDR_7BIT 0b0011101
#define I2C_MASTER_SLAVE_UV_ADDR_7BIT 0x10
#define I2C_BAUDRATE 100000U
#define I2C_DATA_LENGTH 32U

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

uint8_t g_master_txBuff[I2C_DATA_LENGTH];
uint8_t g_master_rxBuff[I2C_DATA_LENGTH];
volatile bool g_MasterCompletionFlag = false;

/*******************************************************************************
 * Code
 ******************************************************************************/

/*!
 * @brief Main function
 */



int main(void)
{

	double UVA, UVB, UVI, acm;
	int movX, movY, movZ;
	i2c_master_config_t masterConfig;
	lptmr_config_t lptmrConfig;

	// most recent source of reset is an enabled LLWU module (chip was in low leakage mode, probably STOP)
	if (kRCM_SourceWakeup & RCM_GetPreviousResetSources(RCM)) /* Wakeup from VLLS. */
	{
		// isolate certain I/O pins and peripherals after recovering from STOP mode
		PMC_ClearPeriphIOIsolationFlag(PMC);
		NVIC_ClearPendingIRQ(LLWU_IRQn);
	}


	BOARD_InitPins();
	BOARD_BootClockRUN();
	BOARD_InitDebugConsole();

	/* Setup LPTMR. */
	LPTMR_GetDefaultConfig(&lptmrConfig);
	lptmrConfig.prescalerClockSource = kLPTMR_PrescalerClock_1; /* Use LPO as clock source. */
	lptmrConfig.bypassPrescaler = true;
	LPTMR_Init(LPTMR0, &lptmrConfig);

	NVIC_EnableIRQ(LLWU_IRQn);
	NVIC_EnableIRQ(LPTMR0_IRQn);

	// allow all power modes (VLLS, LLS, HSR, if available)
	SMC_SetPowerModeProtection(SMC, kSMC_AllowPowerModeAll);

	// prepare power mode
	POWER_init();

	LED1_GREEN_ON();
	delay(1000000);
	LED1_GREEN_OFF();
	delay(1000000);

	// init I2C
	I2C_MasterGetDefaultConfig(&masterConfig);
	I2C_MasterInit(EXAMPLE_I2C_MASTER_BASEADDR, &masterConfig, I2C_MASTER_CLK_FREQ);

	delay(1000000);



	LED1_GREEN_ON();
	delay(1000000);
	LED1_GREEN_OFF();
	delay(1000000);

	init_uv();
	acm = 0;

	LED1_GREEN_ON();
	delay(1000000);
	LED1_GREEN_OFF();
	delay(1000000);

	while (1) {
		/*uv measurement*/

		delay(3000000);

		BOARD_InitPins();
		I2C_MasterInit(EXAMPLE_I2C_MASTER_BASEADDR, &masterConfig, I2C_MASTER_CLK_FREQ);

		LED1_BLUE_ON();
		uvIndex(&UVA, &UVB);
		delay(500000);
		LED1_BLUE_OFF();

		/* uv usage */
		UVI = ( UVA + UVB ) / 2;

		UvBlinking(UVI);
		/*cummulative alert*/
		acm += UVI * UVI * sqrt(UVI);
		acumulat(acm);

		POWER_sleep(PERIOD_DELAY_S * 1000);
		delay(300000);

		// check button state
		POWER_handle_power_button();
	}
}
