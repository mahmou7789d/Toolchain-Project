/*
 * main.h
 *
 *  Created on: Dec 25, 2023
 *      Author: MahmoudSaad
 */

#ifndef MAIN_H_
#define MAIN_H_

#define SIZE_TASK_STACK  1024u //1Kbyte = 1024 Byte
#define SIZE_SCHED_STACK 1024U


#define SRAM_START 0X20000000
//size of SRAM depend on your microcontroller

#define SIZE_SRAM  (20*1024)  //for bluepill
//#define SIZE_SRAM  (128*1024)  //for Nucleo

#define SRAM_END ((SRAM_START)+(SIZE_SRAM))





void Task1_Hander();
void Task2_Hander();
void Task3_Hander();
void Task4_Hander();


#endif /* MAIN_H_ */
