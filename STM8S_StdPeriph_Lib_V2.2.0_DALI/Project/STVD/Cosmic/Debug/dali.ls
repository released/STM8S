   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  71                     ; 46 void DALI_Interrupt(u8 address,u8 dataByte)
  71                     ; 47 {
  73                     	switch	.text
  74  0000               _DALI_Interrupt:
  78                     ; 48   dali_address = address; 		// read DALI forward address
  80  0000 9e            	ld	a,xh
  81  0001 b705          	ld	_dali_address,a
  82                     ; 49   dali_data = dataByte;		// read DALI forward data;
  84  0003 9f            	ld	a,xl
  85  0004 b704          	ld	_dali_data,a
  86                     ; 50   dali_receive_status = DALI_NEW_FRAME_RECEIVED;
  88  0006 35010003      	mov	_dali_receive_status,#1
  89                     ; 51 }
  92  000a 81            	ret	
 127                     ; 59 void DALI_Error(u8 code_val)
 127                     ; 60 {
 128                     	switch	.text
 129  000b               _DALI_Error:
 133                     ; 61   switch (code_val)
 135  000b 4a            	dec	a
 136  000c 2605          	jrne	L53
 139                     ; 63     case 1:  dali_error = DALI_INTERFACE_FAILURE_ERROR; break;
 141  000e 35010002      	mov	_dali_error,#1
 145  0012 81            	ret	
 146  0013               L53:
 147                     ; 64     default: dali_error = DALI_NO_ERROR; break;
 149  0013 3f02          	clr	_dali_error
 151                     ; 66 }
 154  0015 81            	ret	
 205                     ; 74 void DALI_Init(TDLightControlCallback LightControlFunction)
 205                     ; 75 {
 206                     	switch	.text
 207  0016               _DALI_Init:
 209  0016 89            	pushw	x
 210       00000000      OFST:	set	0
 213                     ; 77   DALI_PULLUP_PORT->ODR |= (1<<DALI_PULLUP_PIN); //high level
 215  0017 721a5005      	bset	20485,#5
 216                     ; 78   DALI_PULLUP_PORT->DDR |= (1<<DALI_PULLUP_PIN); //output mode
 218  001b 721a5007      	bset	20487,#5
 219                     ; 79   DALI_PULLUP_PORT->CR1 |= (1<<DALI_PULLUP_PIN); //push-pull
 221  001f 721a5008      	bset	20488,#5
 222                     ; 80   DALI_PULLUP_PORT->CR2 |= (1<<DALI_PULLUP_PIN); //slow slope
 224  0023 721a5009      	bset	20489,#5
 225                     ; 83   DALI_BUTTON_PORT->DDR &= ~(1<<DALI_BUTTON_PIN); //input mode
 227  0027 72195007      	bres	20487,#4
 228                     ; 84   DALI_BUTTON_PORT->ODR &= ~(1<<DALI_BUTTON_PIN); //low level
 230  002b 72195005      	bres	20485,#4
 231                     ; 85   DALI_BUTTON_PORT->CR1 |=  (1<<DALI_BUTTON_PIN); //pull-up
 233  002f 72185008      	bset	20488,#4
 234                     ; 86   DALI_BUTTON_PORT->CR2 &= ~(1<<DALI_BUTTON_PIN); //interrupt disable on pin
 236  0033 72195009      	bres	20489,#4
 237                     ; 89   dali_state = DALI_IDLE;
 239  0037 3f01          	clr	_dali_state
 240                     ; 90   dali_receive_status = DALI_READY_TO_RECEIVE;
 242  0039 3f03          	clr	_dali_receive_status
 243                     ; 93   Timer_Lite_Init();
 245  003b cd0000        	call	_Timer_Lite_Init
 247                     ; 94   EEPROM_Init();
 249  003e cd0000        	call	_EEPROM_Init
 251                     ; 95   DALIR_Init();
 253  0041 cd0000        	call	_DALIR_Init
 255                     ; 96   DALIP_Init(LightControlFunction);
 257  0044 1e01          	ldw	x,(OFST+1,sp)
 258  0046 cd0000        	call	_DALIP_Init
 260                     ; 97   DALIC_Init();
 262  0049 cd0000        	call	_DALIC_Init
 264                     ; 100   init_DALI(OUT_DALI_PORT, OUT_DALI_PIN, INVERT_OUT_DALI, IN_DALI_PORT, IN_DALI_PIN, INVERT_IN_DALI, DALI_Interrupt, DALI_Error, Lite_timer_Interrupt);
 266  004c ae0000        	ldw	x,#_Lite_timer_Interrupt
 267  004f 89            	pushw	x
 268  0050 ae000b        	ldw	x,#_DALI_Error
 269  0053 89            	pushw	x
 270  0054 ae0000        	ldw	x,#_DALI_Interrupt
 271  0057 89            	pushw	x
 272  0058 4b00          	push	#0
 273  005a 4b00          	push	#0
 274  005c ae5005        	ldw	x,#20485
 275  005f 89            	pushw	x
 276  0060 4b00          	push	#0
 277  0062 4b01          	push	#1
 278  0064 cd0000        	call	_init_DALI
 280  0067 5b0c          	addw	sp,#12
 281                     ; 101 }
 284  0069 85            	popw	x
 285  006a 81            	ret	
 309                     ; 109 u8 DALI_TimerStatus(void)
 309                     ; 110 {
 310                     	switch	.text
 311  006b               _DALI_TimerStatus:
 315                     ; 111   return lite_timer_IT_state;
 317  006b b600          	ld	a,_lite_timer_IT_state
 320  006d 81            	ret	
 323                     	bsct
 324  0000               L111_TimerActive:
 325  0000 00            	dc.b	0
 360                     ; 120 u8 DALI_CheckAndExecuteTimer(void)
 360                     ; 121 {
 361                     	switch	.text
 362  006e               _DALI_CheckAndExecuteTimer:
 366                     ; 124   if(lite_timer_IT_state==1) //set every 1 ms by timer
 368  006e b600          	ld	a,_lite_timer_IT_state
 369  0070 4a            	dec	a
 370  0071 2605          	jrne	L131
 371                     ; 126     TimerActive = Process_Lite_timer_IT(); //manage fade effects each 1ms (fade time and fade rate)
 373  0073 cd0000        	call	_Process_Lite_timer_IT
 375  0076 b700          	ld	L111_TimerActive,a
 376  0078               L131:
 377                     ; 128   return TimerActive;
 379  0078 b600          	ld	a,L111_TimerActive
 382  007a 81            	ret	
 411                     ; 137 u8 DALI_CheckAndExecuteReceivedCommand(void)
 411                     ; 138 {
 412                     	switch	.text
 413  007b               _DALI_CheckAndExecuteReceivedCommand:
 417                     ; 140   if(dali_receive_status == DALI_NEW_FRAME_RECEIVED)
 419  007b b603          	ld	a,_dali_receive_status
 420  007d 4a            	dec	a
 421  007e 2610          	jrne	L341
 422                     ; 142     if (DALIC_isTalkingToMe())
 424  0080 cd0000        	call	_DALIC_isTalkingToMe
 426  0083 4d            	tnz	a
 427  0084 2708          	jreq	L541
 428                     ; 144       DALIC_ProcessCommand();
 430  0086 cd0000        	call	_DALIC_ProcessCommand
 432                     ; 145       dali_receive_status = DALI_READY_TO_RECEIVE;
 434  0089 3f03          	clr	_dali_receive_status
 435                     ; 146       return 1;
 437  008b a601          	ld	a,#1
 440  008d 81            	ret	
 441  008e               L541:
 442                     ; 148     dali_receive_status = DALI_READY_TO_RECEIVE;
 444  008e b703          	ld	_dali_receive_status,a
 445  0090               L341:
 446                     ; 152   if(dali_error == DALI_INTERFACE_FAILURE_ERROR)
 448  0090 b602          	ld	a,_dali_error
 449  0092 4a            	dec	a
 450  0093 2608          	jrne	L741
 451                     ; 155     DALIC_Process_System_Failure();
 453  0095 cd0000        	call	_DALIC_Process_System_Failure
 455                     ; 156     dali_error = DALI_NO_ERROR;
 457  0098 3f02          	clr	_dali_error
 458                     ; 157     return 2;
 460  009a a602          	ld	a,#2
 463  009c 81            	ret	
 464  009d               L741:
 465                     ; 160   return 0;
 467  009d 4f            	clr	a
 470  009e 81            	ret	
 498                     ; 169 void DALI_halt(void)
 498                     ; 170 {
 499                     	switch	.text
 500  009f               _DALI_halt:
 504                     ; 171   sim(); //disable interrupts (to not start receiving)
 507  009f 9b            	sim	
 509                     ; 172   if ((dali_receive_status != DALI_NEW_FRAME_RECEIVED) && (get_flag() == NO_ACTION) )  //if DALI frame receiving in progress
 512  00a0 b603          	ld	a,_dali_receive_status
 513  00a2 4a            	dec	a
 514  00a3 2707          	jreq	L161
 516  00a5 cd0000        	call	_get_flag
 518  00a8 4d            	tnz	a
 519  00a9 2601          	jrne	L161
 520                     ; 174     halt();
 523  00ab 8e            	halt	
 526  00ac               L161:
 527                     ; 176   rim(); //enable interrupts
 530  00ac 9a            	rim	
 532                     ; 177 }
 536  00ad 81            	ret	
 572                     ; 190 void Send_DALI_Frame(u8 data_val)
 572                     ; 191 {
 573                     	switch	.text
 574  00ae               _Send_DALI_Frame:
 578                     ; 192   send_data(data_val);
 580  00ae cd0000        	call	_send_data
 582                     ; 193   dali_state = DALI_SEND_START;
 584  00b1 35010001      	mov	_dali_state,#1
 585                     ; 194 }
 588  00b5 81            	ret	
 591                     	switch	.ubsct
 592  0000               L102_RandomCounter:
 593  0000 00            	ds.b	1
 635                     ; 205 u8 Get_DALI_Random(void)
 635                     ; 206 {
 636                     	switch	.text
 637  00b6               _Get_DALI_Random:
 639  00b6 88            	push	a
 640       00000001      OFST:	set	1
 643                     ; 210   RandomCounter ++;
 645  00b7 3c00          	inc	L102_RandomCounter
 646                     ; 211   TimerCount = get_timer_count();
 648  00b9 cd0000        	call	_get_timer_count
 650  00bc 6b01          	ld	(OFST+0,sp),a
 651                     ; 212   switch (RandomCounter & 0x03)
 653  00be b600          	ld	a,L102_RandomCounter
 654  00c0 a403          	and	a,#3
 656                     ; 217     default: return ((TimerCount     )^(RandomCounter)); break;
 658  00c2 270d          	jreq	L302
 659  00c4 4a            	dec	a
 660  00c5 270f          	jreq	L502
 661  00c7 4a            	dec	a
 662  00c8 2712          	jreq	L702
 666  00ca 7b01          	ld	a,(OFST+0,sp)
 667  00cc b800          	xor	a,L102_RandomCounter
 670  00ce 5b01          	addw	sp,#1
 671  00d0 81            	ret	
 672  00d1               L302:
 673                     ; 214     case 0:  return (TimerCount); break;
 675  00d1 7b01          	ld	a,(OFST+0,sp)
 678  00d3 5b01          	addw	sp,#1
 679  00d5 81            	ret	
 680  00d6               L502:
 681                     ; 215     case 1:  return (~TimerCount); break;
 684  00d6 7b01          	ld	a,(OFST+0,sp)
 685  00d8 43            	cpl	a
 688  00d9 5b01          	addw	sp,#1
 689  00db 81            	ret	
 690  00dc               L702:
 691                     ; 216     case 2:  return ((TimerCount >> 1)^(TimerCount   )); break;
 694  00dc 7b01          	ld	a,(OFST+0,sp)
 695  00de 44            	srl	a
 696  00df 1801          	xor	a,(OFST+0,sp)
 699  00e1 5b01          	addw	sp,#1
 700  00e3 81            	ret	
 701                     ; 219 }
 739                     ; 230 void DALI_Set_Lamp_Failure(u8 failure)
 739                     ; 231 {
 740                     	switch	.text
 741  00e4               _DALI_Set_Lamp_Failure:
 745                     ; 232   DALIP_SetLampFailureFlag(failure);
 748                     ; 233 }
 751  00e4 cc0000        	jp	_DALIP_SetLampFailureFlag
 812                     	xdef	_DALI_Error
 813                     	xdef	_DALI_Interrupt
 814                     	xref	_EEPROM_Init
 815                     	xref	_DALIR_Init
 816                     	xref	_DALIP_SetLampFailureFlag
 817                     	xref	_DALIP_Init
 818                     	xref	_DALIC_Process_System_Failure
 819                     	xref	_DALIC_ProcessCommand
 820                     	xref	_DALIC_isTalkingToMe
 821                     	xref	_DALIC_Init
 822                     	xref	_Lite_timer_Interrupt
 823                     	xref	_Process_Lite_timer_IT
 824                     	xref	_Timer_Lite_Init
 825                     	xref.b	_lite_timer_IT_state
 826                     	xref	_get_timer_count
 827                     	xref	_send_data
 828                     	xref	_get_flag
 829                     	xref	_init_DALI
 830                     	xdef	_Get_DALI_Random
 831                     	xdef	_Send_DALI_Frame
 832                     	xdef	_DALI_Set_Lamp_Failure
 833                     	xdef	_DALI_halt
 834                     	xdef	_DALI_CheckAndExecuteReceivedCommand
 835                     	xdef	_DALI_CheckAndExecuteTimer
 836                     	xdef	_DALI_TimerStatus
 837                     	xdef	_DALI_Init
 838                     	switch	.ubsct
 839  0001               _dali_state:
 840  0001 00            	ds.b	1
 841                     	xdef	_dali_state
 842  0002               _dali_error:
 843  0002 00            	ds.b	1
 844                     	xdef	_dali_error
 845  0003               _dali_receive_status:
 846  0003 00            	ds.b	1
 847                     	xdef	_dali_receive_status
 848  0004               _dali_data:
 849  0004 00            	ds.b	1
 850                     	xdef	_dali_data
 851  0005               _dali_address:
 852  0005 00            	ds.b	1
 853                     	xdef	_dali_address
 873                     	end
