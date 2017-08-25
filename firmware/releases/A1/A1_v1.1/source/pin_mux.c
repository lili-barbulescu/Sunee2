/*
 * TEXT BELOW IS USED AS SETTING FOR THE PINS TOOL *****************************
PinsProfile:
- !!product 'Pins v2.0'
- !!processor 'MKL03Z32xxx4'
- !!package 'MKL03Z32VFK4'
- !!mcu_data 'ksdk2_0'
- !!processor_version '1.2.0'
 * BE CAREFUL MODIFYING THIS COMMENT - IT IS YAML SETTINGS FOR THE PINS TOOL ***
 */

#include "fsl_common.h"
#include "fsl_port.h"
#include "pin_mux.h"
#include "fsl_gpio.h"
#include "fsl_port.h"
#include "leds.h"

#define PIN0_IDX                         0u   /*!< Pin number for pin 0 in a port */
#define PIN1_IDX                         1u   /*!< Pin number for pin 1 in a port */
#define PIN2_IDX                         2u   /*!< Pin number for pin 2 in a port */
#define PIN3_IDX                         3u   /*!< Pin number for pin 3 in a port */
#define PIN4_IDX                         4u   /*!< Pin number for pin 4 in a port */
#define PIN5_IDX                         5u   /*!< Pin number for pin 5 in a port */
#define PIN6_IDX                         6u   /*!< Pin number for pin 6 in a port */
#define PIN7_IDX                         7u   /*!< Pin number for pin 7 in a port */
#define PIN8_IDX                         8u   /*!< Pin number for pin 8 in a port */
#define PIN9_IDX                         9u   /*!< Pin number for pin 9 in a port */
#define PIN11_IDX                       11u   /*!< Pin number for pin 11 in a port */
#define PIN12_IDX                       12u   /*!< Pin number for pin 12 in a port */
#define PIN13_IDX                       13u   /*!< Pin number for pin 13 in a port */
#define SOPT5_LPUART0RXSRC_LPUART_RX  0x00u   /*!< LPUART0 Receive Data Source Select: LPUART_RX pin */

/*
 * TEXT BELOW IS USED AS SETTING FOR THE PINS TOOL *****************************
BOARD_InitPins:
- options: {coreID: singlecore, enableClock: 'true'}
- pin_list:
  - {pin_num: '10', peripheral: GPIOB, signal: 'GPIO, 11', pin_signal: PTB11/TPM0_CH0/SPI0_MISO}
  - {pin_num: '11', peripheral: GPIOA, signal: 'GPIO, 7', pin_signal: PTA7/IRQ_4/SPI0_MISO/SPI0_MOSI}
  - {pin_num: '12', peripheral: GPIOB, signal: 'GPIO, 0', pin_signal: ADC0_SE9/PTB0/IRQ_5/LLWU_P4/EXTRG_IN/SPI0_SCK/I2C0_SCL}
  - {pin_num: '18', peripheral: GPIOB, signal: 'GPIO, 4', pin_signal: PTB4/IRQ_11/I2C0_SDA/LPUART0_RX}
  - {pin_num: '19', peripheral: ADC0, signal: 'SE, 1', pin_signal: ADC0_SE1/CMP0_IN1/PTB5/IRQ_12/TPM1_CH1/NMI_b}
  - {pin_num: '20', peripheral: GPIOA, signal: 'GPIO, 12', pin_signal: ADC0_SE0/CMP0_IN0/PTA12/IRQ_13/LPTMR0_ALT2/TPM1_CH0/TPM_CLKIN0/CLKOUT}
  - {pin_num: '21', peripheral: GPIOB, signal: 'GPIO, 13', pin_signal: PTB13/CLKOUT32K/TPM1_CH1/RTC_CLKOUT}
  - {pin_num: '15', peripheral: I2C0, signal: SCL, pin_signal: ADC0_SE3/PTA8/I2C0_SCL/SPI0_MOSI}
  - {pin_num: '16', peripheral: I2C0, signal: SDA, pin_signal: ADC0_SE2/PTA9/I2C0_SDA/SPI0_SCK}
  - {pin_num: '2', peripheral: GPIOB, signal: 'GPIO, 7', pin_signal: PTB7/IRQ_3/TPM1_CH0}
  - {pin_num: '1', peripheral: GPIOB, signal: 'GPIO, 6', pin_signal: PTB6/IRQ_2/LPTMR0_ALT3/TPM1_CH1/TPM_CLKIN1}
  - {pin_num: '13', peripheral: LPUART0, signal: TX, pin_signal: ADC0_SE8/CMP0_IN3/PTB1/IRQ_6/LPUART0_TX/LPUART0_RX/I2C0_SDA}
  - {pin_num: '14', peripheral: LPUART0, signal: RX, pin_signal: VREF_OUT/CMP0_IN5/PTB2/IRQ_7/LPUART0_RX/LPUART0_TX}
  - {pin_num: '5', peripheral: OSC, signal: EXTAL, pin_signal: EXTAL0/PTA3/I2C0_SCL/I2C0_SDA/LPUART0_TX}
  - {pin_num: '6', peripheral: OSC, signal: XTAL, pin_signal: XTAL0/PTA4/I2C0_SDA/I2C0_SCL/LPUART0_RX/CLKOUT}
  - {pin_num: '7', peripheral: GPIOA, signal: 'GPIO, 5', pin_signal: PTA5/RTC_CLKIN/TPM0_CH1/SPI0_SS_b}
  - {pin_num: '23', peripheral: RCM, signal: RESET, pin_signal: PTA1/IRQ_1/LPTMR0_ALT1/TPM_CLKIN0/RESET_b}
 * BE CAREFUL MODIFYING THIS COMMENT - IT IS YAML SETTINGS FOR THE PINS TOOL ***
 */

/*FUNCTION**********************************************************************
 *
 * Function Name : BOARD_InitPins
 * Description   : Configures pin routing and optionally pin electrical features.
 *
 *END**************************************************************************/
void BOARD_InitPins(void) {
  CLOCK_EnableClock(kCLOCK_PortA);                           /* Port A Clock Gate Control: Clock enabled */
  CLOCK_EnableClock(kCLOCK_PortB);                           /* Port B Clock Gate Control: Clock enabled */

  PORT_SetPinMux(PORTA, PIN1_IDX, kPORT_MuxAlt3);            /* PORTA1 (pin 23) is configured as RESET_b */
  PORT_SetPinMux(PORTA, PIN12_IDX, kPORT_MuxAsGpio);         /* PORTA12 (pin 20) is configured as PTA12 */
  PORT_SetPinMux(PORTA, PIN3_IDX, kPORT_PinDisabledOrAnalog); /* PORTA3 (pin 5) is configured as EXTAL0 */
  PORT_SetPinMux(PORTA, PIN4_IDX, kPORT_PinDisabledOrAnalog); /* PORTA4 (pin 6) is configured as XTAL0 */
  PORT_SetPinMux(PORTA, PIN5_IDX, kPORT_MuxAsGpio);          /* PORTA5 (pin 7) is configured as PTA5 */
  PORT_SetPinMux(PORTA, PIN7_IDX, kPORT_MuxAsGpio);          /* PORTA7 (pin 11) is configured as PTA7 */
  PORT_SetPinMux(PORTA, PIN8_IDX, kPORT_MuxAlt2);            /* PORTA8 (pin 15) is configured as I2C0_SCL */
  PORT_SetPinMux(PORTA, PIN9_IDX, kPORT_MuxAlt2);            /* PORTA9 (pin 16) is configured as I2C0_SDA */
  PORT_SetPinMux(PORTB, PIN0_IDX, kPORT_MuxAsGpio);          /* PORTB0 (pin 12) is configured as PTB0 */
  PORT_SetPinMux(PORTB, PIN1_IDX, kPORT_MuxAlt2);            /* PORTB1 (pin 13) is configured as LPUART0_TX */
  PORT_SetPinMux(PORTB, PIN11_IDX, kPORT_MuxAsGpio);         /* PORTB11 (pin 10) is configured as PTB11 */
  PORT_SetPinMux(PORTB, PIN13_IDX, kPORT_MuxAsGpio);         /* PORTB13 (pin 21) is configured as PTB13 */
  PORT_SetPinMux(PORTB, PIN2_IDX, kPORT_MuxAlt2);            /* PORTB2 (pin 14) is configured as LPUART0_RX */
  PORT_SetPinMux(PORTB, PIN4_IDX, kPORT_MuxAsGpio);          /* PORTB4 (pin 18) is configured as PTB4 */
  PORT_SetPinMux(PORTB, PIN5_IDX, kPORT_PinDisabledOrAnalog); /* PORTB5 (pin 19) is configured as ADC0_SE1 */
  PORT_SetPinMux(PORTB, PIN6_IDX, kPORT_MuxAsGpio);          /* PORTB6 (pin 1) is configured as PTB6 */
  PORT_SetPinMux(PORTB, PIN7_IDX, kPORT_MuxAsGpio);          /* PORTB7 (pin 2) is configured as PTB7 */
  SIM->SOPT5 = ((SIM->SOPT5 &
    (~(SIM_SOPT5_LPUART0RXSRC_MASK)))                        /* Mask bits to zero which are setting */
      | SIM_SOPT5_LPUART0RXSRC(SOPT5_LPUART0RXSRC_LPUART_RX) /* LPUART0 Receive Data Source Select: LPUART_RX pin */
    );

  GPIOA->PDDR |= (1U << 5);

  gpio_pin_config_t led_config = {
  	        kGPIO_DigitalOutput, 1,
  	    };

  GPIO_PinInit(BOARD_LED1_RED_GPIO, BOARD_LED1_RED_GPIO_PIN, &led_config);
  GPIO_PinInit(BOARD_LED1_GREEN_GPIO, BOARD_LED1_GREEN_GPIO_PIN, &led_config);
  GPIO_PinInit(BOARD_LED1_BLUE_GPIO, BOARD_LED1_BLUE_GPIO_PIN, &led_config);

  GPIO_PinInit(BOARD_LED2_RED_GPIO, BOARD_LED2_RED_GPIO_PIN, &led_config);
  GPIO_PinInit(BOARD_LED2_GREEN_GPIO, BOARD_LED2_GREEN_GPIO_PIN, &led_config);
  GPIO_PinInit(BOARD_LED2_BLUE_GPIO, BOARD_LED2_BLUE_GPIO_PIN, &led_config);



}

/*******************************************************************************
 * EOF
 ******************************************************************************/
