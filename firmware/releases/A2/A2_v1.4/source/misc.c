/*
 * misc.c
 *
 *  Created on: Jul 11, 2017
 *      Author: blili
 */

#include "misc.h"
#include "board.h"

void delay(uint32_t x)
{
	while((x--) > 0);
}

void buzz()
{
	for (int i=0; i < 250; i++)
	{
		GPIO_ClearPinsOutput(BOARD_SPEAKER_GPIO, 1U << BOARD_SPEAKER_PIN);
		delay(4400);
		GPIO_SetPinsOutput(BOARD_SPEAKER_GPIO, 1U << BOARD_SPEAKER_PIN);
		delay(4400);
	}

}

void buzzLong()
{
	for (int i=0; i < 500; i++)
	{
		GPIO_ClearPinsOutput(BOARD_SPEAKER_GPIO, 1U << BOARD_SPEAKER_PIN);
		delay(1100);
		GPIO_SetPinsOutput(BOARD_SPEAKER_GPIO, 1U << BOARD_SPEAKER_PIN);
		delay(1100);
	}

}

void led1Off()
{
	LED1_RED_OFF();
	LED1_GREEN_OFF();
	LED1_BLUE_OFF();
}

void led2Off()
{
	LED2_RED_OFF();
	LED2_GREEN_OFF();
	LED2_BLUE_OFF();
}


void acumulat(double agr)
{
	if (agr >= 50600 * 3 / PERIOD_DELAY_S ) {
		led2Off();
		delay(300);
		LED2_RED_ON();
		buzzLong();
		delay(2000000);
		buzzLong();
		delay(2000000);
		buzzLong();

		LED2_RED_OFF();
	}
}

int swOn()
{
	int status=0;

	if (!GPIO_ReadPinInput(BOARD_SW_GPIO, BOARD_SW_PIN))
		status=1;
	return status;
}

float InvSqrt(float x)
{
	float xhalf = 0.5f * x;
	int i = *(int*)&x;            // store floating-point bits in integer

	i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
	x = *(float*)&i;              // convert new bits into float
	x = x*(1.5f - xhalf*x*x);     // One round of Newton's method
	return x;
}

void UvBlinking(int UVI)
{
	if (UVI > 11) {
		led2Off();
		delay(30);
		LED2_BLUE_ON();
		buzz();
		delay(2000000);
		buzz();
		delay(2000000);
		buzz();
	} else if (UVI >= 7) {
		led2Off();
		delay(30);
		LED2_BLUE_ON();
		LED2_RED_ON();
		buzz();
	} else if (UVI >= 5) {
		led2Off();
		delay(30);
		LED2_RED_ON();
	} else if (UVI >= 2) {
		led2Off();
		delay(30);
		LED2_RED_ON();
		LED2_GREEN_ON();
	} else {
		led2Off();
		LED2_GREEN_ON();
		for (int i=0 ; i<50 ; i++)
			delay(4400);
	}

}
