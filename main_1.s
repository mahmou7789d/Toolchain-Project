
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

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	4128203a 			@ <UNDEFINED> instruction: 0x4128203a
   8:	47206d72 			@ <UNDEFINED> instruction: 0x47206d72
   c:	5420554e 	strtpl	r5, [r0], #-1358	@ 0xfffffab2
  10:	636c6f6f 	cmnvs	ip, #444	@ 0x1bc
  14:	6e696168 	powvsez	f6, f1, #0.0
  18:	2e323120 	rsfcssp	f3, f2, f0
  1c:	65522e33 	ldrbvs	r2, [r2, #-3635]	@ 0xfffff1cd
  20:	2820316c 	stmdacs	r0!, {r2, r3, r5, r6, r8, ip, sp}
  24:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	@ 0xfffffef8
  28:	72612064 	rsbvc	r2, r1, #100	@ 0x64
  2c:	32312d6d 	eorscc	r2, r1, #6976	@ 0x1b40
  30:	2935332e 	ldmdbcs	r5!, {r1, r2, r3, r5, r8, r9, ip, sp}
  34:	32312029 	eorscc	r2, r1, #41	@ 0x29
  38:	312e332e 			@ <UNDEFINED> instruction: 0x312e332e
  3c:	32303220 	eorscc	r3, r0, #32, 4
  40:	32363033 	eorscc	r3, r6, #51	@ 0x33
  44:	Address 0x44 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	4d2d3705 	stcmi	7, cr3, [sp, #-20]!	@ 0xffffffec
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	1202094d 	andne	r0, r2, #1261568	@ 0x134000
  1c:	15011404 	strne	r1, [r1, #-1028]	@ 0xfffffbfc
  20:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  24:	1a011901 	bne	46430 <main+0x46430>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x2c is out of bounds.

