/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2023 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */


#include <stdint.h>
#include "main.h"
#include "RCC_Interface.h"
#include "GPIO_Interface.h"

#define RED1LEDPort		PORTA
#define RED1LEDPin		PIN1

#define GreenLEDPort	PORTC
#define GreenLEDPin		PIN15

const short x = 1;
short y;
int main(void)
{

	RCC_APB2EnableClk(IOPA);
	RCC_APB2EnableClk(IOPC);
	GPIO_u8PinInit(RED1LEDPort	,RED1LEDPin	 ,GPO_PUSH_PULL_02_MHZ);
	GPIO_u8PinInit(GreenLEDPort	,GreenLEDPin	 ,GPO_PUSH_PULL_02_MHZ);

	GPIO_u8setpinValue(RED1LEDPort,RED1LEDPin,PIN_HIGH );
	for(int i =0 ; i <1000000;i++)
	{
		;
	}
	GPIO_u8setpinValue(GreenLEDPort,GreenLEDPin,PIN_HIGH );
	for(;;)
	{
	}
}

void MemManage_Handler(void)
{
    
}