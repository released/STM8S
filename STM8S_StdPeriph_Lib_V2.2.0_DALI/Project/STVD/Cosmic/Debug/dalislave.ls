   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  20                     	bsct
  21  0000               _DALIOUT_port:
  22  0000 500f          	dc.w	20495
  23  0002               _DALIOUT_pin:
  24  0002 20            	dc.b	32
  25  0003               _DALIOUT_invert:
  26  0003 00            	dc.b	0
  27  0004               _DALIIN_port:
  28  0004 500f          	dc.w	20495
  29  0006               _DALIIN_pin:
  30  0006 40            	dc.b	64
  31  0007               _DALIIN_invert:
  32  0007 00            	dc.b	0
  33  0008               _DataReceivedCallback:
  35  0008 01e9          	dc.w	_DataReceived
  36  000a               _RTC_1ms_Callback:
  38  000a 01ea          	dc.w	_RTC1msFnc
  39  000c               _ErrorCallback:
  41  000c 01eb          	dc.w	_ErrorFnc
  78                     ; 67 void receive_data() {
  80                     	switch	.text
  81  0000               _receive_data:
  85                     ; 70   address = 0;
  87  0000 3f0a          	clr	_address
  88                     ; 71   dataByte = 0;
  90  0002 3f09          	clr	_dataByte
  91                     ; 72   bit_count = 0;
  93  0004 3f07          	clr	_bit_count
  94                     ; 73   tick_count = 0;
  96  0006 5f            	clrw	x
  97  0007 bf05          	ldw	_tick_count,x
  98                     ; 74   former_val = TRUE;
 100  0009 35010000      	mov	_former_val,#1
 101                     ; 77   flag = RECEIVING_DATA;
 103  000d 35020008      	mov	_flag,#2
 104                     ; 79   DALIIN_port->CR2 &= ~DALIIN_pin;
 106  0011 b606          	ld	a,_DALIIN_pin
 107  0013 be04          	ldw	x,_DALIIN_port
 108  0015 43            	cpl	a
 109  0016 e404          	and	a,(4,x)
 110  0018 e704          	ld	(4,x),a
 111                     ; 85 }
 114  001a 81            	ret	
 161                     ; 88 bool get_DALIIN(void) {
 162                     	switch	.text
 163  001b               _get_DALIIN:
 167                     ; 89   if (DALIIN_invert)
 169  001b b607          	ld	a,_DALIIN_invert
 170  001d 270d          	jreq	L14
 171                     ; 91     if(DALIIN_port->IDR & DALIIN_pin)
 173  001f be04          	ldw	x,_DALIIN_port
 174  0021 e601          	ld	a,(1,x)
 175  0023 b506          	bcp	a,_DALIIN_pin
 176  0025 2702          	jreq	L34
 177                     ; 92       return FALSE;
 179  0027 4f            	clr	a
 182  0028 81            	ret	
 183  0029               L34:
 184                     ; 94       return TRUE;
 186  0029 a601          	ld	a,#1
 189  002b 81            	ret	
 190  002c               L14:
 191                     ; 98     if(DALIIN_port->IDR & DALIIN_pin)
 193  002c be04          	ldw	x,_DALIIN_port
 194  002e e601          	ld	a,(1,x)
 195  0030 b506          	bcp	a,_DALIIN_pin
 196  0032 2703          	jreq	L15
 197                     ; 99       return TRUE;
 199  0034 a601          	ld	a,#1
 202  0036 81            	ret	
 203  0037               L15:
 204                     ; 101       return FALSE;
 206  0037 4f            	clr	a
 209  0038 81            	ret	
 243                     ; 106 void receive_tick() {
 244                     	switch	.text
 245  0039               _receive_tick:
 249                     ; 110   actual_val = get_DALIIN();
 251  0039 ade0          	call	_get_DALIIN
 253  003b b701          	ld	_actual_val,a
 254                     ; 111   tick_count++;
 256  003d be05          	ldw	x,_tick_count
 257  003f 5c            	incw	x
 258  0040 bf05          	ldw	_tick_count,x
 259                     ; 114   if(actual_val != former_val)
 261  0042 b100          	cp	a,_former_val
 262  0044 2758          	jreq	L501
 263                     ; 116     switch(bit_count) {
 265  0046 b607          	ld	a,_bit_count
 267                     ; 144       break;
 268  0048 272a          	jreq	L55
 269  004a a011          	sub	a,#17
 270  004c 2734          	jreq	L75
 271  004e 4a            	dec	a
 272  004f 276f          	jreq	LC002
 273                     ; 131       default:      // other bits
 273                     ; 132         if(tick_count > 6)
 275  0051 a30007        	cpw	x,#7
 276  0054 2403cc00df    	jrult	L521
 277                     ; 134           if(bit_count < 9) // store bit in address byte
 279  0059 b607          	ld	a,_bit_count
 280  005b a109          	cp	a,#9
 281  005d 242a          	jruge	L121
 282                     ; 136             address |= (actual_val << (8-bit_count));
 284  005f a608          	ld	a,#8
 285  0061 b007          	sub	a,_bit_count
 286  0063 5f            	clrw	x
 287  0064 97            	ld	xl,a
 288  0065 b601          	ld	a,_actual_val
 289  0067 5d            	tnzw	x
 290  0068 2704          	jreq	L41
 291  006a               L61:
 292  006a 48            	sll	a
 293  006b 5a            	decw	x
 294  006c 26fc          	jrne	L61
 295  006e               L41:
 296  006e ba0a          	or	a,_address
 297  0070 b70a          	ld	_address,a
 299  0072 2052          	jra	L731
 300  0074               L55:
 301                     ; 117       case 0:
 301                     ; 118         if (tick_count > 2)
 303  0074 a30003        	cpw	x,#3
 304  0077 2566          	jrult	L521
 305                     ; 120           tick_count = 0;
 307  0079 5f            	clrw	x
 308  007a bf05          	ldw	_tick_count,x
 309                     ; 121           bit_count  = 1; // start bit
 311  007c 35010007      	mov	_bit_count,#1
 312  0080 205d          	jra	L521
 313  0082               L75:
 314                     ; 124       case 17:      // 1st stop bit
 314                     ; 125         if(tick_count > 6) // stop bit error, no edge should exist
 316  0082 a30007        	cpw	x,#7
 317  0085 2558          	jrult	L521
 318                     ; 126           flag = ERR;
 319  0087 2037          	jp	LC002
 320                     ; 128       case 18:      // 2nd stop bit
 320                     ; 129         flag = ERR; // stop bit error, no edge should exist
 321                     ; 130       break;
 323  0089               L121:
 324                     ; 139             dataByte |= (actual_val << (16-bit_count));
 326  0089 a610          	ld	a,#16
 327  008b b007          	sub	a,_bit_count
 328  008d 5f            	clrw	x
 329  008e 97            	ld	xl,a
 330  008f b601          	ld	a,_actual_val
 331  0091 5d            	tnzw	x
 332  0092 2704          	jreq	L02
 333  0094               L22:
 334  0094 48            	sll	a
 335  0095 5a            	decw	x
 336  0096 26fc          	jrne	L22
 337  0098               L02:
 338  0098 ba09          	or	a,_dataByte
 339  009a b709          	ld	_dataByte,a
 340                     ; 141           bit_count++;
 341                     ; 142           tick_count = 0;
 342  009c 2028          	jp	L731
 343                     ; 144       break;
 344  009e               L501:
 345                     ; 148     switch(bit_count)
 347  009e b607          	ld	a,_bit_count
 349                     ; 185       break;
 350  00a0 270e          	jreq	L56
 351  00a2 a011          	sub	a,#17
 352  00a4 2711          	jreq	L76
 353  00a6 4a            	dec	a
 354  00a7 2724          	jreq	L17
 355                     ; 180       default: // normal bits
 355                     ; 181         if(tick_count==10)
 357  00a9 a3000a        	cpw	x,#10
 358  00ac 2631          	jrne	L521
 359                     ; 183             flag = ERR;
 360  00ae 2010          	jp	LC002
 361  00b0               L56:
 362                     ; 150       case 0:
 362                     ; 151         if(tick_count==8)  // too long start bit
 364  00b0 a30008        	cpw	x,#8
 365  00b3 262a          	jrne	L521
 366                     ; 152             flag = ERR;
 367  00b5 2009          	jp	LC002
 368  00b7               L76:
 369                     ; 154       case 17:
 369                     ; 155         // First stop bit
 369                     ; 156         if (tick_count==8)
 371  00b7 a30008        	cpw	x,#8
 372  00ba 2623          	jrne	L521
 373                     ; 158           if (actual_val==0) // wrong level of stop bit
 375  00bc b601          	ld	a,_actual_val
 376  00be 2606          	jrne	L731
 377                     ; 160             flag = ERR;
 379  00c0               LC002:
 384  00c0 35030008      	mov	_flag,#3
 386  00c4 2019          	jra	L521
 387  00c6               L731:
 388                     ; 164             bit_count++;
 390                     ; 165             tick_count = 0;
 393  00c6 3c07          	inc	_bit_count
 395  00c8 5f            	clrw	x
 396  00c9 bf05          	ldw	_tick_count,x
 397  00cb 2012          	jra	L521
 398  00cd               L17:
 399                     ; 169       case 18:
 399                     ; 170         // Second stop bit
 399                     ; 171         if (tick_count==10)
 401  00cd a3000a        	cpw	x,#10
 402  00d0 260d          	jrne	L521
 403                     ; 173           flag = NO_ACTION;
 405  00d2 b708          	ld	_flag,a
 406                     ; 174           tick_count = 0;
 408  00d4 ad17          	call	LC003
 409                     ; 177           DataReceivedCallback(address,dataByte);
 411  00d6 b609          	ld	a,_dataByte
 412  00d8 97            	ld	xl,a
 413  00d9 b60a          	ld	a,_address
 414  00db 95            	ld	xh,a
 415  00dc 92cd08        	call	[_DataReceivedCallback.w]
 417  00df               L521:
 418                     ; 188   former_val = actual_val;
 420  00df 450100        	mov	_former_val,_actual_val
 421                     ; 190   if(flag==ERR)
 423  00e2 b608          	ld	a,_flag
 424  00e4 a103          	cp	a,#3
 425  00e6 2604          	jrne	L741
 426                     ; 192     flag = NO_ACTION;
 428  00e8 3f08          	clr	_flag
 429                     ; 193     tick_count = 0;
 431  00ea ad01          	call	LC003
 432  00ec               L741:
 433                     ; 197   return;
 436  00ec 81            	ret	
 437  00ed               LC003:
 438  00ed 5f            	clrw	x
 439  00ee bf05          	ldw	_tick_count,x
 440                     ; 175           DALIIN_port->CR2 |= DALIIN_pin;//enable EXTI
 442  00f0 be04          	ldw	x,_DALIIN_port
 443  00f2 e604          	ld	a,(4,x)
 444  00f4 ba06          	or	a,_DALIIN_pin
 445  00f6 e704          	ld	(4,x),a
 446  00f8 81            	ret	
 630                     ; 205 void init_DALI(GPIO_TypeDef* port_out, u8 pin_out, u8 invert_out, GPIO_TypeDef* port_in, u8 pin_in, u8 invert_in,
 630                     ; 206                TDataReceivedCallback DataReceivedFunction, TErrorCallback ErrorFunction, TRTC_1ms_Callback RTC_1ms_Function)
 630                     ; 207 {
 631                     	switch	.text
 632  00f9               _init_DALI:
 634       00000000      OFST:	set	0
 637                     ; 208   DALIOUT_port = port_out;
 639  00f9 bf00          	ldw	_DALIOUT_port,x
 640  00fb 89            	pushw	x
 641                     ; 209   DALIOUT_pin = 1 << pin_out;
 643  00fc 7b05          	ld	a,(OFST+5,sp)
 644  00fe 5f            	clrw	x
 645  00ff 97            	ld	xl,a
 646  0100 a601          	ld	a,#1
 647  0102 5d            	tnzw	x
 648  0103 2704          	jreq	L03
 649  0105               L23:
 650  0105 48            	sll	a
 651  0106 5a            	decw	x
 652  0107 26fc          	jrne	L23
 653  0109               L03:
 654  0109 b702          	ld	_DALIOUT_pin,a
 655                     ; 210   DALIOUT_invert = invert_out;
 657  010b 7b06          	ld	a,(OFST+6,sp)
 658  010d b703          	ld	_DALIOUT_invert,a
 659                     ; 212   DALIIN_port = port_in;
 661  010f 1e07          	ldw	x,(OFST+7,sp)
 662  0111 bf04          	ldw	_DALIIN_port,x
 663                     ; 213   DALIIN_pin = 1 << pin_in;
 665  0113 5f            	clrw	x
 666  0114 7b09          	ld	a,(OFST+9,sp)
 667  0116 97            	ld	xl,a
 668  0117 a601          	ld	a,#1
 669  0119 5d            	tnzw	x
 670  011a 2704          	jreq	L43
 671  011c               L63:
 672  011c 48            	sll	a
 673  011d 5a            	decw	x
 674  011e 26fc          	jrne	L63
 675  0120               L43:
 676  0120 b706          	ld	_DALIIN_pin,a
 677                     ; 214   DALIIN_invert = invert_in;
 679  0122 7b0a          	ld	a,(OFST+10,sp)
 680  0124 b707          	ld	_DALIIN_invert,a
 681                     ; 216   DataReceivedCallback = DataReceivedFunction;
 683  0126 1e0b          	ldw	x,(OFST+11,sp)
 684  0128 bf08          	ldw	_DataReceivedCallback,x
 685                     ; 217   RTC_1ms_Callback = RTC_1ms_Function;
 687  012a 1e0f          	ldw	x,(OFST+15,sp)
 688  012c bf0a          	ldw	_RTC_1ms_Callback,x
 689                     ; 218   ErrorCallback = ErrorFunction;
 691  012e 1e0d          	ldw	x,(OFST+13,sp)
 692  0130 bf0c          	ldw	_ErrorCallback,x
 693                     ; 221   DALIOUT_port->ODR |= DALIOUT_pin; //high level
 695  0132 92c600        	ld	a,[_DALIOUT_port.w]
 696  0135 ba02          	or	a,_DALIOUT_pin
 697  0137 92c700        	ld	[_DALIOUT_port.w],a
 698                     ; 222   DALIOUT_port->DDR |= DALIOUT_pin; //output mode
 700  013a be00          	ldw	x,_DALIOUT_port
 701  013c e602          	ld	a,(2,x)
 702  013e ba02          	or	a,_DALIOUT_pin
 703  0140 e702          	ld	(2,x),a
 704                     ; 223   DALIOUT_port->CR1 |= DALIOUT_pin; //push-pull
 706  0142 e603          	ld	a,(3,x)
 707  0144 ba02          	or	a,_DALIOUT_pin
 708  0146 e703          	ld	(3,x),a
 709                     ; 224   DALIOUT_port->CR2 |= DALIOUT_pin; //slow slope
 711  0148 e604          	ld	a,(4,x)
 712  014a ba02          	or	a,_DALIOUT_pin
 713  014c e704          	ld	(4,x),a
 714                     ; 227   DALIIN_port->DDR &= ~DALIIN_pin; //input mode
 716  014e be04          	ldw	x,_DALIIN_port
 717  0150 b606          	ld	a,_DALIIN_pin
 718  0152 43            	cpl	a
 719  0153 e402          	and	a,(2,x)
 720  0155 e702          	ld	(2,x),a
 721                     ; 228   DALIIN_port->ODR &= ~DALIIN_pin; //low level
 723  0157 b606          	ld	a,_DALIIN_pin
 724  0159 43            	cpl	a
 725  015a 92c404        	and	a,[_DALIIN_port.w]
 726  015d 92c704        	ld	[_DALIIN_port.w],a
 727                     ; 229   DALIIN_port->CR1 |= DALIIN_pin; //pull-up
 729  0160 e603          	ld	a,(3,x)
 730  0162 ba06          	or	a,_DALIIN_pin
 731  0164 e703          	ld	(3,x),a
 732                     ; 230   DALIIN_port->CR2 |= DALIIN_pin; //interrupt enable on pin
 734  0166 e604          	ld	a,(4,x)
 735  0168 ba06          	or	a,_DALIIN_pin
 736  016a e704          	ld	(4,x),a
 737                     ; 235   if(port_in == GPIOA)
 739  016c 1e07          	ldw	x,(OFST+7,sp)
 740  016e a35000        	cpw	x,#20480
 741  0171 260e          	jrne	L362
 742                     ; 237     EXTI->CR1 &= ~EXTI_CR1_PAIS;
 744  0173 c650a0        	ld	a,20640
 745  0176 a4fc          	and	a,#252
 746  0178 c750a0        	ld	20640,a
 747                     ; 238     EXTI->CR1 |= 0x02;
 749  017b 721250a0      	bset	20640,#1
 751  017f 204a          	jra	L562
 752  0181               L362:
 753                     ; 240   else if(port_in == GPIOB)
 755  0181 a35005        	cpw	x,#20485
 756  0184 260e          	jrne	L762
 757                     ; 242     EXTI->CR1 &= ~EXTI_CR1_PBIS;
 759  0186 c650a0        	ld	a,20640
 760  0189 a4f3          	and	a,#243
 761  018b c750a0        	ld	20640,a
 762                     ; 243     EXTI->CR1 |= 0x02 << 2;
 764  018e 721650a0      	bset	20640,#3
 766  0192 2037          	jra	L562
 767  0194               L762:
 768                     ; 245   else if(port_in == GPIOC)
 770  0194 a3500a        	cpw	x,#20490
 771  0197 260e          	jrne	L372
 772                     ; 247     EXTI->CR1 &= ~EXTI_CR1_PCIS;
 774  0199 c650a0        	ld	a,20640
 775  019c a4cf          	and	a,#207
 776  019e c750a0        	ld	20640,a
 777                     ; 248     EXTI->CR1 |= 0x02 << 4;
 779  01a1 721a50a0      	bset	20640,#5
 781  01a5 2024          	jra	L562
 782  01a7               L372:
 783                     ; 250   else if(port_in == GPIOD)
 785  01a7 a3500f        	cpw	x,#20495
 786  01aa 260e          	jrne	L772
 787                     ; 252     EXTI->CR1 &= ~EXTI_CR1_PDIS;
 789  01ac c650a0        	ld	a,20640
 790  01af a43f          	and	a,#63
 791  01b1 c750a0        	ld	20640,a
 792                     ; 253     EXTI->CR1 |= 0x02 << 6;
 794  01b4 721e50a0      	bset	20640,#7
 796  01b8 2011          	jra	L562
 797  01ba               L772:
 798                     ; 255   else if(port_in == GPIOE)
 800  01ba a35014        	cpw	x,#20500
 801  01bd 260c          	jrne	L562
 802                     ; 257     EXTI->CR2 &= ~EXTI_CR2_PEIS;
 804  01bf c650a1        	ld	a,20641
 805  01c2 a4fc          	and	a,#252
 806  01c4 c750a1        	ld	20641,a
 807                     ; 258     EXTI->CR2 |= 0x02;
 809  01c7 721250a1      	bset	20641,#1
 810  01cb               L562:
 811                     ; 262   flag = NO_ACTION;
 813  01cb 3f08          	clr	_flag
 814                     ; 265   InterfaceFailureCounter = 0;
 816  01cd 5f            	clrw	x
 817  01ce bf03          	ldw	_InterfaceFailureCounter,x
 818                     ; 268   CLK->CKDIVR = 0x00;
 820  01d0 725f50c6      	clr	20678
 821                     ; 271   oneMScounter = 0;
 823  01d4 bf00          	ldw	_oneMScounter,x
 824                     ; 272   TIM4->PSCR = TIM4_PRESCALLER;
 826  01d6 35035345      	mov	21317,#3
 827                     ; 273   TIM4->ARR  = TIM4_DIVIDER;
 829  01da 35d05346      	mov	21318,#208
 830                     ; 275   TIM4->IER |= 0x01; //TIM4_IT_UPDATE
 832  01de 72105341      	bset	21313,#0
 833                     ; 278   TIM4->CR1 |= TIM4_CR1_CEN;
 835  01e2 72105340      	bset	21312,#0
 836                     ; 280   enableInterrupts();
 839  01e6 9a            	rim	
 841                     ; 282   return;
 845  01e7 85            	popw	x
 846  01e8 81            	ret	
 880                     ; 285 void DataReceived(u8 address, u8 dataByte)
 880                     ; 286 {
 881                     	switch	.text
 882  01e9               _DataReceived:
 886                     ; 290 }
 889  01e9 81            	ret	
 912                     ; 292 void RTC1msFnc(void)
 912                     ; 293 {
 913                     	switch	.text
 914  01ea               _RTC1msFnc:
 918                     ; 295 }
 921  01ea 81            	ret	
 955                     ; 297 void ErrorFnc(u8 code_val)
 955                     ; 298 {
 956                     	switch	.text
 957  01eb               _ErrorFnc:
 961                     ; 300 }
 964  01eb 81            	ret	
 988                     ; 302 u8 get_flag(void)
 988                     ; 303 {
 989                     	switch	.text
 990  01ec               _get_flag:
 994                     ; 304   return flag;
 996  01ec b608          	ld	a,_flag
 999  01ee 81            	ret	
1022                     ; 308 u8 get_timer_count(void)
1022                     ; 309 {
1023                     	switch	.text
1024  01ef               _get_timer_count:
1028                     ; 310   return (TIM4->CNTR);
1030  01ef c65344        	ld	a,21316
1033  01f2 81            	ret	
1071                     ; 317 void set_DALIOUT(bool pin_value)
1071                     ; 318 {
1072                     	switch	.text
1073  01f3               _set_DALIOUT:
1075  01f3 88            	push	a
1076       00000000      OFST:	set	0
1079                     ; 319   if (DALIOUT_invert)
1081  01f4 3d03          	tnz	_DALIOUT_invert
1082  01f6 270a          	jreq	L704
1083                     ; 321     if(pin_value)
1085  01f8 4d            	tnz	a
1086                     ; 322       DALIOUT_port->ODR &= ~DALIOUT_pin;
1088  01f9 260b          	jrne	L714
1089  01fb               L114:
1090                     ; 324       DALIOUT_port->ODR |= DALIOUT_pin;
1093  01fb 92c600        	ld	a,[_DALIOUT_port.w]
1094  01fe ba02          	or	a,_DALIOUT_pin
1095  0200 200a          	jra	L514
1096  0202               L704:
1097                     ; 328     if(pin_value)
1099  0202 7b01          	ld	a,(OFST+1,sp)
1100                     ; 329       DALIOUT_port->ODR |= DALIOUT_pin;
1102  0204 26f5          	jrne	L114
1103  0206               L714:
1104                     ; 331       DALIOUT_port->ODR &= ~DALIOUT_pin;
1107  0206 b602          	ld	a,_DALIOUT_pin
1108  0208 43            	cpl	a
1109  0209 92c400        	and	a,[_DALIOUT_port.w]
1110  020c               L514:
1111  020c 92c700        	ld	[_DALIOUT_port.w],a
1112                     ; 333 }
1115  020f 84            	pop	a
1116  0210 81            	ret	
1143                     ; 336 bool get_DALIOUT(void)
1143                     ; 337 {
1144                     	switch	.text
1145  0211               _get_DALIOUT:
1149                     ; 338   if (DALIOUT_invert)
1151  0211 b603          	ld	a,_DALIOUT_invert
1152  0213 270d          	jreq	L334
1153                     ; 340     if(DALIOUT_port->IDR & DALIOUT_pin)
1155  0215 be00          	ldw	x,_DALIOUT_port
1156  0217 e601          	ld	a,(1,x)
1157  0219 b502          	bcp	a,_DALIOUT_pin
1158  021b 2702          	jreq	L534
1159                     ; 341       return FALSE;
1161  021d 4f            	clr	a
1164  021e 81            	ret	
1165  021f               L534:
1166                     ; 343       return TRUE;
1168  021f a601          	ld	a,#1
1171  0221 81            	ret	
1172  0222               L334:
1173                     ; 347     if(DALIOUT_port->IDR & DALIOUT_pin)
1175  0222 be00          	ldw	x,_DALIOUT_port
1176  0224 e601          	ld	a,(1,x)
1177  0226 b502          	bcp	a,_DALIOUT_pin
1178  0228 2703          	jreq	L344
1179                     ; 348       return TRUE;
1181  022a a601          	ld	a,#1
1184  022c 81            	ret	
1185  022d               L344:
1186                     ; 350       return FALSE;
1188  022d 4f            	clr	a
1191  022e 81            	ret	
1231                     ; 355 void send_data(u8 byteToSend)
1231                     ; 356 {
1232                     	switch	.text
1233  022f               _send_data:
1237                     ; 357   answer = byteToSend;
1239  022f b70b          	ld	_answer,a
1240                     ; 358   bit_count = 0;
1242  0231 3f07          	clr	_bit_count
1243                     ; 361   DALIIN_port->CR2 &= ~DALIIN_pin;
1245  0233 b606          	ld	a,_DALIIN_pin
1246  0235 be04          	ldw	x,_DALIIN_port
1247  0237 43            	cpl	a
1248  0238 e404          	and	a,(4,x)
1249  023a e704          	ld	(4,x),a
1250                     ; 368   if(tick_count > 31)  // check for minimum response time
1252  023c be05          	ldw	x,_tick_count
1253  023e a30020        	cpw	x,#32
1254  0241 2505          	jrult	L564
1255                     ; 376     tick_count = 31;
1257  0243 ae001f        	ldw	x,#31
1258  0246 bf05          	ldw	_tick_count,x
1259  0248               L564:
1260                     ; 379   flag = SENDING_DATA;
1262  0248 35010008      	mov	_flag,#1
1263                     ; 381 }
1266  024c 81            	ret	
1298                     ; 385 void send_tick(void)
1298                     ; 386 {
1299                     	switch	.text
1300  024d               _send_tick:
1304                     ; 397   if((tick_count & 0x03)==0)
1306  024d b606          	ld	a,_tick_count+1
1307  024f a503          	bcp	a,#3
1308  0251 2703cc02d5    	jrne	L774
1309                     ; 399     if(tick_count < 104)
1311  0256 be05          	ldw	x,_tick_count
1312  0258 a30068        	cpw	x,#104
1313  025b 245d          	jruge	L105
1314                     ; 402       if(tick_count < 32)
1316  025d a30020        	cpw	x,#32
1317  0260 2404          	jruge	L305
1318                     ; 404         tick_count++;
1320  0262 5c            	incw	x
1321  0263 bf05          	ldw	_tick_count,x
1322                     ; 405         return;
1325  0265 81            	ret	
1326  0266               L305:
1327                     ; 410       if(tick_count == 32)
1329  0266 a30020        	cpw	x,#32
1330  0269 2605          	jrne	L505
1331                     ; 412         set_DALIOUT(FALSE);
1333  026b 4f            	clr	a
1334  026c ad85          	call	_set_DALIOUT
1336                     ; 413         tick_count++;
1338  026e 2065          	jp	LC006
1339  0270               L505:
1340                     ; 418       if(tick_count == 36)
1342  0270 a30024        	cpw	x,#36
1343  0273 2607          	jrne	L705
1344                     ; 420         set_DALIOUT(TRUE);
1346  0275 a601          	ld	a,#1
1347  0277 cd01f3        	call	_set_DALIOUT
1349                     ; 421         tick_count++;
1351  027a 2059          	jp	LC006
1352  027c               L705:
1353                     ; 426       bit_value = (bool)( (answer >> (7-bit_count)) & 0x01);
1355  027c a607          	ld	a,#7
1356  027e b007          	sub	a,_bit_count
1357  0280 5f            	clrw	x
1358  0281 97            	ld	xl,a
1359  0282 b60b          	ld	a,_answer
1360  0284 5d            	tnzw	x
1361  0285 2704          	jreq	L66
1362  0287               L07:
1363  0287 44            	srl	a
1364  0288 5a            	decw	x
1365  0289 26fc          	jrne	L07
1366  028b               L66:
1367  028b a401          	and	a,#1
1368  028d b702          	ld	_bit_value,a
1369                     ; 429       if( !( (tick_count-32) & 0x0007) )
1371  028f be05          	ldw	x,_tick_count
1372  0291 1d0020        	subw	x,#32
1373  0294 01            	rrwa	x,a
1374  0295 a507          	bcp	a,#7
1375  0297 260e          	jrne	L115
1376                     ; 431         if(get_DALIOUT() == bit_value ) // former value of bit = new value of bit
1378  0299 cd0211        	call	_get_DALIOUT
1380  029c b102          	cp	a,_bit_value
1381  029e 2607          	jrne	L115
1382                     ; 432           set_DALIOUT((bool)(1-bit_value));
1384  02a0 a601          	ld	a,#1
1385  02a2 b002          	sub	a,_bit_value
1386  02a4 cd01f3        	call	_set_DALIOUT
1388  02a7               L115:
1389                     ; 436       if( !( (tick_count - 36) & 0x0007) )
1391  02a7 be05          	ldw	x,_tick_count
1392  02a9 1d0024        	subw	x,#36
1393  02ac 01            	rrwa	x,a
1394  02ad a507          	bcp	a,#7
1395  02af 2624          	jrne	L774
1396                     ; 438         set_DALIOUT(bit_value);
1398  02b1 b602          	ld	a,_bit_value
1399  02b3 cd01f3        	call	_set_DALIOUT
1401                     ; 439         bit_count++;
1403  02b6 3c07          	inc	_bit_count
1404  02b8 201b          	jra	L774
1405  02ba               L105:
1406                     ; 443       if(tick_count == 104)
1408  02ba a30068        	cpw	x,#104
1409  02bd 2607          	jrne	L125
1410                     ; 445         set_DALIOUT(TRUE); // start of stop bit
1412  02bf a601          	ld	a,#1
1413  02c1 cd01f3        	call	_set_DALIOUT
1415  02c4 be05          	ldw	x,_tick_count
1416  02c6               L125:
1417                     ; 449       if(tick_count == 120)
1419  02c6 a30078        	cpw	x,#120
1420  02c9 260a          	jrne	L774
1421                     ; 451         flag = NO_ACTION;
1423  02cb 3f08          	clr	_flag
1424                     ; 453         DALIIN_port->CR2 |= DALIIN_pin;//enable EXTI
1426  02cd be04          	ldw	x,_DALIIN_port
1427  02cf e604          	ld	a,(4,x)
1428  02d1 ba06          	or	a,_DALIIN_pin
1429  02d3 e704          	ld	(4,x),a
1430  02d5               L774:
1431                     ; 457   tick_count++;
1433  02d5               LC006:
1434  02d5 be05          	ldw	x,_tick_count
1435  02d7 5c            	incw	x
1436  02d8 bf05          	ldw	_tick_count,x
1437                     ; 414         return;
1440  02da 81            	ret	
1464                     ; 463 void count_answer_tick(void)
1464                     ; 464 {
1465                     	switch	.text
1466  02db               _count_answer_tick:
1470                     ; 465   tick_count++;
1472  02db be05          	ldw	x,_tick_count
1473  02dd 5c            	incw	x
1474  02de bf05          	ldw	_tick_count,x
1475                     ; 466 }
1478  02e0 81            	ret	
1505                     .const:	section	.text
1506  0000               L011:
1507  0000 000012c8      	dc.l	4808
1508                     ; 469 void check_interface_failure(void)
1508                     ; 470 {
1509                     	switch	.text
1510  02e1               _check_interface_failure:
1514                     ; 471   if (get_DALIIN())
1516  02e1 cd001b        	call	_get_DALIIN
1518  02e4 4d            	tnz	a
1519  02e5 2704          	jreq	L545
1520                     ; 473     InterfaceFailureCounter = 0;
1522  02e7 5f            	clrw	x
1523  02e8 bf03          	ldw	_InterfaceFailureCounter,x
1524                     ; 474     return;
1527  02ea 81            	ret	
1528  02eb               L545:
1529                     ; 477   InterfaceFailureCounter++;
1531  02eb be03          	ldw	x,_InterfaceFailureCounter
1532  02ed 5c            	incw	x
1533  02ee bf03          	ldw	_InterfaceFailureCounter,x
1534                     ; 478   if (InterfaceFailureCounter > ((1000l * 500)/US_PER_TICK) )  //check 500ms timeout
1536  02f0 cd0000        	call	c_uitolx
1538  02f3 ae0000        	ldw	x,#L011
1539  02f6 cd0000        	call	c_lcmp
1541  02f9 2f08          	jrslt	L745
1542                     ; 480     ErrorCallback(1);
1544  02fb a601          	ld	a,#1
1545  02fd 92cd0c        	call	[_ErrorCallback.w]
1547                     ; 481     InterfaceFailureCounter = 0;
1549  0300 5f            	clrw	x
1550  0301 bf03          	ldw	_InterfaceFailureCounter,x
1551  0303               L745:
1552                     ; 483 }
1555  0303 81            	ret	
1758                     	xdef	_get_DALIOUT
1759                     	xdef	_set_DALIOUT
1760                     	xdef	_get_DALIIN
1761                     	switch	.ubsct
1762  0000               _former_val:
1763  0000 00            	ds.b	1
1764                     	xdef	_former_val
1765  0001               _actual_val:
1766  0001 00            	ds.b	1
1767                     	xdef	_actual_val
1768  0002               _bit_value:
1769  0002 00            	ds.b	1
1770                     	xdef	_bit_value
1771  0003               _InterfaceFailureCounter:
1772  0003 0000          	ds.b	2
1773                     	xdef	_InterfaceFailureCounter
1774  0005               _tick_count:
1775  0005 0000          	ds.b	2
1776                     	xdef	_tick_count
1777  0007               _bit_count:
1778  0007 00            	ds.b	1
1779                     	xdef	_bit_count
1780  0008               _flag:
1781  0008 00            	ds.b	1
1782                     	xdef	_flag
1783  0009               _dataByte:
1784  0009 00            	ds.b	1
1785                     	xdef	_dataByte
1786  000a               _address:
1787  000a 00            	ds.b	1
1788                     	xdef	_address
1789  000b               _answer:
1790  000b 00            	ds.b	1
1791                     	xdef	_answer
1792                     	xdef	_ErrorCallback
1793                     	xdef	_ErrorFnc
1794                     	xdef	_RTC_1ms_Callback
1795                     	xdef	_RTC1msFnc
1796                     	xdef	_DataReceivedCallback
1797                     	xdef	_DataReceived
1798                     	xdef	_DALIIN_invert
1799                     	xdef	_DALIIN_pin
1800                     	xdef	_DALIIN_port
1801                     	xdef	_DALIOUT_invert
1802                     	xdef	_DALIOUT_pin
1803                     	xdef	_DALIOUT_port
1804                     	xref.b	_oneMScounter
1805                     	xdef	_get_timer_count
1806                     	xdef	_check_interface_failure
1807                     	xdef	_count_answer_tick
1808                     	xdef	_send_tick
1809                     	xdef	_send_data
1810                     	xdef	_get_flag
1811                     	xdef	_init_DALI
1812                     	xdef	_receive_tick
1813                     	xdef	_receive_data
1833                     	xref	c_lcmp
1834                     	xref	c_uitolx
1835                     	end
