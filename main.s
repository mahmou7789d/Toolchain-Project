
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b580      	push	{r7, lr}
   2:	af00      	add	r7, sp, #0
   4:	2002      	movs	r0, #2
   6:	f7ff fffe 	bl	0 <RCC_APB2EnableClk>
   a:	2202      	movs	r2, #2
   c:	2101      	movs	r1, #1
   e:	2000      	movs	r0, #0
  10:	f7ff fffe 	bl	0 <GPIO_u8PinInit>
  14:	f383 8808 	msr	MSP, r3
  18:	2201      	movs	r2, #1
  1a:	2101      	movs	r1, #1
  1c:	2000      	movs	r0, #0
  1e:	f7ff fffe 	bl	0 <GPIO_u8setpinValue>
  22:	e7fe      	b.n	22 <main+0x22>
