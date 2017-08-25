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

	int UVA, UVB, UVI;
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

	delay(300000);
	// init I2C
	I2C_MasterGetDefaultConfig(&masterConfig);
	I2C_MasterInit(EXAMPLE_I2C_MASTER_BASEADDR, &masterConfig, I2C_MASTER_CLK_FREQ);

	init_acc();
	init_uv();

	LED2_GREEN_ON();

	while (1) {
//		/* movement measurement*/
//		accMove(&movX, &movY, &movZ);
//		/*if it moves*/
//		if ( movX > 300000 || movY > 300000 || movZ > 300000){
//			/*uv measurement*/
//			uvIndex(&UVA, &UVB);
//			/* uv usage */
//			UVI = ( UVA + UVB ) / 2;
//			//UvBlinking(UVI);
//			LED1_RED_ON();
//			POWER_sleep(3000);
//			LED1_RED_OFF();
//			POWER_recover();
//			delay(300000);
//
//		} else{
//			LED1_BLUE_ON();
//			POWER_sleep(6000);
//			LED1_BLUE_OFF();
//			POWER_recover();
//			delay(300000);
//		}

		LED2_GREEN_ON();
		POWER_sleep(500);
		LED2_GREEN_OFF();
		POWER_sleep(500);

		// check button state
		POWER_handle_power_button();
	}
}

/*++++++++++++++++++++++++++++++ OLD CODE 2 ++++++++++++++++++++++++++++++++*/

	// Can set Power Mode STOP
//		LED2_BLUE_ON();
//		delay(300000);
//		LED2_BLUE_OFF();
//		delay(300000);
//		LED2_BLUE_ON();
//		delay(300000);
//		LED2_BLUE_OFF();
//		delay(300000);
		// write to UV sensor and ACC successful
//
//			while (1)
//			{
//
//				accMove(&movX, &movY, &movZ);
//				LED1_BLUE_ON();
//
//				if ( movX > 200000 || movY > 200000 || movZ > 200000)
//				{
//					led1Off();
//					LED1_RED_ON();
//					uvIndex(&UVA, &UVB);
//					UVI=( UVA + UVB ) / 2;
//
//
//
//					//				avg += UVI;
//					//				agr += UVI*UVI*(1/InvSqrt(UVI));
//
//									if (agr >= 15179) {
//										led2Off();
//										delay(30);
//										LED2_RED_ON();
//										buzz();
//									}
//
//
//					//				if (cont > 1000 ) {
//					//					avg/= cont;
//					//					for (int ii=0; ii< 5 ; ii++)
//					//						index[ii+1]=index[ii];
//					//					if ( avg > 0) index[0]=avg;
//					//					avg=0;
//					//					cont=0;
//					//
//					//				}
//
//
//					if (UVI > 11) {
//						led2Off();
//						delay(30);
//						LED2_BLUE_ON();
//						buzz();
//					} else if (UVI >= 7) {
//						led2Off();
//						delay(30);
//						LED2_BLUE_ON();
//						LED2_RED_ON();
//						buzz();
//					} else if (UVI >= 5) {
//						led2Off();
//						delay(30);
//						LED2_RED_ON();
//						buzz();
//					} else if (UVI >= 2) {
//						led2Off();
//						delay(30);
//						LED2_RED_ON();
//						LED2_GREEN_ON();
//						buzz();
//					} else {
//						led2Off();
//						LED2_GREEN_ON();
//						for (int i=0 ; i<50 ; i++)
//							delay(8800);
//					}
//				}
//				else {
//					LED1_RED_OFF();
//				}
//			}
//				delay(10000);
//
//				//led2Off();
//
//				// go to STOP MODE
//				//LED2_RED_ON();
//				// enter SLEEP mode
//				POWER_sleep();
//				led1Off();
//				//LED2_RED_OFF();
//				// reinit console
//				POWER_recover();
//			}
//
//			return 0;
//		}
//
//		}


/*++++++++++++++++++++++++++++++ OLD CODE ++++++++++++++++++++++++++++++++*/

		//
		//int main(void)
		//{
		//
		//	int UVA, UVB, UVI;
		//	uint32_t freq = 0;
		//	int movX, movY, movZ;
		//	//int accX, accY, accZ, agr, index[6];
		//	//int cont = 0, avg = 0;
		//	//uint8_t ch;
		//	smc_power_state_t curPowerState;
		//	app_power_mode_t targetPowerMode;
		//	i2c_master_config_t masterConfig;
		//	i2c_master_transfer_t  master_acc, master_uv;
		//	bool needSetWakeup; /* Need to set wakeup. */
		//	lptmr_config_t lptmrConfig;
		//	unsigned char acc_buff[10], uv_buff[10];
		//	status_t result, result1;
		//
		//
		//	// get rid of warnings
		//	freq = freq;
		//
		//
		//	//	uint16_t v[5];
		//	//	v[0] = 14;
		//	//	v[1] = 3;
		//	//	v[2] = 5;
		//	//	v[3] = 12;
		//	//	v[5] = 5;
		//
		//	// init I2C
		//	I2C_MasterGetDefaultConfig(&masterConfig);
		//	I2C_MasterInit(EXAMPLE_I2C_MASTER_BASEADDR, &masterConfig, I2C_MASTER_CLK_FREQ);
		//
		//
		//	// allow all power modes (VLLS, LLS, HSR, if available)
		//	SMC_SetPowerModeProtection(SMC, kSMC_AllowPowerModeAll);
		//	// most recent source of reset is an enabled LLWU module (chip was in low leakage mode, probably STOP)
		//	if (kRCM_SourceWakeup & RCM_GetPreviousResetSources(RCM)) /* Wakeup from VLLS. */
		//	{
		//		// isolate certain I/O pins and peripherals after recovering from STOP mode
		//		PMC_ClearPeriphIOIsolationFlag(PMC);
		//		NVIC_ClearPendingIRQ(LLWU_IRQn);
		//	}
		//
		//	BOARD_InitPins();
		//	BOARD_BootClockRUN();
		//	BOARD_InitDebugConsole();
		//
		//	/* Setup LPTMR. */
		//	LPTMR_GetDefaultConfig(&lptmrConfig);
		//	lptmrConfig.prescalerClockSource = kLPTMR_PrescalerClock_1; /* Use LPO as clock source. */
		//	lptmrConfig.bypassPrescaler = true;
		//	LPTMR_Init(LPTMR0, &lptmrConfig);
		//
		//	NVIC_EnableIRQ(LLWU_IRQn);
		//	NVIC_EnableIRQ(LPTMR0_IRQn);
		//
		//	//	NVIC_EnableIRQ(APP_WAKEUP_BUTTON_IRQ);
		//
		//	// write to UV sensor
		//	uv_buff[0] = 0b00000100;
		//	uv_buff[1] = 0;
		//	result = uvWrite(master_uv, uv_buff);
		//	// write to ACC sensor
		//	acc_buff[0] = 0b00010111;
		//	result1 = accWrite(master_acc, acc_buff);
		//
		//
		//	//	GPIO_WritePinOutput(GPIOB, 4, 0);
		//
		//
		//	//		LED1_BLUE_ON();
		//	//		delay(500000);
		//	//		LED1_BLUE_OFF();
		//	//		delay(500000);
		//
		//	// write to UV sensor and ACC successful
		//	if ((result == kStatus_Success) && (result1 == kStatus_Success) )
		//	{
		//		while (1)
		//		{
		//
		//			accMove(&movX, &movY, &movZ);
		//			LED1_BLUE_ON();
		//
		//
		//			if ( movX > 500000 || movY > 500000 || movZ > 500000)
		//			{
		//				LED1_RED_ON();
		//				uvIndex(&UVA, &UVB);
		//				UVI=( UVA + UVB ) / 2;
		//
		//
		//
		////				avg += UVI;
		////				agr += UVI*UVI*(1/InvSqrt(UVI));
		//
		////				if (agr >= 15179) {
		////					led2Off();
		////					delay(30);
		////					LED2_RED_ON();
		////					buzz();
		////				}
		//
		//
		////				if (cont > 1000 ) {
		////					avg/= cont;
		////					for (int ii=0; ii< 5 ; ii++)
		////						index[ii+1]=index[ii];
		////					if ( avg > 0) index[0]=avg;
		////					avg=0;
		////					cont=0;
		////
		////				}
		//
		//
		//				if (UVI > 11) {
		//					led2Off();
		//					delay(30);
		//					LED2_BLUE_ON();
		//					buzz();
		//				} else if (UVI >= 7) {
		//					led2Off();
		//					delay(30);
		//					LED2_BLUE_ON();
		//					LED2_RED_ON();
		//					buzz();
		//				} else if (UVI >= 5) {
		//					led2Off();
		//					delay(30);
		//					LED2_RED_ON();
		//					buzz();
		//				} else if (UVI >= 2) {
		//					led2Off();
		//					delay(30);
		//					LED2_RED_ON();
		//					LED2_GREEN_ON();
		//					buzz();
		//				} else {
		//					led2Off();
		//					LED2_GREEN_ON();
		//					for (int i=0 ; i<50 ; i++)
		//						delay(8800);
		//				}
		//			}
		//			else {
		//				LED1_RED_OFF();
		//			}
		//			delay(10000);
		//
		//			led1Off();
		////			led2Off();
		//			//	GPIO_WritePinOutput(GPIOB, 4, 1);
		//
		//			curPowerState = SMC_GetPowerModeState(SMC);
		//
		//			freq = CLOCK_GetFreq(kCLOCK_CoreSysClk);
		//			//APP_ShowPowerMode(curPowerState);
		//
		//			targetPowerMode = kAPP_PowerModeStop;
		//
		//			/* If could not set the target power mode, loop continue. */
		//			if (!APP_CheckPowerMode(curPowerState, targetPowerMode))
		//			{
		//				continue;
		//			}
		//
		//			/* If target mode is RUN/VLPR/HSRUN, don't need to set wakeup source. */
		//			if ((kAPP_PowerModeRun == targetPowerMode) || (kAPP_PowerModeVlpr == targetPowerMode))
		//			{
		//				needSetWakeup = false;
		//			}
		//
		//			else
		//			{
		//				needSetWakeup = true;
		//			}
		//
		//			if (needSetWakeup)
		//			{
		//				APP_GetWakeupConfig(targetPowerMode);
		//			}
		//
		//			APP_PowerPreSwitchHook(curPowerState, targetPowerMode);
		//
		//			if (needSetWakeup)
		//			{
		//				APP_SetWakeupConfig(targetPowerMode);
		//			}
		//
		//			APP_PowerModeSwitch(curPowerState, targetPowerMode);
		//			APP_PowerPostSwitchHook(curPowerState, targetPowerMode);
		//
		//			PRINTF("\r\nNext loop\r\n");
		//		}
		//	} else {
		//
		//		while (1)
		//			;
		//	}
		//
		//		return 0;
		//}

		/*++++++++++++++++++++++++++++++ OLD CODE END ++++++++++++++++++++++++++++++++*/


		//while(GPIO_ReadPinInput(BOARD_SW_GPIO, BOARD_SW_PIN));


		//	I2C_MasterGetDefaultConfig(&masterConfig);
		//
		//	sourceClock = I2C_MASTER_CLK_FREQ;
		//	I2C_MasterInit(EXAMPLE_I2C_MASTER_BASEADDR, &masterConfig, sourceClock);
		//
		//	unsigned char acc_buff[10], uv_buff[10];
		//
		//	uv_buff[0]=0b00000100;
		//	uv_buff[1]=0;
		//	status_t result = uvWrite(master_uv, uv_buff);
		//	acc_buff[0]=0b00010111;
		//	status_t result1=accWrite(master_acc, acc_buff);
		//
		//	LED1_BLUE_ON();
		//	delay(500000);
		//	LED1_BLUE_OFF();
		//	delay(500000);
		//
		//	int cont= 0;
		//	int avg = 0;
		//	if (result == kStatus_Success && result1 == kStatus_Success ) {
		//		while(1){
		//			cont ++ ;
		//			int status = swOn();
		//
		//			if (status == 1) {
		//				led1Off();
		//				led2Off();
		//				/*
		//				for(int k=0;k<3;k++){
		//					led2Off();
		//					led1Off();
		//					//convert(v[k]);
		//					convert(v[k]);
		//					delay(500000);
		//				}
		//				 */
		//
		//				led2Off();
		//				led1Off();
		//				//convert(v[k]);
		//				convert(index[0]);
		//
		//
		//
		//			}
		//
		//
		//
		//			accMove(&movX, &movY, &movZ);
		//			if ( movX > 500000 || movY > 500000 )
		//			{
		//				LED1_RED_ON();
		//				uvIndex(&UVA, &UVB);
		//
		//				UVI=( UVA + UVB ) / 2;
		//				avg += UVI;
		//				agr += UVI*UVI*(1/InvSqrt(UVI));
		//
		//
		//				if (agr >= 15179) {
		//					led2Off();
		//					delay(30);
		//					LED2_RED_ON();
		//					buzz();
		//				}
		//
		//
		//				if (cont > 1000 ) {
		//					avg/= cont;
		//					for (int ii=0; ii< 5 ; ii++)
		//						index[ii+1]=index[ii];
		//					if ( avg > 0) index[0]=avg;
		//					avg=0;
		//					cont=0;
		//
		//				}
		//
		//
		//
		//				if ( UVI < 2) {
		//					led2Off();
		//					LED2_GREEN_ON();
		//
		//					for (int i=0 ; i<50 ; i++)
		//						delay(4400);
		//
		//				} else if ( UVI >=2 && UVI <=5 ) {
		//					led2Off();
		//					delay(30);
		//					LED2_RED_ON();
		//					LED2_GREEN_ON();
		//					buzz();
		//
		//
		//				} else if ( UVI > 5 && UVI <=7) {
		//					led2Off();
		//					delay(30);
		//					LED2_RED_ON();
		//					buzz();
		//
		//				} else if ( UVI>7 && UVI <=11 ) {
		//					led2Off();
		//					delay(30);
		//					LED2_BLUE_ON();
		//					LED2_RED_ON();
		//					buzz();
		//
		//				}	else {
		//					led2Off();
		//					delay(30);
		//					LED2_BLUE_ON();
		//					buzz();
		//				}
		//
		//
		//
		//			} else {
		//				LED1_RED_OFF();
		//			}
		//
		//			/*	UVI=( UVA + UVB ) / 2;
		//			avg += UVI;
		//
		//			if (cont > 1000 ) {
		//				avg/= cont;
		//				for (int ii=0; ii< 5 ; ii++)
		//					index[ii+1]=index[ii];
		//				if ( avg > 0) index[0]=avg;
		//				avg=0;
		//				cont=0;
		//
		//			}
		//
		//
		//
		//			if ( UVI < 2) {
		//				led2Off();
		//				LED2_GREEN_ON();
		//
		//				for (int i=0 ; i<50 ; i++)
		//					delay(4400);
		//
		//			} else if ( UVI >=2 && UVI <=5 ) {
		//				led2Off();
		//				delay(30);
		//				LED2_RED_ON();
		//				LED2_GREEN_ON();
		//				buzz();
		//
		//
		//			} else if ( UVI > 5 && UVI <=7) {
		//				led2Off();
		//				delay(30);
		//				LED2_RED_ON();
		//				buzz();
		//
		//			} else if ( UVI>7 && UVI <=11 ) {
		//				led2Off();
		//				delay(30);
		//				LED2_BLUE_ON();
		//				LED2_RED_ON();
		//				buzz();
		//
		//			}	else {
		//				led2Off();
		//				delay(30);
		//				LED2_BLUE_ON();
		//				buzz();
		//			}*/
		//
		//		}
		//
		//	}
		//
		//
		//	else while(1);
		//
		//
		//	if (result1 == kStatus_Success)
		//	{
		//		while(1)
		//		{
		//			accGet(&accX, &accY, &accZ);
		//
		//		}
		//	}
		//
		//	else while(1);
		//
		//
		//
		//
		//
		//
		//
		//
		//
		//




