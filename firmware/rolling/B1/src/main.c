#include <boards.h>
#include <nrf_delay.h>

#define _BV(x) (1<<x)
#define LED0_R	_BV(2)
#define	LED0_G	_BV(3)
#define	LED0_B	_BV(11)
#define	LED1_R	_BV(20)
#define	LED1_G	_BV(16)
#define	LED1_B	_BV(15)


#define LEDS_MSK (LED0_R | LED0_G | LED0_B | LED1_R | LED1_G | LED1_B)

void blink_led (int msk)
{
	NRF_GPIO->OUTCLR = msk;
        nrf_delay_ms(100);
        NRF_GPIO->OUTSET = msk;
}

int main(void)
{
	// init leds
	NRF_GPIO->DIRSET = LEDS_MSK;
	NRF_GPIO->OUT    = LEDS_MSK;


	while (1) {
		blink_led(LED0_R);
		blink_led(LED0_G);
		blink_led(LED0_B);

		blink_led(LED1_R);
		blink_led(LED1_G);
		blink_led(LED1_B);
	}


	return 0;
}
