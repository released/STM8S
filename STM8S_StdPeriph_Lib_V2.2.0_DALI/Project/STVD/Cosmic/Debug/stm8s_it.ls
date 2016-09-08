   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  49                     ; 49 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  49                     ; 50 {
  50                     	switch	.text
  51  0000               f_NonHandledInterrupt:
  55                     ; 54 }
  58  0000 80            	iret	
  80                     ; 62 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  80                     ; 63 {
  81                     	switch	.text
  82  0001               f_TRAP_IRQHandler:
  86                     ; 67 }
  89  0001 80            	iret	
 111                     ; 73 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 111                     ; 74 
 111                     ; 75 {
 112                     	switch	.text
 113  0002               f_TLI_IRQHandler:
 117                     ; 79 }
 120  0002 80            	iret	
 142                     ; 86 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 142                     ; 87 {
 143                     	switch	.text
 144  0003               f_AWU_IRQHandler:
 148                     ; 91 }
 151  0003 80            	iret	
 173                     ; 98 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 173                     ; 99 {
 174                     	switch	.text
 175  0004               f_CLK_IRQHandler:
 179                     ; 103 }
 182  0004 80            	iret	
 207                     ; 110 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 207                     ; 111 {
 208                     	switch	.text
 209  0005               f_EXTI_PORTA_IRQHandler:
 211  0005 8a            	push	cc
 212  0006 84            	pop	a
 213  0007 a4bf          	and	a,#191
 214  0009 88            	push	a
 215  000a 86            	pop	cc
 216  000b 3b0002        	push	c_x+2
 217  000e be00          	ldw	x,c_x
 218  0010 89            	pushw	x
 219  0011 3b0002        	push	c_y+2
 220  0014 be00          	ldw	x,c_y
 221  0016 89            	pushw	x
 224                     ; 115 	if(DALIIN_port == GPIOA)
 226  0017 be00          	ldw	x,_DALIIN_port
 227  0019 a35000        	cpw	x,#20480
 228  001c 2603          	jrne	L17
 229                     ; 117 		receive_data();
 231  001e cd0000        	call	_receive_data
 233  0021               L17:
 234                     ; 119 }
 237  0021 85            	popw	x
 238  0022 bf00          	ldw	c_y,x
 239  0024 320002        	pop	c_y+2
 240  0027 85            	popw	x
 241  0028 bf00          	ldw	c_x,x
 242  002a 320002        	pop	c_x+2
 243  002d 80            	iret	
 268                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 268                     ; 128 {
 269                     	switch	.text
 270  002e               f_EXTI_PORTB_IRQHandler:
 272  002e 8a            	push	cc
 273  002f 84            	pop	a
 274  0030 a4bf          	and	a,#191
 275  0032 88            	push	a
 276  0033 86            	pop	cc
 277  0034 3b0002        	push	c_x+2
 278  0037 be00          	ldw	x,c_x
 279  0039 89            	pushw	x
 280  003a 3b0002        	push	c_y+2
 281  003d be00          	ldw	x,c_y
 282  003f 89            	pushw	x
 285                     ; 132   if(DALIIN_port == GPIOB)
 287  0040 be00          	ldw	x,_DALIIN_port
 288  0042 a35005        	cpw	x,#20485
 289  0045 2603          	jrne	L301
 290                     ; 134 		receive_data();
 292  0047 cd0000        	call	_receive_data
 294  004a               L301:
 295                     ; 136 }
 298  004a 85            	popw	x
 299  004b bf00          	ldw	c_y,x
 300  004d 320002        	pop	c_y+2
 301  0050 85            	popw	x
 302  0051 bf00          	ldw	c_x,x
 303  0053 320002        	pop	c_x+2
 304  0056 80            	iret	
 329                     ; 143 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 329                     ; 144 {
 330                     	switch	.text
 331  0057               f_EXTI_PORTC_IRQHandler:
 333  0057 8a            	push	cc
 334  0058 84            	pop	a
 335  0059 a4bf          	and	a,#191
 336  005b 88            	push	a
 337  005c 86            	pop	cc
 338  005d 3b0002        	push	c_x+2
 339  0060 be00          	ldw	x,c_x
 340  0062 89            	pushw	x
 341  0063 3b0002        	push	c_y+2
 342  0066 be00          	ldw	x,c_y
 343  0068 89            	pushw	x
 346                     ; 148   if(DALIIN_port == GPIOC)
 348  0069 be00          	ldw	x,_DALIIN_port
 349  006b a3500a        	cpw	x,#20490
 350  006e 2603          	jrne	L511
 351                     ; 150 		receive_data();
 353  0070 cd0000        	call	_receive_data
 355  0073               L511:
 356                     ; 152 }
 359  0073 85            	popw	x
 360  0074 bf00          	ldw	c_y,x
 361  0076 320002        	pop	c_y+2
 362  0079 85            	popw	x
 363  007a bf00          	ldw	c_x,x
 364  007c 320002        	pop	c_x+2
 365  007f 80            	iret	
 390                     ; 159 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 390                     ; 160 {
 391                     	switch	.text
 392  0080               f_EXTI_PORTD_IRQHandler:
 394  0080 8a            	push	cc
 395  0081 84            	pop	a
 396  0082 a4bf          	and	a,#191
 397  0084 88            	push	a
 398  0085 86            	pop	cc
 399  0086 3b0002        	push	c_x+2
 400  0089 be00          	ldw	x,c_x
 401  008b 89            	pushw	x
 402  008c 3b0002        	push	c_y+2
 403  008f be00          	ldw	x,c_y
 404  0091 89            	pushw	x
 407                     ; 164   if(DALIIN_port == GPIOD)
 409  0092 be00          	ldw	x,_DALIIN_port
 410  0094 a3500f        	cpw	x,#20495
 411  0097 2603          	jrne	L721
 412                     ; 166 		receive_data();
 414  0099 cd0000        	call	_receive_data
 416  009c               L721:
 417                     ; 168 }
 420  009c 85            	popw	x
 421  009d bf00          	ldw	c_y,x
 422  009f 320002        	pop	c_y+2
 423  00a2 85            	popw	x
 424  00a3 bf00          	ldw	c_x,x
 425  00a5 320002        	pop	c_x+2
 426  00a8 80            	iret	
 451                     ; 175 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 451                     ; 176 {
 452                     	switch	.text
 453  00a9               f_EXTI_PORTE_IRQHandler:
 455  00a9 8a            	push	cc
 456  00aa 84            	pop	a
 457  00ab a4bf          	and	a,#191
 458  00ad 88            	push	a
 459  00ae 86            	pop	cc
 460  00af 3b0002        	push	c_x+2
 461  00b2 be00          	ldw	x,c_x
 462  00b4 89            	pushw	x
 463  00b5 3b0002        	push	c_y+2
 464  00b8 be00          	ldw	x,c_y
 465  00ba 89            	pushw	x
 468                     ; 180   if(DALIIN_port == GPIOE)
 470  00bb be00          	ldw	x,_DALIIN_port
 471  00bd a35014        	cpw	x,#20500
 472  00c0 2603          	jrne	L141
 473                     ; 182 		receive_data();
 475  00c2 cd0000        	call	_receive_data
 477  00c5               L141:
 478                     ; 184 }
 481  00c5 85            	popw	x
 482  00c6 bf00          	ldw	c_y,x
 483  00c8 320002        	pop	c_y+2
 484  00cb 85            	popw	x
 485  00cc bf00          	ldw	c_x,x
 486  00ce 320002        	pop	c_x+2
 487  00d1 80            	iret	
 509                     ; 230 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 509                     ; 231 {
 510                     	switch	.text
 511  00d2               f_SPI_IRQHandler:
 515                     ; 235 }
 518  00d2 80            	iret	
 541                     ; 242 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 541                     ; 243 {
 542                     	switch	.text
 543  00d3               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 547                     ; 247 }
 550  00d3 80            	iret	
 573                     ; 254 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 573                     ; 255 {
 574                     	switch	.text
 575  00d4               f_TIM1_CAP_COM_IRQHandler:
 579                     ; 259 }
 582  00d4 80            	iret	
 605                     ; 291  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 605                     ; 292  {
 606                     	switch	.text
 607  00d5               f_TIM2_UPD_OVF_BRK_IRQHandler:
 611                     ; 296  }
 614  00d5 80            	iret	
 637                     ; 303  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 637                     ; 304  {
 638                     	switch	.text
 639  00d6               f_TIM2_CAP_COM_IRQHandler:
 643                     ; 308  }
 646  00d6 80            	iret	
 669                     ; 318  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 669                     ; 319  {
 670                     	switch	.text
 671  00d7               f_TIM3_UPD_OVF_BRK_IRQHandler:
 675                     ; 323  }
 678  00d7 80            	iret	
 701                     ; 330  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 701                     ; 331  {
 702                     	switch	.text
 703  00d8               f_TIM3_CAP_COM_IRQHandler:
 707                     ; 335  }
 710  00d8 80            	iret	
 732                     ; 370 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 732                     ; 371 {
 733                     	switch	.text
 734  00d9               f_I2C_IRQHandler:
 738                     ; 375 }
 741  00d9 80            	iret	
 764                     ; 383  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 764                     ; 384  {
 765                     	switch	.text
 766  00da               f_UART2_TX_IRQHandler:
 770                     ; 388  }
 773  00da 80            	iret	
 796                     ; 395  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 796                     ; 396  {
 797                     	switch	.text
 798  00db               f_UART2_RX_IRQHandler:
 802                     ; 400  }
 805  00db 80            	iret	
 827                     ; 449  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 827                     ; 450  {
 828                     	switch	.text
 829  00dc               f_ADC1_IRQHandler:
 833                     ; 454  }
 836  00dc 80            	iret	
 866                     .const:	section	.text
 867  0000               L27:
 868  0000 000003e8      	dc.l	1000
 869                     ; 475  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 869                     ; 476  {
 870                     	switch	.text
 871  00dd               f_TIM4_UPD_OVF_IRQHandler:
 873  00dd 8a            	push	cc
 874  00de 84            	pop	a
 875  00df a4bf          	and	a,#191
 876  00e1 88            	push	a
 877  00e2 86            	pop	cc
 878  00e3 3b0002        	push	c_x+2
 879  00e6 be00          	ldw	x,c_x
 880  00e8 89            	pushw	x
 881  00e9 3b0002        	push	c_y+2
 882  00ec be00          	ldw	x,c_y
 883  00ee 89            	pushw	x
 884  00ef be02          	ldw	x,c_lreg+2
 885  00f1 89            	pushw	x
 886  00f2 be00          	ldw	x,c_lreg
 887  00f4 89            	pushw	x
 890                     ; 480   TIM4->SR1 &= ~0x01; //clear TIM4_IT_UPDATE;
 892  00f5 72115342      	bres	21314,#0
 893                     ; 482   oneMScounter += US_PER_TICK;
 895  00f9 be00          	ldw	x,_oneMScounter
 896  00fb 1c0068        	addw	x,#104
 897  00fe bf00          	ldw	_oneMScounter,x
 898                     ; 483   if (oneMScounter >= US_PER_MS)
 900  0100 be00          	ldw	x,_oneMScounter
 901  0102 cd0000        	call	c_uitolx
 903  0105 ae0000        	ldw	x,#L27
 904  0108 cd0000        	call	c_lcmp
 906  010b 2f0a          	jrslt	L303
 907                     ; 485     oneMScounter -= US_PER_MS;
 909  010d be00          	ldw	x,_oneMScounter
 910  010f 1d03e8        	subw	x,#1000
 911  0112 bf00          	ldw	_oneMScounter,x
 912                     ; 486     RTC_1ms_Callback();
 914  0114 92cd00        	call	[_RTC_1ms_Callback.w]
 916  0117               L303:
 917                     ; 489   if(get_flag()==RECEIVING_DATA)
 919  0117 cd0000        	call	_get_flag
 921  011a a102          	cp	a,#2
 922  011c 2605          	jrne	L503
 923                     ; 491     receive_tick();
 925  011e cd0000        	call	_receive_tick
 928  0121 2017          	jra	L703
 929  0123               L503:
 930                     ; 492   }else if(get_flag()==SENDING_DATA)
 932  0123 cd0000        	call	_get_flag
 934  0126 4a            	dec	a
 935  0127 2605          	jrne	L113
 936                     ; 494     send_tick();
 938  0129 cd0000        	call	_send_tick
 941  012c 200c          	jra	L703
 942  012e               L113:
 943                     ; 495   }else if(get_flag()==NO_ACTION)
 945  012e cd0000        	call	_get_flag
 947  0131 4d            	tnz	a
 948  0132 2606          	jrne	L703
 949                     ; 497     count_answer_tick(); //count ticks from last receive
 951  0134 cd0000        	call	_count_answer_tick
 953                     ; 498     check_interface_failure(); //check idle voltage on bus
 955  0137 cd0000        	call	_check_interface_failure
 957  013a               L703:
 958                     ; 500  }
 961  013a 85            	popw	x
 962  013b bf00          	ldw	c_lreg,x
 963  013d 85            	popw	x
 964  013e bf02          	ldw	c_lreg+2,x
 965  0140 85            	popw	x
 966  0141 bf00          	ldw	c_y,x
 967  0143 320002        	pop	c_y+2
 968  0146 85            	popw	x
 969  0147 bf00          	ldw	c_x,x
 970  0149 320002        	pop	c_x+2
 971  014c 80            	iret	
 994                     ; 508 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 994                     ; 509 {
 995                     	switch	.text
 996  014d               f_EEPROM_EEC_IRQHandler:
1000                     ; 513 }
1003  014d 80            	iret	
1026                     	xref.b	_RTC_1ms_Callback
1027                     	xref.b	_DALIIN_port
1028                     	xref	_check_interface_failure
1029                     	xref	_count_answer_tick
1030                     	xref	_send_tick
1031                     	xref	_get_flag
1032                     	xref	_receive_tick
1033                     	xref	_receive_data
1034                     	xdef	f_EEPROM_EEC_IRQHandler
1035                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1036                     	xdef	f_ADC1_IRQHandler
1037                     	xdef	f_UART2_TX_IRQHandler
1038                     	xdef	f_UART2_RX_IRQHandler
1039                     	xdef	f_I2C_IRQHandler
1040                     	xdef	f_TIM3_CAP_COM_IRQHandler
1041                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
1042                     	xdef	f_TIM2_CAP_COM_IRQHandler
1043                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1044                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1045                     	xdef	f_TIM1_CAP_COM_IRQHandler
1046                     	xdef	f_SPI_IRQHandler
1047                     	xdef	f_EXTI_PORTE_IRQHandler
1048                     	xdef	f_EXTI_PORTD_IRQHandler
1049                     	xdef	f_EXTI_PORTC_IRQHandler
1050                     	xdef	f_EXTI_PORTB_IRQHandler
1051                     	xdef	f_EXTI_PORTA_IRQHandler
1052                     	xdef	f_CLK_IRQHandler
1053                     	xdef	f_AWU_IRQHandler
1054                     	xdef	f_TLI_IRQHandler
1055                     	xdef	f_TRAP_IRQHandler
1056                     	xdef	f_NonHandledInterrupt
1057                     	switch	.ubsct
1058  0000               _oneMScounter:
1059  0000 0000          	ds.b	2
1060                     	xdef	_oneMScounter
1061                     	xref.b	c_lreg
1062                     	xref.b	c_x
1063                     	xref.b	c_y
1083                     	xref	c_lcmp
1084                     	xref	c_uitolx
1085                     	end
