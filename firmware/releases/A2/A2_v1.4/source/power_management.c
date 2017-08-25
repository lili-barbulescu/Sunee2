/*
 * power_management.c
 *
 *  Created on: Jul 10, 2017
 *      Author: Mihai
 */

#include "power_management.h"
#include "power_modes.h"
#include "misc.h"

void APP_SetWakeupConfig(app_power_mode_t targetMode);
void APP_PowerModeSwitch(smc_power_state_t curPowerState, app_power_mode_t targetPowerMode);
bool APP_CheckPowerMode(smc_power_state_t curPowerState, app_power_mode_t targetPowerMode);


static int _POWER_STATE_ON = 1;


void PORTB_IRQHandler(void)
{
	__disable_irq();

	// clear IRQ flag
	GPIO_ClearPinsInterruptFlags(GPIOB, GPIO_GetPinsInterruptFlags(GPIOB) & (~I2C_S_IICIF_MASK));
	NVIC_ClearPendingIRQ(PORTB_IRQn);

	// device stopped
	if (0 == _POWER_STATE_ON) {
		// wait for a while
		delay(3000000);
		// if button still pressed
		if (!GPIO_ReadPinInput(BOARD_SW_GPIO, BOARD_SW_PIN)) {
			// wake up
			_POWER_STATE_ON = 1;
		}
	}
	__enable_irq();
}


void POWER_init(void)
{
	// allow all power modes
	SMC_SetPowerModeProtection(SMC, kSMC_AllowPowerModeAll);
	PORT_SetPinInterruptConfig(APP_WAKEUP_BUTTON_PORT, APP_WAKEUP_BUTTON_GPIO_PIN, APP_WAKEUP_BUTTON_IRQ_TYPE);
		//NVIC_EnableIRQ(PORTB_IRQn);
	NVIC_SetPriority(PORTB_IRQn, 0);
	NVIC_DisableIRQ(PORTB_IRQn);
}

void POWER_sleep(uint32_t ms)
{
//	volatile int i, j;
//
//	for (i = 0; i < 1000; i++)
//		for (j = 0; j < 2000; j++)
//			;

	set_param(ms);

	// can not switch to that power mode
	if (!APP_CheckPowerMode(SMC_GetPowerModeState(SMC), kAPP_PowerModeVlps)) {
		return;
	}
	// disable debug misc
	APP_PowerPreSwitchHook(SMC_GetPowerModeState(SMC), kAPP_PowerModeStop);
	// set wakeup by timeout
	APP_SetWakeupConfig(kAPP_PowerModeVlps);
	// switch power mode (aka go to sleep)
	APP_PowerModeSwitch(SMC_GetPowerModeState(SMC), kAPP_PowerModeVlps);
	// restore debug console
	APP_PowerPostSwitchHook(SMC_GetPowerModeState(SMC), kAPP_PowerModeVlps);

}


void POWER_recover(void)
{

}


void POWER_handle_power_button(void)
{
	uint32_t ms_counter = 0;

	// if button is pressed
	while (!GPIO_ReadPinInput(BOARD_SW_GPIO, BOARD_SW_PIN)) {

		if (ms_counter > 5000) {
			// Go to sleep
			smc_power_state_t curPowerState;
			curPowerState = SMC_GetPowerModeState(SMC);

			// can not switch VLLS0
			if (!APP_CheckPowerMode(curPowerState, kAPP_PowerModeStop)) {
				LED1_RED_ON();
				LED2_RED_ON();
				POWER_sleep(2000);
				POWER_recover();
				ms_counter = 0;
				continue;
			}

			LED1_RED_OFF();
			LED2_RED_OFF();
			LED1_BLUE_OFF();

			// Sleep forever (or until kissed by a handsome prince)
			do {
				APP_GetWakeupConfig(kAPP_PowerModeVlls0);
				// kAPP_PowerModeStop
				APP_PowerPreSwitchHook(curPowerState, kAPP_PowerModeVlps); //kAPP_PowerModeVlps
				// Allow PortB Interrupt
				NVIC_ClearPendingIRQ(PORTB_IRQn);
				NVIC_SetPriority(PORTB_IRQn, 0);
				GPIO_ClearPinsInterruptFlags(GPIOB, GPIO_GetPinsInterruptFlags(GPIOB) & (~I2C_S_IICIF_MASK));
				NVIC_EnableIRQ(PORTB_IRQn);
				__enable_irq();
				_POWER_STATE_ON = 0;
				APP_SetWakeupConfig(kAPP_PowerModeVlps);
				APP_PowerModeSwitch(curPowerState, kAPP_PowerModeVlps);
				APP_PowerPostSwitchHook(curPowerState, kAPP_PowerModeVlps);


			} while(0 == _POWER_STATE_ON);

			NVIC_DisableIRQ(PORTB_IRQn);

			LED1_GREEN_ON();
			delay(1000000);
			LED1_GREEN_OFF();
			delay(1000000);
			LED1_GREEN_ON();
			delay(1000000);
			LED1_GREEN_OFF();
			delay(1000000);
			LED1_GREEN_ON();
			delay(1000000);
			LED1_GREEN_OFF();
			delay(1000000);

			return;

		} else if (ms_counter == 0) {
			led1Off();
			led2Off();
			LED1_RED_ON();
		} else {
			LED1_RED_TOGGLE();
			LED2_RED_TOGGLE();
		}
		POWER_sleep(250);
		//delay(1000000);
		ms_counter += 1000;
	}
	LED1_RED_OFF();
	LED2_RED_OFF();
}
