.global _start
_start: b reset
	ldr pc, _hang
	ldr pc, _hang
	ldr pc, _hang
	ldr pc, _hang
	ldr pc, _hang
	ldr pc, _hang
	ldr pc, _hang

_hang:
	.word do_hang
	.word 0x12345678
	.word 0x12345678
	.word 0x12345678
	.word 0x12345678
	.word 0x12345678
	.word 0x12345678
	.word 0x12345678

reset:
	/**************/
	/* 1. init hw */
	/**************/
	/* 1.1 init cpu to SVC32 mode */
	mrs r0, cpsr
	bic r0,r0,#0x1f
	orr r0,r0,#0xd3
	msr cpsr,r0

	/* 1.2 init mem */

	/* 1.3 init storage */

	/*************************/
	/* 2. setup c envirement */
	/*************************/
