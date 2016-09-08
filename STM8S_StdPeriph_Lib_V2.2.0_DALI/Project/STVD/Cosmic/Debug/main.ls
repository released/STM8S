   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  20                     .const:	section	.text
  21  0000               _version:
  22  0000 44414c496279  	dc.b	"DALIbySTM8DALI T",0
  23  0011 000000        	ds.b	3
  24  0014 56657273696f  	dc.b	"Version V5.0",0
  25  0021 000000000000  	ds.b	7
  26  0028 286329323031  	dc.b	"(c)2010 by ST   ",0
  27  0039 000000        	ds.b	3
  68                     ; 78 void PWM_LED(u16 lightlevel)
  68                     ; 79 {
  70                     	switch	.text
  71  0000               _PWM_LED:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 85   LED_PORT->DDR |= 1<<LED_PIN; // output mode
  79  0001 72105011      	bset	20497,#0
  80                     ; 86   LED_PORT->CR1 |= 1<<LED_PIN; // push-pull
  82  0005 72105012      	bset	20498,#0
  83                     ; 88   TIM3->PSCR  = 0;             // prescaller to 1
  85  0009 725f532a      	clr	21290
  86                     ; 89   TIM3->CCMR2 = TIM3_OCMODE_PWM2;//0x60;          // PWM mode1
  88  000d 35705326      	mov	21286,#112
  89                     ; 90   TIM3->CCER1 = 0x30;          // enable OC2 output pin (TIM3_CH2), polarity active low (LED from Vdd)
  91  0011 35305327      	mov	21287,#48
  92                     ; 91   TIM3->ARRH  = 0xFF;          // PWM period to 0xFFFF cycles  - #ifdef USE_ARC_TABLE is enabled in "dali_config.h"
  94  0015 35ff532b      	mov	21291,#255
  95                     ; 92   TIM3->ARRL  = 0xFF;
  97  0019 35ff532c      	mov	21292,#255
  98                     ; 93   TIM3->CCR2H = lightlevel >>   8;          // duty cycle is light level - #ifdef USE_ARC_TABLE is enabled in "dali_config.h"
 100  001d 9e            	ld	a,xh
 101  001e c7532f        	ld	21295,a
 102                     ; 94   TIM3->CCR2L = lightlevel & 0xFF;
 104  0021 9f            	ld	a,xl
 105  0022 c75330        	ld	21296,a
 106                     ; 95   TIM3->CR1  |= TIM3_CR1_CEN;  // enable PWM counter
 108  0025 72105320      	bset	21280,#0
 109                     ; 97   LEDlight = lightlevel;       // store current light level to global variable (for entering into halt if zero)
 111  0029 7b02          	ld	a,(OFST+2,sp)
 112  002b b702          	ld	_LEDlight,a
 113                     ; 98 }
 116  002d 85            	popw	x
 117  002e 81            	ret	
 173                     ; 102 void main(void)
 173                     ; 103 {
 174                     	switch	.text
 175  002f               _main:
 177  002f 89            	pushw	x
 178       00000002      OFST:	set	2
 181                     ; 106   u8 s = 0;
 183                     ; 107   s=version[s][s];
 185                     ; 108   t=s;
 187  0030 a644          	ld	a,#68
 188  0032 6b01          	ld	(OFST-1,sp),a
 189                     ; 111   DALI_Init(PWM_LED);
 191  0034 ae0000        	ldw	x,#_PWM_LED
 192  0037 cd0000        	call	_DALI_Init
 194                     ; 115   HALTtimer = LOW_POWER_TIMEOUT;
 196  003a ae07d0        	ldw	x,#2000
 197  003d bf00          	ldw	_HALTtimer,x
 198                     ; 116   LEDlight = 0;
 200  003f 3f02          	clr	_LEDlight
 201  0041               L15:
 202                     ; 123     if (DALI_TimerStatus()) // must be checked at least each 1ms
 204  0041 cd0000        	call	_DALI_TimerStatus
 206  0044 4d            	tnz	a
 207  0045 2712          	jreq	L55
 208                     ; 125       if (HALTtimer) // countdown timeout if no activity in timer
 210  0047 be00          	ldw	x,_HALTtimer
 211  0049 2703          	jreq	L75
 212                     ; 126         HALTtimer--;
 214  004b 5a            	decw	x
 215  004c bf00          	ldw	_HALTtimer,x
 216  004e               L75:
 217                     ; 127       if (DALI_CheckAndExecuteTimer())  // need to call this function under 1ms interval periodically (fading function)
 219  004e cd0000        	call	_DALI_CheckAndExecuteTimer
 221  0051 4d            	tnz	a
 222  0052 2705          	jreq	L55
 223                     ; 128         HALTtimer = LOW_POWER_TIMEOUT;  // restart 10seconds timeout if some activity in timer
 225  0054 ae07d0        	ldw	x,#2000
 226  0057 bf00          	ldw	_HALTtimer,x
 227  0059               L55:
 228                     ; 131     if (DALI_CheckAndExecuteReceivedCommand()) //need to call this function periodically (receive and process DALI command)
 230  0059 cd0000        	call	_DALI_CheckAndExecuteReceivedCommand
 232  005c 4d            	tnz	a
 233  005d 2711          	jreq	L36
 234                     ; 133       HALTtimer = LOW_POWER_TIMEOUT;    // restart 10seconds timeout if received and executed command
 236  005f ae07d0        	ldw	x,#2000
 237  0062 bf00          	ldw	_HALTtimer,x
 238                     ; 134       Physically_Selected = !(DALI_BUTTON_PORT->IDR & (1<<DALI_BUTTON_PIN));   // physical selection = pushbutton in GND
 240  0064 7208500604    	btjt	20486,#4,L02
 241  0069 a601          	ld	a,#1
 242  006b 2001          	jra	L22
 243  006d               L02:
 244  006d 4f            	clr	a
 245  006e               L22:
 246  006e b700          	ld	_Physically_Selected,a
 247  0070               L36:
 248                     ; 137     if (!HALTtimer) // go to power save state (WFI or HALT)
 250  0070 be00          	ldw	x,_HALTtimer
 251  0072 260f          	jrne	L56
 252                     ; 139       if (LEDlight) // go to sleep or halt according light level (level "0" = power off = halt)
 254  0074 3d02          	tnz	_LEDlight
 255  0076 2703          	jreq	L76
 256                     ; 141         wfi();       // enable sleep only: PWM function requires continuous run and/or interrupts
 259  0078 8f            	wfi	
 263  0079 2008          	jra	L56
 264  007b               L76:
 265                     ; 145         DALI_halt();     // enable halt: PWM function is off - not requires continuous run and/or not uses interrupts
 267  007b cd0000        	call	_DALI_halt
 269                     ; 146         HALTtimer = 600; // wake-up = DALI bus changed - command is receiving, 600ms to receive command and check bus errors
 271  007e ae0258        	ldw	x,#600
 272  0081 bf00          	ldw	_HALTtimer,x
 273  0083               L56:
 274                     ; 150     if (!(TIM3->CR1 & TIM3_CR1_CEN))   // if PWM counter is not running (hardware error)
 276  0083 7200532004    	btjt	21280,#0,L37
 277                     ; 151       DALI_Set_Lamp_Failure(1);        // set Lamp failure
 279  0088 a601          	ld	a,#1
 282  008a 2001          	jp	LC001
 283  008c               L37:
 284                     ; 153       DALI_Set_Lamp_Failure(0);        // reset Lamp failure
 286  008c 4f            	clr	a
 287  008d               LC001:
 288  008d cd0000        	call	_DALI_Set_Lamp_Failure
 290  0090 20af          	jra	L15
 325                     ; 168 void assert_failed(uint8_t* file, uint32_t line)
 325                     ; 169 { 
 326                     	switch	.text
 327  0092               _assert_failed:
 331  0092               L511:
 332  0092 20fe          	jra	L511
 376                     	xdef	_main
 377                     	xdef	_PWM_LED
 378                     	switch	.ubsct
 379  0000               _HALTtimer:
 380  0000 0000          	ds.b	2
 381                     	xdef	_HALTtimer
 382  0002               _LEDlight:
 383  0002 00            	ds.b	1
 384                     	xdef	_LEDlight
 385                     	xdef	_version
 386                     	xref	_DALI_Set_Lamp_Failure
 387                     	xref	_DALI_halt
 388                     	xref	_DALI_CheckAndExecuteReceivedCommand
 389                     	xref	_DALI_CheckAndExecuteTimer
 390                     	xref	_DALI_TimerStatus
 391                     	xref	_DALI_Init
 392                     	xref.b	_Physically_Selected
 393                     	xdef	_assert_failed
 413                     	end
