   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  60                     ; 45 void DALIR_Init(void)
  60                     ; 46 {
  62                     	switch	.text
  63  0000               _DALIR_Init:
  65  0000 88            	push	a
  66       00000001      OFST:	set	1
  69                     ; 48   for (i = 0; i<5; i++) RAMRegs[i]=0;
  71  0001 4f            	clr	a
  72  0002 6b01          	ld	(OFST+0,sp),a
  73  0004               L72:
  76  0004 5f            	clrw	x
  77  0005 97            	ld	xl,a
  78  0006 6f03          	clr	(_RAMRegs,x)
  81  0008 0c01          	inc	(OFST+0,sp)
  84  000a 7b01          	ld	a,(OFST+0,sp)
  85  000c a105          	cp	a,#5
  86  000e 25f4          	jrult	L72
  87                     ; 49 }
  90  0010 84            	pop	a
  91  0011 81            	ret	
 137                     ; 51 void DALIR_WriteEEPROMReg(uint8_t idx, uint8_t val)
 137                     ; 52 {
 138                     	switch	.text
 139  0012               _DALIR_WriteEEPROMReg:
 141  0012 89            	pushw	x
 142       00000000      OFST:	set	0
 145                     ; 54   if (idx == DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START) short_addr = val;
 147  0013 9e            	ld	a,xh
 148  0014 a106          	cp	a,#6
 149  0016 2603          	jrne	L75
 152  0018 9f            	ld	a,xl
 153  0019 b702          	ld	_short_addr,a
 154  001b               L75:
 155                     ; 55   E2_WriteMem(idx,val);
 157  001b 7b02          	ld	a,(OFST+2,sp)
 158  001d 97            	ld	xl,a
 159  001e 7b01          	ld	a,(OFST+1,sp)
 160  0020 95            	ld	xh,a
 161  0021 cd0000        	call	_E2_WriteMem
 163                     ; 56 }
 166  0024 85            	popw	x
 167  0025 81            	ret	
 204                     ; 58 uint8_t DALIR_ReadEEPROMReg(uint8_t idx)
 204                     ; 59 {
 205                     	switch	.text
 206  0026               _DALIR_ReadEEPROMReg:
 208  0026 88            	push	a
 209       00000000      OFST:	set	0
 212                     ; 60   if (idx == DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START) return short_addr;
 214  0027 a106          	cp	a,#6
 215  0029 2605          	jrne	L77
 218  002b b602          	ld	a,_short_addr
 221  002d 5b01          	addw	sp,#1
 222  002f 81            	ret	
 223  0030               L77:
 224                     ; 61   return E2_ReadMem(idx);
 226  0030 7b01          	ld	a,(OFST+1,sp)
 227  0032 cd0000        	call	_E2_ReadMem
 231  0035 5b01          	addw	sp,#1
 232  0037 81            	ret	
 269                     ; 64 uint8_t DALIR_ReadReg(uint8_t idx)
 269                     ; 65 {
 270                     	switch	.text
 271  0038               _DALIR_ReadReg:
 273  0038 88            	push	a
 274       00000000      OFST:	set	0
 277                     ; 66   if (!DALIR_IsValid(idx)) return 0;
 279  0039 a123          	cp	a,#35
 280  003b 2504          	jrult	L711
 283  003d 4f            	clr	a
 286  003e 5b01          	addw	sp,#1
 287  0040 81            	ret	
 288  0041               L711:
 289                     ; 67   if (DALIR_IsRAMReg(idx)) { return RAMRegs[idx - DALIREG_RAM_START];}
 291  0041 7b01          	ld	a,(OFST+1,sp)
 292  0043 a105          	cp	a,#5
 293  0045 2407          	jruge	L121
 296  0047 5f            	clrw	x
 297  0048 97            	ld	xl,a
 298  0049 e603          	ld	a,(_RAMRegs,x)
 301  004b 5b01          	addw	sp,#1
 302  004d 81            	ret	
 303  004e               L121:
 304                     ; 68   if (DALIR_IsROMReg(idx)) { return ROMRegs[idx - DALIREG_ROM_START];}
 306  004e a121          	cp	a,#33
 307  0050 250f          	jrult	L321
 309  0052 a123          	cp	a,#35
 310  0054 240b          	jruge	L321
 313  0056 5f            	clrw	x
 314  0057 97            	ld	xl,a
 315  0058 1d0021        	subw	x,#33
 316  005b d60000        	ld	a,(_ROMRegs,x)
 319  005e 5b01          	addw	sp,#1
 320  0060 81            	ret	
 321  0061               L321:
 322                     ; 69   return DALIR_ReadEEPROMReg(idx - DALIREG_EEPROM_START);
 324  0061 a005          	sub	a,#5
 325  0063 adc1          	call	_DALIR_ReadEEPROMReg
 329  0065 5b01          	addw	sp,#1
 330  0067 81            	ret	
 388                     ; 72 void DALIR_WriteReg(uint8_t idx, uint8_t newval)
 388                     ; 73 {
 389                     	switch	.text
 390  0068               _DALIR_WriteReg:
 392  0068 89            	pushw	x
 393  0069 89            	pushw	x
 394       00000002      OFST:	set	2
 397                     ; 75     if (!DALIR_IsValid(idx)) return;
 399  006a 9e            	ld	a,xh
 400  006b a123          	cp	a,#35
 401  006d 240a          	jruge	L44
 404                     ; 76     if (DALIR_IsROMReg(idx)) return;
 406  006f 7b03          	ld	a,(OFST+1,sp)
 407  0071 a121          	cp	a,#33
 408  0073 2507          	jrult	L561
 410  0075 a123          	cp	a,#35
 411  0077 2403          	jruge	L561
 413  0079               L44:
 416  0079 5b04          	addw	sp,#4
 417  007b 81            	ret	
 418  007c               L561:
 419                     ; 77     if (DALIR_IsRAMReg(idx))
 421  007c a105          	cp	a,#5
 422  007e 2408          	jruge	L761
 423                     ; 79         RAMRegs[idx - DALIREG_RAM_START] = newval;
 425  0080 5f            	clrw	x
 426  0081 97            	ld	xl,a
 427  0082 7b04          	ld	a,(OFST+2,sp)
 428  0084 e703          	ld	(_RAMRegs,x),a
 430  0086 200a          	jra	L171
 431  0088               L761:
 432                     ; 83         DALIR_WriteEEPROMReg(idx - DALIREG_EEPROM_START, newval);
 434  0088 7b04          	ld	a,(OFST+2,sp)
 435  008a 97            	ld	xl,a
 436  008b 7b03          	ld	a,(OFST+1,sp)
 437  008d a005          	sub	a,#5
 438  008f 95            	ld	xh,a
 439  0090 ad80          	call	_DALIR_WriteEEPROMReg
 441  0092               L171:
 442                     ; 86     if (DALIR_ReadStatusBit(DALIREG_STATUS_FADE_READY)==0)
 444  0092 a604          	ld	a,#4
 445  0094 ad7a          	call	_DALIR_ReadStatusBit
 447  0096 4d            	tnz	a
 448  0097 26e0          	jrne	L44
 449                     ; 89         DALIR_WriteStatusBit(DALIREG_STATUS_RESET_STATE,1);   /*set reset State*/
 451  0099 ae0501        	ldw	x,#1281
 452  009c ad49          	call	_DALIR_WriteStatusBit
 454                     ; 91         for (i=0; i<DALI_NUMBER_REGS; i++)
 456  009e 4f            	clr	a
 457  009f 6b02          	ld	(OFST+0,sp),a
 458  00a1               L571:
 459                     ; 93             switch (i)
 462                     ; 107                     break;
 463  00a1 a004          	sub	a,#4
 464  00a3 2738          	jreq	L502
 465  00a5 a003          	sub	a,#3
 466  00a7 2710          	jreq	L131
 467  00a9 a004          	sub	a,#4
 468  00ab 2730          	jreq	L502
 469                     ; 103                 default:
 469                     ; 104                     if(DALIR_IsEEPROMReg(i) || DALIR_IsRAMReg(i))
 471  00ad 7b02          	ld	a,(OFST+0,sp)
 472  00af a105          	cp	a,#5
 473  00b1 2511          	jrult	L512
 475  00b3 a121          	cp	a,#33
 476  00b5 2511          	jrult	L312
 477  00b7 200b          	jra	L512
 478  00b9               L131:
 479                     ; 99                 case DALIREG_MIN_LEVEL:
 479                     ; 100                     if (DALIR_ReadReg(DALIREG_MIN_LEVEL)!= DALIR_ReadReg(DALIREG_PHYS_MIN_LEVEL))
 481  00b9 a622          	ld	a,#34
 482  00bb cd0038        	call	_DALIR_ReadReg
 484  00be 6b01          	ld	(OFST-1,sp),a
 485  00c0 a607          	ld	a,#7
 487                     ; 101                     DALIR_WriteStatusBit(DALIREG_STATUS_RESET_STATE,0); /*clear reset State*/;
 489  00c2 200d          	jp	LC001
 490  00c4               L512:
 491                     ; 103                 default:
 491                     ; 104                     if(DALIR_IsEEPROMReg(i) || DALIR_IsRAMReg(i))
 492  00c4 a105          	cp	a,#5
 493  00c6 2415          	jruge	L502
 494  00c8               L312:
 495                     ; 105                     if (DALIR_ReadReg(i) != DaliRegDefaults[i])
 497  00c8 5f            	clrw	x
 498  00c9 97            	ld	xl,a
 499  00ca d60000        	ld	a,(_DaliRegDefaults,x)
 500  00cd 6b01          	ld	(OFST-1,sp),a
 501  00cf 7b02          	ld	a,(OFST+0,sp)
 503                     ; 106                     DALIR_WriteStatusBit(DALIREG_STATUS_RESET_STATE,0); /*clear reset State*/
 505  00d1               LC001:
 506  00d1 cd0038        	call	_DALIR_ReadReg
 507  00d4 1101          	cp	a,(OFST-1,sp)
 508  00d6 2705          	jreq	L502
 510  00d8 ae0500        	ldw	x,#1280
 511  00db ad0a          	call	_DALIR_WriteStatusBit
 513  00dd               L502:
 514                     ; 91         for (i=0; i<DALI_NUMBER_REGS; i++)
 516  00dd 0c02          	inc	(OFST+0,sp)
 519  00df 7b02          	ld	a,(OFST+0,sp)
 520  00e1 a123          	cp	a,#35
 521  00e3 25bc          	jrult	L571
 522                     ; 111 }
 524  00e5 2092          	jra	L44
 569                     ; 113 void DALIR_WriteStatusBit(uint8_t bit_nbr,uint8_t val)
 569                     ; 114 {
 570                     	switch	.text
 571  00e7               _DALIR_WriteStatusBit:
 573  00e7 89            	pushw	x
 574       00000000      OFST:	set	0
 577                     ; 115     if (val == 0)
 579  00e8 9f            	ld	a,xl
 580  00e9 4d            	tnz	a
 581  00ea 2611          	jrne	L342
 582                     ; 117         ClrBit(RAMRegs[DALIREG_STATUS_INFORMATION - DALIREG_RAM_START],bit_nbr);
 584  00ec 9e            	ld	a,xh
 585  00ed 5f            	clrw	x
 586  00ee 97            	ld	xl,a
 587  00ef a601          	ld	a,#1
 588  00f1 5d            	tnzw	x
 589  00f2 2704          	jreq	L05
 590  00f4               L25:
 591  00f4 48            	sll	a
 592  00f5 5a            	decw	x
 593  00f6 26fc          	jrne	L25
 594  00f8               L05:
 595  00f8 43            	cpl	a
 596  00f9 b407          	and	a,_RAMRegs+4
 598  00fb 200f          	jra	L542
 599  00fd               L342:
 600                     ; 121         SetBit(RAMRegs[DALIREG_STATUS_INFORMATION - DALIREG_RAM_START],bit_nbr);
 602  00fd 7b01          	ld	a,(OFST+1,sp)
 603  00ff 5f            	clrw	x
 604  0100 97            	ld	xl,a
 605  0101 a601          	ld	a,#1
 606  0103 5d            	tnzw	x
 607  0104 2704          	jreq	L45
 608  0106               L65:
 609  0106 48            	sll	a
 610  0107 5a            	decw	x
 611  0108 26fc          	jrne	L65
 612  010a               L45:
 613  010a ba07          	or	a,_RAMRegs+4
 614  010c               L542:
 615  010c b707          	ld	_RAMRegs+4,a
 616                     ; 123 }
 619  010e 85            	popw	x
 620  010f 81            	ret	
 656                     ; 125 uint8_t DALIR_ReadStatusBit(uint8_t bit_nbr)
 656                     ; 126 {
 657                     	switch	.text
 658  0110               _DALIR_ReadStatusBit:
 662                     ; 127     return ValBit(RAMRegs[DALIREG_STATUS_INFORMATION - DALIREG_RAM_START],bit_nbr);
 664  0110 5f            	clrw	x
 665  0111 97            	ld	xl,a
 666  0112 a601          	ld	a,#1
 667  0114 5d            	tnzw	x
 668  0115 2704          	jreq	L26
 669  0117               L46:
 670  0117 48            	sll	a
 671  0118 5a            	decw	x
 672  0119 26fc          	jrne	L46
 673  011b               L26:
 674  011b b407          	and	a,_RAMRegs+4
 677  011d 81            	ret	
 720                     ; 130 void DALIR_ResetRegs(void)
 720                     ; 131 {
 721                     	switch	.text
 722  011e               _DALIR_ResetRegs:
 724  011e 88            	push	a
 725       00000001      OFST:	set	1
 728                     ; 134     E2_WriteBurst(0,(u8)(DALIREG_EEPROM_END-DALIREG_EEPROM_START),(u8*)(&(DaliRegDefaults[DALIREG_EEPROM_START])));
 730  011f ae0005        	ldw	x,#_DaliRegDefaults+5
 731  0122 89            	pushw	x
 732  0123 ae001c        	ldw	x,#28
 733  0126 cd0000        	call	_E2_WriteBurst
 735  0129 b602          	ld	a,_short_addr
 736  012b 85            	popw	x
 737                     ; 135     E2_WriteMem(DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START,short_addr);
 739  012c 97            	ld	xl,a
 740  012d a606          	ld	a,#6
 741  012f 95            	ld	xh,a
 742  0130 cd0000        	call	_E2_WriteMem
 744                     ; 136     for (i=0; i<DALI_NUMBER_REGS; i++)
 746  0133 4f            	clr	a
 747  0134 6b01          	ld	(OFST+0,sp),a
 748  0136               L313:
 749                     ; 138         switch (i)
 752                     ; 152                 break;
 753  0136 a004          	sub	a,#4
 754  0138 272e          	jreq	L323
 755  013a a003          	sub	a,#3
 756  013c 2710          	jreq	L172
 757  013e a004          	sub	a,#4
 758  0140 2726          	jreq	L323
 759                     ; 147             default:
 759                     ; 148                 if(DALIR_IsEEPROMReg(i) || DALIR_IsRAMReg(i))
 761  0142 7b01          	ld	a,(OFST+0,sp)
 762  0144 a105          	cp	a,#5
 763  0146 2510          	jrult	L133
 765  0148 a121          	cp	a,#33
 766  014a 2510          	jrult	L723
 767  014c 200a          	jra	L133
 768  014e               L172:
 769                     ; 144             case DALIREG_MIN_LEVEL:
 769                     ; 145                 DALIR_WriteReg(DALIREG_MIN_LEVEL,DALIR_ReadReg(DALIREG_PHYS_MIN_LEVEL));
 771  014e a622          	ld	a,#34
 772  0150 cd0038        	call	_DALIR_ReadReg
 774  0153 97            	ld	xl,a
 775  0154 a607          	ld	a,#7
 777                     ; 146                 break;
 779  0156 200c          	jp	LC002
 780  0158               L133:
 781                     ; 147             default:
 781                     ; 148                 if(DALIR_IsEEPROMReg(i) || DALIR_IsRAMReg(i))
 782  0158 a105          	cp	a,#5
 783  015a 240c          	jruge	L323
 784  015c               L723:
 785                     ; 150                     DALIR_WriteReg(i,DaliRegDefaults[i]);
 787  015c 5f            	clrw	x
 788  015d 97            	ld	xl,a
 789  015e d60000        	ld	a,(_DaliRegDefaults,x)
 790  0161 97            	ld	xl,a
 791  0162 7b01          	ld	a,(OFST+0,sp)
 792  0164               LC002:
 793  0164 95            	ld	xh,a
 794  0165 cd0068        	call	_DALIR_WriteReg
 796  0168               L323:
 797                     ; 136     for (i=0; i<DALI_NUMBER_REGS; i++)
 799  0168 0c01          	inc	(OFST+0,sp)
 802  016a 7b01          	ld	a,(OFST+0,sp)
 803  016c a123          	cp	a,#35
 804  016e 25c6          	jrult	L313
 805                     ; 155     i=DALIR_ReadReg(DALIREG_STATUS_INFORMATION);
 807  0170 a604          	ld	a,#4
 808  0172 cd0038        	call	_DALIR_ReadReg
 810                     ; 156     i&=0x47;
 812  0175 a447          	and	a,#71
 813  0177 6b01          	ld	(OFST+0,sp),a
 814                     ; 157     DALIR_WriteReg(DALIREG_STATUS_INFORMATION, i);
 816  0179 97            	ld	xl,a
 817  017a a604          	ld	a,#4
 818  017c 95            	ld	xh,a
 819  017d cd0068        	call	_DALIR_WriteReg
 821                     ; 158     DALIR_WriteStatusBit(DALIREG_STATUS_RESET_STATE,1); /*Set reset State*/
 823  0180 ae0501        	ldw	x,#1281
 824  0183 cd00e7        	call	_DALIR_WriteStatusBit
 826                     ; 160     DALIP_FastFade = 0;
 828  0186 3f00          	clr	_DALIP_FastFade
 829                     ; 161     DALIP_CurveType = 0;
 831  0188 3f00          	clr	_DALIP_CurveType
 832                     ; 163 }
 835  018a 84            	pop	a
 836  018b 81            	ret	
 862                     ; 165 void DALIR_LoadRegsFromE2(void)
 862                     ; 166 {
 863                     	switch	.text
 864  018c               _DALIR_LoadRegsFromE2:
 868                     ; 167     short_addr = E2_ReadMem(DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START);
 870  018c a606          	ld	a,#6
 871  018e cd0000        	call	_E2_ReadMem
 873  0191 b702          	ld	_short_addr,a
 874                     ; 168 }
 877  0193 81            	ret	
 903                     ; 170 void DALIR_DeleteShort(void)
 903                     ; 171 {
 904                     	switch	.text
 905  0194               _DALIR_DeleteShort:
 909                     ; 172     short_addr = 0xFF;
 911  0194 35ff0002      	mov	_short_addr,#255
 912                     ; 173     E2_WriteMem(DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START,0xFF);
 914  0198 ae06ff        	ldw	x,#1791
 915  019b cd0000        	call	_E2_WriteMem
 917                     ; 174     DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,1);
 919  019e ae0601        	ldw	x,#1537
 921                     ; 175 }
 924  01a1 cc00e7        	jp	_DALIR_WriteStatusBit
 968                     	xdef	_DALIR_ReadEEPROMReg
 969                     	xdef	_DALIR_WriteEEPROMReg
 970                     	xref.b	_DALIP_CurveType
 971                     	xref.b	_DALIP_FastFade
 972                     	xref	_DaliRegDefaults
 973                     	xref	_ROMRegs
 974                     	switch	.ubsct
 975  0000               _randbuf:
 976  0000 0000          	ds.b	2
 977                     	xdef	_randbuf
 978  0002               _short_addr:
 979  0002 00            	ds.b	1
 980                     	xdef	_short_addr
 981  0003               _RAMRegs:
 982  0003 0000000000    	ds.b	5
 983                     	xdef	_RAMRegs
 984                     	xref	_E2_ReadMem
 985                     	xref	_E2_WriteBurst
 986                     	xref	_E2_WriteMem
 987                     	xdef	_DALIR_Init
 988                     	xdef	_DALIR_DeleteShort
 989                     	xdef	_DALIR_LoadRegsFromE2
 990                     	xdef	_DALIR_ResetRegs
 991                     	xdef	_DALIR_ReadStatusBit
 992                     	xdef	_DALIR_WriteStatusBit
 993                     	xdef	_DALIR_WriteReg
 994                     	xdef	_DALIR_ReadReg
1014                     	end
