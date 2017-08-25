/*
 * leds.h
 *
 *  Created on: May 16, 2017
 *      Author: blili
 */

#ifndef SOURCES_LEDS_H_
#define SOURCES_LEDS_H_

/*
 * leds.h
 *
 *  Created on: May 16, 2017
 *      Author: blili
 */

#ifndef LEDS_H_
#define LEDS_H_

/**LED 1 (TOP) **/

#define LOGIC_LED1_ON 0U
#define LOGIC_LED1_OFF 1U
#define BOARD_LED1_RED_GPIO GPIOA
#define BOARD_LED1_RED_GPIO_PORT PORTA
#define BOARD_LED1_RED_GPIO_PIN 9U
#define BOARD_LED1_GREEN_GPIO GPIOA
#define BOARD_LED1_GREEN_GPIO_PORT PORTA
#define BOARD_LED1_GREEN_GPIO_PIN 12U
#define BOARD_LED1_BLUE_GPIO GPIOB
#define BOARD_LED1_BLUE_GPIO_PORT PORTB
#define BOARD_LED1_BLUE_GPIO_PIN 13U


/**LED 2 (BOTTOM) **/
#define LOGIC_LED2_ON 0U
#define LOGIC_LED2_OFF 1U
#define BOARD_LED2_RED_GPIO GPIOA
#define BOARD_LED2_RED_GPIO_PORT PORTA
#define BOARD_LED2_RED_GPIO_PIN 7U
#define BOARD_LED2_GREEN_GPIO GPIOB
#define BOARD_LED2_GREEN_GPIO_PORT PORTB
#define BOARD_LED2_GREEN_GPIO_PIN 2U
#define BOARD_LED2_BLUE_GPIO GPIOA
#define BOARD_LED2_BLUE_GPIO_PORT PORTA
#define BOARD_LED2_BLUE_GPIO_PIN 8U


/**LED 3 (BOTTOM BOTTOM) **/
#define LOGIC_LED3_ON 0U
#define LOGIC_LED3_OFF 1U
#define BOARD_LED3_BLUE_GPIO GPIOB
#define BOARD_LED3_BLUE_GPIO_PORT PORTB
#define BOARD_LED3_BLUE_GPIO_PIN 11U
#define BOARD_LED3_GREEN_GPIO GPIOB
#define BOARD_LED3_GREEN_GPIO_PORT PORTB
#define BOARD_LED3_GREEN_GPIO_PIN 10U
#define BOARD_LED3_RED_GPIO GPIOA
#define BOARD_LED3_RED_GPIO_PORT PORTA
#define BOARD_LED3_RED_GPIO_PIN 6U




/** LED1 FUNCTIONS **/
#define LED1_RED_INIT(output)                                 \
    GPIO_WritePinOutput(BOARD_LED1_RED_GPIO, BOARD_LED1_RED_GPIO_PIN, output);\
    BOARD_LED1_RED_GPIO->PDDR |= (1U << BOARD_LED1_RED_GPIO_PIN)  /*!< Enable target LED_RED */
#define LED1_RED_ON() \
    GPIO_ClearPinsOutput(BOARD_LED1_RED_GPIO, 1U << BOARD_LED1_RED_GPIO_PIN) /*!< Turn on target LED_RED */
#define LED1_RED_OFF() \
    GPIO_SetPinsOutput(BOARD_LED1_RED_GPIO, 1U << BOARD_LED1_RED_GPIO_PIN) /*!< Turn off target LED_RED */
#define LED1_RED_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED1_RED_GPIO, 1U << BOARD_LED1_RED_GPIO_PIN) /*!< Toggle on target LED_RED */

#define LED1_GREEN_INIT(output)                                   \
    GPIO_WritePinOutput(BOARD_LED1_GREEN_GPIO, BOARD_LED1_GREEN_GPIO_PIN, output);\
    BOARD_LED1_GREEN_GPIO->PDDR |= (1U << BOARD_LED1_GREEN_GPIO_PIN)  /*!< Enable target LED_GREEN */
#define LED1_GREEN_ON() \
    GPIO_ClearPinsOutput(BOARD_LED1_GREEN_GPIO, 1U << BOARD_LED1_GREEN_GPIO_PIN) /*!< Turn on target LED_GREEN */
#define LED1_GREEN_OFF() \
    GPIO_SetPinsOutput(BOARD_LED1_GREEN_GPIO, 1U << BOARD_LED1_GREEN_GPIO_PIN) /*!< Turn off target LED_GREEN */
#define LED1_GREEN_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED1_GREEN_GPIO, 1U << BOARD_LED1_GREEN_GPIO_PIN) /*!< Toggle on target LED_GREEN */

#define LED1_BLUE_INIT(output)                                  \
    GPIO_WritePinOutput(BOARD_LED1_BLUE_GPIO, BOARD_LED1_BLUE_GPIO_PIN, output);\
    BOARD_LED1_BLUE_GPIO->PDDR |= (1U << BOARD_LED1_BLUE_GPIO_PIN)  /*!< Enable target LED_BLUE */
#define LED1_BLUE_ON() \
    GPIO_ClearPinsOutput(BOARD_LED1_BLUE_GPIO, 1U << BOARD_LED1_BLUE_GPIO_PIN) /*!< Turn on target LED_BLUE */
#define LED1_BLUE_OFF() \
    GPIO_SetPinsOutput(BOARD_LED1_BLUE_GPIO, 1U << BOARD_LED1_BLUE_GPIO_PIN) /*!< Turn off target LED_BLUE */
#define LED1_BLUE_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED1_BLUE_GPIO, 1U << BOARD_LED1_BLUE_GPIO_PIN) /*!< Toggle on target LED_BLUE */



/** LED2 FUNCTIONS **/
#define LED2RED_INIT(output)                                 \
    GPIO_WritePinOutput(BOARD_LED2_RED_GPIO, BOARD_LED2_RED_GPIO_PIN, output);\
    BOARD_LED2_RED_GPIO->PDDR |= (1U << BOARD_LED2_RED_GPIO_PIN)  /*!< Enable target LED_RED */
#define LED2_RED_ON() \
    GPIO_ClearPinsOutput(BOARD_LED2_RED_GPIO, 1U << BOARD_LED2_RED_GPIO_PIN) /*!< Turn on target LED_RED */
#define LED2_RED_OFF() \
    GPIO_SetPinsOutput(BOARD_LED2_RED_GPIO, 1U << BOARD_LED2_RED_GPIO_PIN) /*!< Turn off target LED_RED */
#define LED2_RED_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED2_RED_GPIO, 1U << BOARD_LED2_RED_GPIO_PIN) /*!< Toggle on target LED_RED */

#define LED2_GREEN_INIT(output)                                   \
    GPIO_WritePinOutput(BOARD_LED2_GREEN_GPIO, BOARD_LED2_GREEN_GPIO_PIN, output);\
    BOARD_LED2_GREEN_GPIO->PDDR |= (1U << BOARD_LED2_GREEN_GPIO_PIN)  /*!< Enable target LED_GREEN */
#define LED2_GREEN_ON() \
    GPIO_ClearPinsOutput(BOARD_LED2_GREEN_GPIO, 1U << BOARD_LED2_GREEN_GPIO_PIN) /*!< Turn on target LED_GREEN */
#define LED2_GREEN_OFF() \
    GPIO_SetPinsOutput(BOARD_LED2_GREEN_GPIO, 1U << BOARD_LED2_GREEN_GPIO_PIN) /*!< Turn off target LED_GREEN */
#define LED2_GREEN_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED2_GREEN_GPIO, 1U << BOARD_LED2_GREEN_GPIO_PIN) /*!< Toggle on target LED_GREEN */

#define LED2_BLUE_INIT(output)                                  \
    GPIO_WritePinOutput(BOARD_LED2_BLUE_GPIO, BOARD_LED2_BLUE_GPIO_PIN, output);\
    BOARD_LED2_BLUE_GPIO->PDDR |= (1U << BOARD_LED2_BLUE_GPIO_PIN)  /*!< Enable target LED_BLUE */
#define LED2_BLUE_ON() \
    GPIO_ClearPinsOutput(BOARD_LED2_BLUE_GPIO, 1U << BOARD_LED2_BLUE_GPIO_PIN) /*!< Turn on target LED_BLUE */
#define LED2_BLUE_OFF() \
    GPIO_SetPinsOutput(BOARD_LED2_BLUE_GPIO, 1U << BOARD_LED2_BLUE_GPIO_PIN) /*!< Turn off target LED_BLUE */
#define LED2_BLUE_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED2_BLUE_GPIO, 1U << BOARD_LED2_BLUE_GPIO_PIN) /*!< Toggle on target LED_BLUE */

/** LED3 FUNCTIONS **/
#define LED3RED_INIT(output)                                 \
    GPIO_WritePinOutput(BOARD_LED3_RED_GPIO, BOARD_LED3_RED_GPIO_PIN, output);\
    BOARD_LED3_RED_GPIO->PDDR |= (1U << BOARD_LED3_RED_GPIO_PIN)  /*!< Enable target LED_RED */
#define LED3_RED_ON() \
    GPIO_ClearPinsOutput(BOARD_LED3_RED_GPIO, 1U << BOARD_LED3_RED_GPIO_PIN) /*!< Turn on target LED_RED */
#define LED3_RED_OFF() \
    GPIO_SetPinsOutput(BOARD_LED3_RED_GPIO, 1U << BOARD_LED3_RED_GPIO_PIN) /*!< Turn off target LED_RED */
#define LED3_RED_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED3_RED_GPIO, 1U << BOARD_LED3_RED_GPIO_PIN) /*!< Toggle on target LED_RED */

#define LED3_GREEN_INIT(output)                                   \
    GPIO_WritePinOutput(BOARD_LED3_GREEN_GPIO, BOARD_LED3_GREEN_GPIO_PIN, output);\
    BOARD_LED3_GREEN_GPIO->PDDR |= (1U << BOARD_LED3_GREEN_GPIO_PIN)  /*!< Enable target LED_GREEN */
#define LED3_GREEN_ON() \
    GPIO_ClearPinsOutput(BOARD_LED3_GREEN_GPIO, 1U << BOARD_LED3_GREEN_GPIO_PIN) /*!< Turn on target LED_GREEN */
#define LED3_GREEN_OFF() \
    GPIO_SetPinsOutput(BOARD_LED3_GREEN_GPIO, 1U << BOARD_LED3_GREEN_GPIO_PIN) /*!< Turn off target LED_GREEN */
#define LED3_GREEN_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED3_GREEN_GPIO, 1U << BOARD_LED3_GREEN_GPIO_PIN) /*!< Toggle on target LED_GREEN */

#define LED3_BLUE_INIT(output)                                  \
    GPIO_WritePinOutput(BOARD_LED3_BLUE_GPIO, BOARD_LED3_BLUE_GPIO_PIN, output);\
    BOARD_LED3_BLUE_GPIO->PDDR |= (1U << BOARD_LED3_BLUE_GPIO_PIN)  /*!< Enable target LED_BLUE */
#define LED3_BLUE_ON() \
    GPIO_ClearPinsOutput(BOARD_LED3_BLUE_GPIO, 1U << BOARD_LED3_BLUE_GPIO_PIN) /*!< Turn on target LED_BLUE */
#define LED3_BLUE_OFF() \
    GPIO_SetPinsOutput(BOARD_LED3_BLUE_GPIO, 1U << BOARD_LED3_BLUE_GPIO_PIN) /*!< Turn off target LED_BLUE */
#define LED3_BLUE_TOGGLE() \
    GPIO_TogglePinsOutput(BOARD_LED3_BLUE_GPIO, 1U << BOARD_LED3_BLUE_GPIO_PIN) /*!< Toggle on target LED_BLUE */




#endif /* LEDS_H_ */









#endif /* SOURCES_LEDS_H_ */
