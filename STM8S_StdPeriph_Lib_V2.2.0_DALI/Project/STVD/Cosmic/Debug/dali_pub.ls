   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  20                     	bsct
  21  0000               _DALIP_FastFade:
  22  0000 00            	dc.b	0
  23  0001               _DALIP_CurveType:
  24  0001 00            	dc.b	0
  25                     .const:	section	.text
  26  0000               _ROMRegs:
  27  0000 01            	dc.b	1
  28  0001 05            	dc.b	5
  29                     	bsct
  30  0002               _LightControlCallback:
  32  0002 000b          	dc.w	_DALIP_HW_LIGHT_Set
  79                     ; 76 void DALIP_Init(TDPLightControlCallback LightControlFunction)
  79                     ; 77 {
  81                     	switch	.text
  82  0000               _DALIP_Init:
  86                     ; 78   DALIP_bEnable_DAPC = 0;
  88  0000 3f00          	clr	_DALIP_bEnable_DAPC
  89                     ; 80   if (LightControlFunction)
  91  0002 5d            	tnzw	x
  92                     ; 81     LightControlCallback = LightControlFunction;
  94  0003 2603          	jrne	L13
  95                     ; 83     LightControlCallback = DALIP_HW_LIGHT_Set;
  97  0005 ae000b        	ldw	x,#_DALIP_HW_LIGHT_Set
  98  0008               L13:
 100  0008 bf02          	ldw	_LightControlCallback,x
 101                     ; 84 }
 104  000a 81            	ret	
 138                     ; 94 void DALIP_HW_LIGHT_Set(u16 newval)
 138                     ; 95 {
 139                     	switch	.text
 140  000b               _DALIP_HW_LIGHT_Set:
 144                     ; 96   return;
 147  000b 81            	ret	
 182                     ; 100 void DALIP_LaunchTimer(u8 p)
 182                     ; 101 {
 183                     	switch	.text
 184  000c               _DALIP_LaunchTimer:
 188                     ; 102   RTC_LaunchUserTimer(p);
 191                     ; 103 }
 194  000c cc0000        	jp	_RTC_LaunchUserTimer
 218                     ; 105 void DALIP_DoneTimer(void){
 219                     	switch	.text
 220  000f               _DALIP_DoneTimer:
 224                     ; 106   RTC_DoneUserTimer();
 227                     ; 107 }
 230  000f cc0000        	jp	_RTC_DoneUserTimer
 266                     ; 109 u16 DALIP_ConvertARC(u16 index)
 266                     ; 110 {
 267                     	switch	.text
 268  0012               _DALIP_ConvertARC:
 270  0012 89            	pushw	x
 271       00000000      OFST:	set	0
 274                     ; 114   if(DALIP_CurveType)
 276  0013 b601          	ld	a,_DALIP_CurveType
 277  0015 2704          	jreq	L511
 278                     ; 115     return (index << 8);
 280  0017 4f            	clr	a
 281  0018 02            	rlwa	x,a
 283  0019 2006          	jra	L22
 284  001b               L511:
 285                     ; 117     return DALIP_ArcTable[index];
 287  001b 1e01          	ldw	x,(OFST+1,sp)
 288  001d 58            	sllw	x
 289  001e de0000        	ldw	x,(_DALIP_ArcTable,x)
 291  0021               L22:
 293  0021 5b02          	addw	sp,#2
 294  0023 81            	ret	
 344                     ; 142 void DALIP_TimerCallback(void)
 344                     ; 143 {
 345                     	switch	.text
 346  0024               _DALIP_TimerCallback:
 348  0024 88            	push	a
 349       00000001      OFST:	set	1
 352                     ; 146     DALIP_iChangeCountdown -= 100; //decrement hundreds of ms
 354  0025 ae0007        	ldw	x,#_DALIP_iChangeCountdown
 355  0028 a664          	ld	a,#100
 356  002a cd0000        	call	c_lgsbc
 359  002d 2057          	jra	L141
 360  002f               L731:
 361                     ; 149         DALIP_iChangeCountdown += DALIP_iChangeEvery;
 363  002f ae000b        	ldw	x,#_DALIP_iChangeEvery
 364  0032 cd0000        	call	c_ltor
 366  0035 ae0007        	ldw	x,#_DALIP_iChangeCountdown
 367  0038 cd0000        	call	c_lgadd
 369                     ; 150         zw = DALIP_GetArc();
 371  003b cd00d4        	call	_DALIP_GetArc
 373  003e 6b01          	ld	(OFST+0,sp),a
 374                     ; 151         if (DALIP_bIncrease)
 376  0040 3d06          	tnz	_DALIP_bIncrease
 377  0042 270c          	jreq	L541
 378                     ; 153             if (zw < DALIP_iMaxLevel)
 380  0044 b104          	cp	a,_DALIP_iMaxLevel
 381  0046 2404          	jruge	L741
 382                     ; 155                 zw++;
 384  0048 0c01          	inc	(OFST+0,sp)
 385                     ; 156                 DALIP_SetArc(zw);
 388  004a 200a          	jra	L351
 389  004c               L741:
 390                     ; 160                 DALIP_DoneTimer();
 392  004c ad42          	call	LC001
 394                     ; 162                 return;
 397  004e 84            	pop	a
 398  004f 81            	ret	
 399  0050               L541:
 400                     ; 167             if (zw > DALIP_iMinLevel)
 402  0050 b103          	cp	a,_DALIP_iMinLevel
 403  0052 2319          	jrule	L551
 404                     ; 169                 zw--;
 406  0054 0a01          	dec	(OFST+0,sp)
 407                     ; 170                 DALIP_SetArc(zw);
 411  0056               L351:
 413  0056 7b01          	ld	a,(OFST+0,sp)
 414  0058 ad3c          	call	_DALIP_SetArc
 415                     ; 186         LightControlCallback(DALIP_ConvertARC(zw));
 417  005a 7b01          	ld	a,(OFST+0,sp)
 418  005c 5f            	clrw	x
 419  005d 97            	ld	xl,a
 420  005e adb2          	call	_DALIP_ConvertARC
 422  0060 92cd02        	call	[_LightControlCallback.w]
 424                     ; 187         if (zw == DALIP_FadeGoal)
 426  0063 7b01          	ld	a,(OFST+0,sp)
 427  0065 b101          	cp	a,_DALIP_FadeGoal
 428  0067 261d          	jrne	L141
 429                     ; 189             DALIP_DoneTimer();
 431  0069 ad25          	call	LC001
 433                     ; 191             return;
 436  006b 84            	pop	a
 437  006c 81            	ret	
 438  006d               L551:
 439                     ; 174                 DALIP_DoneTimer();
 441  006d ad21          	call	LC001
 443                     ; 176                 if (DALIP_bOff_AfterFade)
 445  006f b605          	ld	a,_DALIP_bOff_AfterFade
 446  0071 2711          	jreq	L161
 447                     ; 178                   DALIP_bOff_AfterFade = 0;
 449  0073 3f05          	clr	_DALIP_bOff_AfterFade
 450                     ; 179                   DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
 452  0075 ae0700        	ldw	x,#1792
 453  0078 cd0000        	call	_DALIR_WriteStatusBit
 455                     ; 180 	                DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON,0);
 457  007b ae0200        	ldw	x,#512
 458  007e cd0000        	call	_DALIR_WriteStatusBit
 460                     ; 181 	                DALIP_Off();
 462  0081 cd026d        	call	_DALIP_Off
 464  0084               L161:
 465                     ; 183                 return;
 468  0084 84            	pop	a
 469  0085 81            	ret	
 470  0086               L141:
 471                     ; 147     while (DALIP_iChangeCountdown <= 0)
 473  0086 ae0007        	ldw	x,#_DALIP_iChangeCountdown
 474  0089 cd0000        	call	c_lzmp
 476  008c 2da1          	jrsle	L731
 477                     ; 194 }
 480  008e 84            	pop	a
 481  008f 81            	ret	
 482  0090               LC001:
 483  0090 cd000f        	call	_DALIP_DoneTimer
 485                     ; 175                 DALIP_SetFadeReadyFlag(0); /* fade is ready */
 487  0093 4f            	clr	a
 488  0094 2030          	jp	_DALIP_SetFadeReadyFlag
 524                     ; 200 void DALIP_SetArc(u8 val)
 524                     ; 201 {
 525                     	switch	.text
 526  0096               _DALIP_SetArc:
 530                     ; 202     DALIR_WriteReg(DALIREG_ACTUAL_DIM_LEVEL,val);
 532  0096 97            	ld	xl,a
 533  0097 4f            	clr	a
 534  0098 95            	ld	xh,a
 535  0099 cd0000        	call	_DALIR_WriteReg
 537                     ; 203     PowerOnTimerReset();
 540                     ; 204 }
 543  009c cc0000        	jp	_PowerOnTimerReset
 579                     ; 206 void DALIP_SetBallastStatusFlag(u8 bit_nbr)
 579                     ; 207 {
 580                     	switch	.text
 581  009f               _DALIP_SetBallastStatusFlag:
 585                     ; 208     DALIR_WriteStatusBit(0,bit_nbr);
 587  009f 97            	ld	xl,a
 588  00a0 4f            	clr	a
 589  00a1 95            	ld	xh,a
 591                     ; 209 }
 594  00a2 cc0000        	jp	_DALIR_WriteStatusBit
 632                     ; 211 void DALIP_SetLampFailureFlag(u8 bit_nbr)
 632                     ; 212 {
 633                     	switch	.text
 634  00a5               _DALIP_SetLampFailureFlag:
 636  00a5 88            	push	a
 637       00000000      OFST:	set	0
 640                     ; 213     DALIR_WriteStatusBit(1,bit_nbr);
 642  00a6 97            	ld	xl,a
 643  00a7 a601          	ld	a,#1
 644  00a9 95            	ld	xh,a
 645  00aa cd0000        	call	_DALIR_WriteStatusBit
 647                     ; 214     if(bit_nbr)
 649  00ad 7b01          	ld	a,(OFST+1,sp)
 650  00af 2703          	jreq	L732
 651                     ; 216       DALIP_SetLampPowerOnFlag(0);
 653  00b1 4f            	clr	a
 656  00b2 2007          	jp	LC002
 657  00b4               L732:
 658                     ; 220       if(DALIP_GetArc())
 660  00b4 ad1e          	call	_DALIP_GetArc
 662  00b6 4d            	tnz	a
 663  00b7 2704          	jreq	L142
 664                     ; 221         DALIP_SetLampPowerOnFlag(1);
 666  00b9 a601          	ld	a,#1
 667  00bb               LC002:
 668  00bb ad02          	call	_DALIP_SetLampPowerOnFlag
 670  00bd               L142:
 671                     ; 223 }
 674  00bd 84            	pop	a
 675  00be 81            	ret	
 711                     ; 225 void DALIP_SetLampPowerOnFlag(u8 bit_nbr)
 711                     ; 226 {
 712                     	switch	.text
 713  00bf               _DALIP_SetLampPowerOnFlag:
 717                     ; 227     DALIR_WriteStatusBit(2,bit_nbr);
 719  00bf 97            	ld	xl,a
 720  00c0 a602          	ld	a,#2
 721  00c2 95            	ld	xh,a
 723                     ; 228 }
 726  00c3 cc0000        	jp	_DALIR_WriteStatusBit
 762                     ; 230 void DALIP_SetFadeReadyFlag(u8 bit_nbr)
 762                     ; 231 {
 763                     	switch	.text
 764  00c6               _DALIP_SetFadeReadyFlag:
 768                     ; 232     DALIR_WriteStatusBit(4,bit_nbr);
 770  00c6 97            	ld	xl,a
 771  00c7 a604          	ld	a,#4
 772  00c9 95            	ld	xh,a
 774                     ; 233 }
 777  00ca cc0000        	jp	_DALIR_WriteStatusBit
 813                     ; 235 void DALIP_SetPowerFailureFlag(u8 bit_nbr)
 813                     ; 236 {
 814                     	switch	.text
 815  00cd               _DALIP_SetPowerFailureFlag:
 819                     ; 237     DALIR_WriteStatusBit(7,bit_nbr);
 821  00cd 97            	ld	xl,a
 822  00ce a607          	ld	a,#7
 823  00d0 95            	ld	xh,a
 825                     ; 238 }
 828  00d1 cc0000        	jp	_DALIR_WriteStatusBit
 852                     ; 244 u8 DALIP_GetArc(void)
 852                     ; 245 {
 853                     	switch	.text
 854  00d4               _DALIP_GetArc:
 858                     ; 246     return DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
 860  00d4 4f            	clr	a
 864  00d5 cc0000        	jp	_DALIR_ReadReg
 888                     ; 249 u8 DALIP_GetFadeTime(void)
 888                     ; 250 {
 889                     	switch	.text
 890  00d8               _DALIP_GetFadeTime:
 894                     ; 251     return DALIR_ReadReg(DALIREG_FADE_TIME);
 896  00d8 a60a          	ld	a,#10
 900  00da cc0000        	jp	_DALIR_ReadReg
 924                     ; 254 u8 DALIP_GetFadeRate(void)
 924                     ; 255 {
 925                     	switch	.text
 926  00dd               _DALIP_GetFadeRate:
 930                     ; 256     return DALIR_ReadReg(DALIREG_FADE_RATE);
 932  00dd a609          	ld	a,#9
 936  00df cc0000        	jp	_DALIR_ReadReg
 960                     ; 259 u8 DALIP_GetMaxLevel(void)
 960                     ; 260 {
 961                     	switch	.text
 962  00e2               _DALIP_GetMaxLevel:
 966                     ; 261     return DALIR_ReadReg(DALIREG_MAX_LEVEL);
 968  00e2 a608          	ld	a,#8
 972  00e4 cc0000        	jp	_DALIR_ReadReg
 996                     ; 264 u8 DALIP_GetMinLevel(void)
 996                     ; 265 {
 997                     	switch	.text
 998  00e7               _DALIP_GetMinLevel:
1002                     ; 266     return DALIR_ReadReg(DALIREG_MIN_LEVEL);
1004  00e7 a607          	ld	a,#7
1008  00e9 cc0000        	jp	_DALIR_ReadReg
1033                     ; 269 u8 DALIP_GetPowerOnLevel(void)
1033                     ; 270 {
1034                     	switch	.text
1035  00ec               _DALIP_GetPowerOnLevel:
1039                     ; 271     return DALIR_ReadReg(DALIREG_POWER_ON_LEVEL);
1041  00ec a605          	ld	a,#5
1045  00ee cc0000        	jp	_DALIR_ReadReg
1070                     ; 274 u8 DALIP_GetSysFailureLevel(void)
1070                     ; 275 {
1071                     	switch	.text
1072  00f1               _DALIP_GetSysFailureLevel:
1076                     ; 276     return DALIR_ReadReg(DALIREG_SYSTEM_FAILURE_LEVEL);
1078  00f1 a606          	ld	a,#6
1082  00f3 cc0000        	jp	_DALIR_ReadReg
1106                     ; 279 u8 DALIP_GetStatus(void)
1106                     ; 280 {
1107                     	switch	.text
1108  00f6               _DALIP_GetStatus:
1112                     ; 281     return DALIR_ReadReg(DALIREG_STATUS_INFORMATION);
1114  00f6 a604          	ld	a,#4
1118  00f8 cc0000        	jp	_DALIR_ReadReg
1142                     ; 284 u8 DALIP_GetVersion(void)
1142                     ; 285 {
1143                     	switch	.text
1144  00fb               _DALIP_GetVersion:
1148                     ; 286     return DALIR_ReadReg(DALIREG_VERSION_NUMBER);
1150  00fb a621          	ld	a,#33
1154  00fd cc0000        	jp	_DALIR_ReadReg
1179                     ; 289 u8 DALIP_GetPhysMinLevel(void)
1179                     ; 290 {
1180                     	switch	.text
1181  0100               _DALIP_GetPhysMinLevel:
1185                     ; 291     return DALIR_ReadReg(DALIREG_PHYS_MIN_LEVEL);
1187  0100 a622          	ld	a,#34
1191  0102 cc0000        	jp	_DALIR_ReadReg
1225                     ; 298 u8 DALIP_EEPROM_Size(void)
1225                     ; 299 {
1226                     	switch	.text
1227  0105               _DALIP_EEPROM_Size:
1229       00000002      OFST:	set	2
1232                     ; 301     zwms = E2_PHYSICAL_SIZE;
1234                     ; 302     zwms -= DALIREG_EEPROM_END-DALIREG_EEPROM_START+4;
1236                     ; 303     return (u8) zwms;
1238  0105 a6e0          	ld	a,#224
1241  0107 81            	ret	
1277                     ; 306 u8 DALIP_Read_E2(u8 addr)
1277                     ; 307 {
1278                     	switch	.text
1279  0108               _DALIP_Read_E2:
1281  0108 88            	push	a
1282       00000000      OFST:	set	0
1285                     ; 308     if (addr >= DALIP_EEPROM_Size()) return 0;
1287  0109 adfa          	call	_DALIP_EEPROM_Size
1289  010b 1101          	cp	a,(OFST+1,sp)
1290  010d 2204          	jrugt	L374
1293  010f 4f            	clr	a
1296  0110 5b01          	addw	sp,#1
1297  0112 81            	ret	
1298  0113               L374:
1299                     ; 309     return E2_ReadMem(addr+DALIREG_EEPROM_END-DALIREG_EEPROM_START);
1301  0113 7b01          	ld	a,(OFST+1,sp)
1302  0115 ab1c          	add	a,#28
1303  0117 cd0000        	call	_E2_ReadMem
1307  011a 5b01          	addw	sp,#1
1308  011c 81            	ret	
1353                     ; 312 void DALIP_Write_E2(u8 addr, u8 data_val)
1353                     ; 313 {
1354                     	switch	.text
1355  011d               _DALIP_Write_E2:
1357  011d 89            	pushw	x
1358       00000000      OFST:	set	0
1361                     ; 314     if (addr >= DALIP_EEPROM_Size()) return;
1363  011e ade5          	call	_DALIP_EEPROM_Size
1365  0120 1101          	cp	a,(OFST+1,sp)
1366  0122 230b          	jrule	L012
1369                     ; 315     E2_WriteMem(addr+DALIREG_EEPROM_END-DALIREG_EEPROM_START,data_val);
1371  0124 7b02          	ld	a,(OFST+2,sp)
1372  0126 97            	ld	xl,a
1373  0127 7b01          	ld	a,(OFST+1,sp)
1374  0129 ab1c          	add	a,#28
1375  012b 95            	ld	xh,a
1376  012c cd0000        	call	_E2_WriteMem
1378                     ; 316 }
1379  012f               L012:
1382  012f 85            	popw	x
1383  0130 81            	ret	
1448                     ; 318 void DALIP_Write_E2_Buffer(u8 addr, u8 number, u8*buf)
1448                     ; 319 {
1449                     	switch	.text
1450  0131               _DALIP_Write_E2_Buffer:
1452  0131 89            	pushw	x
1453  0132 88            	push	a
1454       00000001      OFST:	set	1
1457                     ; 322     zw = DALIP_EEPROM_Size();
1459  0133 add0          	call	_DALIP_EEPROM_Size
1461  0135 6b01          	ld	(OFST+0,sp),a
1462                     ; 323     if (addr >= zw) return;
1464  0137 7b02          	ld	a,(OFST+1,sp)
1465  0139 1101          	cp	a,(OFST+0,sp)
1466  013b 240c          	jruge	L022
1469                     ; 324     zw -= addr;
1471  013d 7b01          	ld	a,(OFST+0,sp)
1472  013f 1002          	sub	a,(OFST+1,sp)
1473  0141 6b01          	ld	(OFST+0,sp),a
1474                     ; 325     if (number > zw) return;
1476  0143 7b03          	ld	a,(OFST+2,sp)
1477  0145 1101          	cp	a,(OFST+0,sp)
1478  0147 2303          	jrule	L555
1480  0149               L022:
1483  0149 5b03          	addw	sp,#3
1484  014b 81            	ret	
1485  014c               L555:
1486                     ; 326     E2_WriteBurst(addr,number,buf);
1488  014c 1e06          	ldw	x,(OFST+5,sp)
1489  014e 89            	pushw	x
1490  014f 7b05          	ld	a,(OFST+4,sp)
1491  0151 97            	ld	xl,a
1492  0152 7b04          	ld	a,(OFST+3,sp)
1493  0154 95            	ld	xh,a
1494  0155 cd0000        	call	_E2_WriteBurst
1496  0158 85            	popw	x
1497                     ; 327 }
1499  0159 20ee          	jra	L022
1534                     ; 334 void DALIP_Reserved_Function(u8 cmd)
1534                     ; 335 {
1535                     	switch	.text
1536  015b               _DALIP_Reserved_Function:
1540                     ; 337 }
1543  015b 81            	ret	
1578                     ; 339 void DALIP_Reserved_Special_Function(u8 cmd, u8 data_val)
1578                     ; 340 {
1579                     	switch	.text
1580  015c               _DALIP_Reserved_Special_Function:
1584                     ; 342 }
1587  015c 81            	ret	
1668                     ; 362 void DALIP_Direct_Arc(u8 val)
1668                     ; 363 {
1669                     	switch	.text
1670  015d               _DALIP_Direct_Arc:
1672  015d 88            	push	a
1673  015e 520a          	subw	sp,#10
1674       0000000a      OFST:	set	10
1677                     ; 368     iActVal = DALIP_GetArc();
1679  0160 cd00d4        	call	_DALIP_GetArc
1681  0163 6b06          	ld	(OFST-4,sp),a
1682                     ; 369     if (iActVal == val) return;
1684  0165 110b          	cp	a,(OFST+1,sp)
1685  0167 2603cc0237    	jreq	L156
1688                     ; 370     iActFT = DALIP_GetFadeTime();
1690  016c cd00d8        	call	_DALIP_GetFadeTime
1692  016f 6b05          	ld	(OFST-5,sp),a
1693                     ; 372     DALIP_DoneTimer();
1695  0171 cd000f        	call	_DALIP_DoneTimer
1697                     ; 373     if ((iActFT == 0)
1697                     ; 374 #if (DEVICE_TYPE == 6)          /* LED type device */
1697                     ; 375         &&(DALIP_FastFade == 0)
1697                     ; 376 #endif
1697                     ; 377         &&(!DALIP_bEnable_DAPC))
1699  0174 7b05          	ld	a,(OFST-5,sp)
1700  0176 261a          	jrne	L746
1702  0178 3d00          	tnz	_DALIP_FastFade
1703  017a 2616          	jrne	L746
1705  017c 3d00          	tnz	_DALIP_bEnable_DAPC
1706  017e 2612          	jrne	L746
1707                     ; 379         DALIP_SetArc(val);
1709  0180 7b0b          	ld	a,(OFST+1,sp)
1710  0182 cd0096        	call	_DALIP_SetArc
1712                     ; 380         LightControlCallback(DALIP_ConvertARC(val));
1714  0185 7b0b          	ld	a,(OFST+1,sp)
1715  0187 5f            	clrw	x
1716  0188 97            	ld	xl,a
1717  0189 cd0012        	call	_DALIP_ConvertARC
1719  018c 92cd02        	call	[_LightControlCallback.w]
1722  018f cc0237        	jra	L156
1723  0192               L746:
1724                     ; 384         if(DALIP_bEnable_DAPC)
1726  0192 3d00          	tnz	_DALIP_bEnable_DAPC
1727  0194 270a          	jreq	L356
1728                     ; 385           FadeTime = 200;
1730  0196 ae00c8        	ldw	x,#200
1731  0199 1f09          	ldw	(OFST-1,sp),x
1732  019b 5f            	clrw	x
1733  019c 1f07          	ldw	(OFST-3,sp),x
1735  019e 202a          	jra	L556
1736  01a0               L356:
1737                     ; 388           FadeTime = DALIP_FadeTimeTable[iActFT];
1739  01a0 97            	ld	xl,a
1740  01a1 a604          	ld	a,#4
1741  01a3 42            	mul	x,a
1742  01a4 9093          	ldw	y,x
1743  01a6 de0002        	ldw	x,(_DALIP_FadeTimeTable+2,x)
1744  01a9 1f09          	ldw	(OFST-1,sp),x
1745  01ab 93            	ldw	x,y
1746  01ac de0000        	ldw	x,(_DALIP_FadeTimeTable,x)
1747  01af 1f07          	ldw	(OFST-3,sp),x
1748                     ; 390           if(FadeTime ==0) /* apply fast fade time */
1750  01b1 96            	ldw	x,sp
1751  01b2 1c0007        	addw	x,#OFST-3
1752  01b5 cd0000        	call	c_lzmp
1754  01b8 2610          	jrne	L556
1755                     ; 391             FadeTime = DALIP_FastFade * 25;
1757  01ba b600          	ld	a,_DALIP_FastFade
1758  01bc 97            	ld	xl,a
1759  01bd a619          	ld	a,#25
1760  01bf 42            	mul	x,a
1761  01c0 cd0000        	call	c_itolx
1763  01c3 96            	ldw	x,sp
1764  01c4 1c0007        	addw	x,#OFST-3
1765  01c7 cd0000        	call	c_rtol
1767  01ca               L556:
1768                     ; 394         DALIP_bOff_AfterFade = 0;
1770  01ca 3f05          	clr	_DALIP_bOff_AfterFade
1771                     ; 395         if (iActVal > val)
1773  01cc 7b06          	ld	a,(OFST-4,sp)
1774  01ce 110b          	cp	a,(OFST+1,sp)
1775  01d0 2330          	jrule	L166
1776                     ; 397             DALIP_iMinLevel = DALIP_GetMinLevel();
1778  01d2 cd00e7        	call	_DALIP_GetMinLevel
1780  01d5 b703          	ld	_DALIP_iMinLevel,a
1781                     ; 398             DALIP_bIncrease = 0;
1783  01d7 3f06          	clr	_DALIP_bIncrease
1784                     ; 399             if(val)
1786  01d9 7b0b          	ld	a,(OFST+1,sp)
1787  01db 2709          	jreq	L366
1788                     ; 401               DALIP_iChangeEvery = (100*(long)FadeTime/((long)(iActVal - val)));
1790  01dd 7b06          	ld	a,(OFST-4,sp)
1791  01df 5f            	clrw	x
1792  01e0 100b          	sub	a,(OFST+1,sp)
1793  01e2 242f          	jrnc	L452
1801  01e4 202c          	jp	LC004
1802  01e6               L366:
1803                     ; 405               DALIP_iChangeEvery = (100*(long)FadeTime/((long)(iActVal - DALIP_iMinLevel)));
1805  01e6 7b06          	ld	a,(OFST-4,sp)
1806  01e8 5f            	clrw	x
1807  01e9 b003          	sub	a,_DALIP_iMinLevel
1808  01eb 2401          	jrnc	L052
1809  01ed 5a            	decw	x
1810  01ee               L052:
1811  01ee cd0000        	call	c_itol
1813  01f1 96            	ldw	x,sp
1814  01f2 5c            	incw	x
1815  01f3 cd0000        	call	c_rtol
1817  01f6 96            	ldw	x,sp
1818  01f7 ad41          	call	LC005
1820  01f9 96            	ldw	x,sp
1821  01fa ad49          	call	LC006
1823                     ; 406               DALIP_bOff_AfterFade = 1;
1825  01fc 35010005      	mov	_DALIP_bOff_AfterFade,#1
1826  0200 201f          	jra	L766
1827  0202               L166:
1828                     ; 411             DALIP_iMaxLevel = DALIP_GetMaxLevel();
1830  0202 cd00e2        	call	_DALIP_GetMaxLevel
1832  0205 b704          	ld	_DALIP_iMaxLevel,a
1833                     ; 412             DALIP_bIncrease = 1;
1835  0207 35010006      	mov	_DALIP_bIncrease,#1
1836                     ; 413             DALIP_iChangeEvery = (100*(long)FadeTime/((long)(val - iActVal)));
1838  020b 5f            	clrw	x
1839  020c 7b0b          	ld	a,(OFST+1,sp)
1840  020e 1006          	sub	a,(OFST-4,sp)
1841  0210 2401          	jrnc	L452
1842  0212               LC004:
1843  0212 5a            	decw	x
1844  0213               L452:
1850  0213 cd0000        	call	c_itol
1851  0216 96            	ldw	x,sp
1852  0217 5c            	incw	x
1853  0218 cd0000        	call	c_rtol
1854  021b 96            	ldw	x,sp
1855  021c ad1c          	call	LC005
1856  021e 96            	ldw	x,sp
1857  021f ad24          	call	LC006
1859  0221               L766:
1860                     ; 415         DALIP_iChangeCountdown = DALIP_iChangeEvery;
1862  0221 be0d          	ldw	x,_DALIP_iChangeEvery+2
1863  0223 bf09          	ldw	_DALIP_iChangeCountdown+2,x
1864  0225 be0b          	ldw	x,_DALIP_iChangeEvery
1865  0227 bf07          	ldw	_DALIP_iChangeCountdown,x
1866                     ; 416         DALIP_SetFadeReadyFlag(1);                       /* Fade running from now */
1868  0229 a601          	ld	a,#1
1869  022b cd00c6        	call	_DALIP_SetFadeReadyFlag
1871                     ; 417         DALIP_FadeGoal = val;
1873  022e 7b0b          	ld	a,(OFST+1,sp)
1874  0230 b701          	ld	_DALIP_FadeGoal,a
1875                     ; 418         DALIP_LaunchTimer(0xFF);
1877  0232 a6ff          	ld	a,#255
1878  0234 cd000c        	call	_DALIP_LaunchTimer
1880  0237               L156:
1881                     ; 420 }
1884  0237 5b0b          	addw	sp,#11
1885  0239 81            	ret	
1886  023a               LC005:
1887  023a 1c0007        	addw	x,#OFST-3
1888  023d cd0000        	call	c_ltor
1890  0240 a664          	ld	a,#100
1891  0242 cc0000        	jp	c_smul
1892  0245               LC006:
1893  0245 5c            	incw	x
1894  0246 cd0000        	call	c_ldiv
1896  0249 ae000b        	ldw	x,#_DALIP_iChangeEvery
1897  024c cc0000        	jp	c_rtol
1937                     ; 422 void DALIP_Direct_Arc_NoFade(u8 val)
1937                     ; 423 {
1938                     	switch	.text
1939  024f               _DALIP_Direct_Arc_NoFade:
1941  024f 88            	push	a
1942       00000000      OFST:	set	0
1945                     ; 424     if (DALIP_GetArc() == val) return;
1947  0250 cd00d4        	call	_DALIP_GetArc
1949  0253 1101          	cp	a,(OFST+1,sp)
1950  0255 2602          	jrne	L707
1954  0257 84            	pop	a
1955  0258 81            	ret	
1956  0259               L707:
1957                     ; 425     DALIP_DoneTimer();
1959  0259 cd000f        	call	_DALIP_DoneTimer
1961                     ; 426     DALIP_SetArc(val);
1963  025c 7b01          	ld	a,(OFST+1,sp)
1964  025e cd0096        	call	_DALIP_SetArc
1966                     ; 427     LightControlCallback(DALIP_ConvertARC(val));
1968  0261 7b01          	ld	a,(OFST+1,sp)
1969  0263 5f            	clrw	x
1970  0264 97            	ld	xl,a
1971  0265 cd0012        	call	_DALIP_ConvertARC
1973  0268 92cd02        	call	[_LightControlCallback.w]
1975                     ; 428 }
1978  026b 84            	pop	a
1979  026c 81            	ret	
2005                     ; 430 void DALIP_Off(void)
2005                     ; 431 {
2006                     	switch	.text
2007  026d               _DALIP_Off:
2011                     ; 432     DALIP_DoneTimer();
2013  026d cd000f        	call	_DALIP_DoneTimer
2015                     ; 433     DALIP_SetArc(0);
2017  0270 4f            	clr	a
2018  0271 cd0096        	call	_DALIP_SetArc
2020                     ; 434     LightControlCallback(0);
2022  0274 5f            	clrw	x
2024                     ; 435 }
2027  0275 92cc02        	jp	[_LightControlCallback.w]
2077                     ; 437 void DALIP_Up(void)
2077                     ; 438 {
2078                     	switch	.text
2079  0278               _DALIP_Up:
2081  0278 88            	push	a
2082       00000001      OFST:	set	1
2085                     ; 441     DALIP_DoneTimer();
2087  0279 cd000f        	call	_DALIP_DoneTimer
2089                     ; 442     if (DALIR_ReadStatusBit(DALIREG_STATUS_FADE_READY)==0)
2091  027c a604          	ld	a,#4
2092  027e cd0000        	call	_DALIR_ReadStatusBit
2094  0281 4d            	tnz	a
2095  0282 2647          	jrne	L737
2096                     ; 444         zw = DALIP_GetFadeRate();
2098  0284 cd00dd        	call	_DALIP_GetFadeRate
2100  0287 6b01          	ld	(OFST+0,sp),a
2101                     ; 445         if (zw == 0)
2103  0289 2615          	jrne	L147
2104                     ; 447             zw = DALIP_GetArc();
2106  028b cd00d4        	call	_DALIP_GetArc
2108  028e 4c            	inc	a
2109  028f 6b01          	ld	(OFST+0,sp),a
2110                     ; 448             zw++;
2112                     ; 449             DALIP_SetArc(zw);
2114  0291 cd0096        	call	_DALIP_SetArc
2116                     ; 450             LightControlCallback(DALIP_ConvertARC(zw));
2118  0294 7b01          	ld	a,(OFST+0,sp)
2119  0296 5f            	clrw	x
2120  0297 97            	ld	xl,a
2121  0298 cd0012        	call	_DALIP_ConvertARC
2123  029b 92cd02        	call	[_LightControlCallback.w]
2126  029e 2030          	jra	L547
2127  02a0               L147:
2128                     ; 454             DALIP_iMaxLevel = DALIP_GetMaxLevel();
2130  02a0 cd00e2        	call	_DALIP_GetMaxLevel
2132  02a3 b704          	ld	_DALIP_iMaxLevel,a
2133                     ; 455             DALIP_bIncrease = 1;
2135  02a5 35010006      	mov	_DALIP_bIncrease,#1
2136                     ; 456             DALIP_iChangeEvery = DALIP_FadeRateTable[zw];
2138  02a9 5f            	clrw	x
2139  02aa 7b01          	ld	a,(OFST+0,sp)
2140  02ac 97            	ld	xl,a
2141  02ad 58            	sllw	x
2142  02ae de0000        	ldw	x,(_DALIP_FadeRateTable,x)
2143  02b1 cd0000        	call	c_uitolx
2145  02b4 ae000b        	ldw	x,#_DALIP_iChangeEvery
2146  02b7 cd0000        	call	c_rtol
2148                     ; 457             DALIP_iChangeCountdown = DALIP_iChangeEvery;
2150  02ba be0d          	ldw	x,_DALIP_iChangeEvery+2
2151  02bc bf09          	ldw	_DALIP_iChangeCountdown+2,x
2152  02be be0b          	ldw	x,_DALIP_iChangeEvery
2153  02c0 bf07          	ldw	_DALIP_iChangeCountdown,x
2154                     ; 458             DALIP_SetFadeReadyFlag(1);      /* Fade running from now */
2156  02c2 a601          	ld	a,#1
2157  02c4 cd00c6        	call	_DALIP_SetFadeReadyFlag
2159                     ; 459             DALIP_FadeGoal = 255;
2161  02c7 35ff0001      	mov	_DALIP_FadeGoal,#255
2162                     ; 460             DALIP_LaunchTimer(200);
2164  02cb               L737:
2165                     ; 465         DALIP_LaunchTimer(200);
2168  02cb a6c8          	ld	a,#200
2169  02cd cd000c        	call	_DALIP_LaunchTimer
2171  02d0               L547:
2172                     ; 467 }
2175  02d0 84            	pop	a
2176  02d1 81            	ret	
2226                     ; 469 void DALIP_Down(void)
2226                     ; 470 {
2227                     	switch	.text
2228  02d2               _DALIP_Down:
2230  02d2 88            	push	a
2231       00000001      OFST:	set	1
2234                     ; 473     DALIP_DoneTimer();
2236  02d3 cd000f        	call	_DALIP_DoneTimer
2238                     ; 474     if (DALIR_ReadStatusBit(DALIREG_STATUS_FADE_READY)==0)
2240  02d6 a604          	ld	a,#4
2241  02d8 cd0000        	call	_DALIR_ReadStatusBit
2243  02db 4d            	tnz	a
2244  02dc 2645          	jrne	L567
2245                     ; 476         zw = DALIP_GetFadeRate();
2247  02de cd00dd        	call	_DALIP_GetFadeRate
2249  02e1 6b01          	ld	(OFST+0,sp),a
2250                     ; 477         if (zw == 0)
2252  02e3 2615          	jrne	L767
2253                     ; 479             zw = DALIP_GetArc();
2255  02e5 cd00d4        	call	_DALIP_GetArc
2257  02e8 4a            	dec	a
2258  02e9 6b01          	ld	(OFST+0,sp),a
2259                     ; 480             zw--;
2261                     ; 481             DALIP_SetArc(zw);
2263  02eb cd0096        	call	_DALIP_SetArc
2265                     ; 482             LightControlCallback(DALIP_ConvertARC(zw));
2267  02ee 7b01          	ld	a,(OFST+0,sp)
2268  02f0 5f            	clrw	x
2269  02f1 97            	ld	xl,a
2270  02f2 cd0012        	call	_DALIP_ConvertARC
2272  02f5 92cd02        	call	[_LightControlCallback.w]
2275  02f8 202e          	jra	L377
2276  02fa               L767:
2277                     ; 486             DALIP_bIncrease = 0;
2279  02fa 3f06          	clr	_DALIP_bIncrease
2280                     ; 487             DALIP_iMinLevel = DALIP_GetMinLevel();
2282  02fc cd00e7        	call	_DALIP_GetMinLevel
2284  02ff b703          	ld	_DALIP_iMinLevel,a
2285                     ; 488             DALIP_iChangeEvery = DALIP_FadeRateTable[zw];
2287  0301 5f            	clrw	x
2288  0302 7b01          	ld	a,(OFST+0,sp)
2289  0304 97            	ld	xl,a
2290  0305 58            	sllw	x
2291  0306 de0000        	ldw	x,(_DALIP_FadeRateTable,x)
2292  0309 cd0000        	call	c_uitolx
2294  030c ae000b        	ldw	x,#_DALIP_iChangeEvery
2295  030f cd0000        	call	c_rtol
2297                     ; 489             DALIP_iChangeCountdown = DALIP_iChangeEvery;
2299  0312 be0d          	ldw	x,_DALIP_iChangeEvery+2
2300  0314 bf09          	ldw	_DALIP_iChangeCountdown+2,x
2301  0316 be0b          	ldw	x,_DALIP_iChangeEvery
2302  0318 bf07          	ldw	_DALIP_iChangeCountdown,x
2303                     ; 490             DALIP_SetFadeReadyFlag(1);      /* Fade running from now */
2305  031a a601          	ld	a,#1
2306  031c cd00c6        	call	_DALIP_SetFadeReadyFlag
2308                     ; 491             DALIP_FadeGoal = 255;
2310  031f 35ff0001      	mov	_DALIP_FadeGoal,#255
2311                     ; 492             DALIP_LaunchTimer(200);
2313  0323               L567:
2314                     ; 497         DALIP_LaunchTimer(200);
2317  0323 a6c8          	ld	a,#200
2318  0325 cd000c        	call	_DALIP_LaunchTimer
2320  0328               L377:
2321                     ; 499 }
2324  0328 84            	pop	a
2325  0329 81            	ret	
2351                     ; 501 void DALIP_Enable_DAPC_Sequence(void)
2351                     ; 502 {
2352                     	switch	.text
2353  032a               _DALIP_Enable_DAPC_Sequence:
2357                     ; 503   DALIP_bEnable_DAPC = 1;
2359  032a 35010000      	mov	_DALIP_bEnable_DAPC,#1
2360                     ; 504   RTC_LaunchDAPCTimer();
2363                     ; 505 }
2366  032e cc0000        	jp	_RTC_LaunchDAPCTimer
2392                     ; 507 void DALIP_Stop_DAPC_Sequence(void)
2392                     ; 508 {
2393                     	switch	.text
2394  0331               _DALIP_Stop_DAPC_Sequence:
2398                     ; 509   RTC_DoneDAPCTimer();
2400  0331 cd0000        	call	_RTC_DoneDAPCTimer
2402                     ; 510   DALIP_bEnable_DAPC = 0;
2404  0334 3f00          	clr	_DALIP_bEnable_DAPC
2405                     ; 511 }
2408  0336 81            	ret	
2434                     ; 513 void DALIP_Try_DAPC_Sequence(void)
2434                     ; 514 {
2435                     	switch	.text
2436  0337               _DALIP_Try_DAPC_Sequence:
2440                     ; 515   if(DALIP_bEnable_DAPC)
2442  0337 b600          	ld	a,_DALIP_bEnable_DAPC
2443  0339 2703          	jreq	L5201
2444                     ; 516     RTC_LaunchDAPCTimer();
2446  033b cd0000        	call	_RTC_LaunchDAPCTimer
2448  033e               L5201:
2449                     ; 517 }
2452  033e 81            	ret	
2492                     ; 519 void DALIP_Step_Up(void)
2492                     ; 520 {
2493                     	switch	.text
2494  033f               _DALIP_Step_Up:
2496  033f 88            	push	a
2497       00000001      OFST:	set	1
2500                     ; 523     DALIP_DoneTimer();
2502  0340 cd000f        	call	_DALIP_DoneTimer
2504                     ; 524     zw = DALIP_GetArc();
2506  0343 cd00d4        	call	_DALIP_GetArc
2508  0346 6b01          	ld	(OFST+0,sp),a
2509                     ; 525     if(zw)
2511  0348 2706          	jreq	L5401
2512                     ; 526       zw++;
2514  034a 0c01          	inc	(OFST+0,sp)
2516  034c 7b01          	ld	a,(OFST+0,sp)
2517  034e 2007          	jra	L7401
2518  0350               L5401:
2519                     ; 528       zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
2521  0350 a607          	ld	a,#7
2522  0352 cd0000        	call	_DALIR_ReadReg
2524  0355 6b01          	ld	(OFST+0,sp),a
2525  0357               L7401:
2526                     ; 529     DALIP_SetArc(zw);
2528  0357 cd0096        	call	_DALIP_SetArc
2530                     ; 530     LightControlCallback(DALIP_ConvertARC(zw));
2532  035a 7b01          	ld	a,(OFST+0,sp)
2533  035c 5f            	clrw	x
2534  035d 97            	ld	xl,a
2535  035e cd0012        	call	_DALIP_ConvertARC
2537  0361 92cd02        	call	[_LightControlCallback.w]
2539                     ; 531 }
2542  0364 84            	pop	a
2543  0365 81            	ret	
2582                     ; 533 void DALIP_Step_Down(void)
2582                     ; 534 {
2583                     	switch	.text
2584  0366               _DALIP_Step_Down:
2586  0366 88            	push	a
2587       00000001      OFST:	set	1
2590                     ; 537     DALIP_DoneTimer();
2592  0367 cd000f        	call	_DALIP_DoneTimer
2594                     ; 538     zw = DALIP_GetArc();
2596  036a cd00d4        	call	_DALIP_GetArc
2598  036d 4a            	dec	a
2599  036e 6b01          	ld	(OFST+0,sp),a
2600                     ; 539     zw--;
2602                     ; 540     DALIP_SetArc(zw);
2604  0370 cd0096        	call	_DALIP_SetArc
2606                     ; 541     LightControlCallback(DALIP_ConvertARC(zw));
2608  0373 7b01          	ld	a,(OFST+0,sp)
2609  0375 5f            	clrw	x
2610  0376 97            	ld	xl,a
2611  0377 cd0012        	call	_DALIP_ConvertARC
2613  037a 92cd02        	call	[_LightControlCallback.w]
2615                     ; 542 }
2618  037d 84            	pop	a
2619  037e 81            	ret	
2659                     ; 544 void DALIP_Recall_Max_Level(void)
2659                     ; 545 {
2660                     	switch	.text
2661  037f               _DALIP_Recall_Max_Level:
2663  037f 88            	push	a
2664       00000001      OFST:	set	1
2667                     ; 548     DALIP_DoneTimer();
2669  0380 cd000f        	call	_DALIP_DoneTimer
2671                     ; 549     zw = DALIR_ReadReg(DALIREG_MAX_LEVEL);
2673  0383 a608          	ld	a,#8
2674  0385 cd0000        	call	_DALIR_ReadReg
2676  0388 6b01          	ld	(OFST+0,sp),a
2677                     ; 550     DALIP_SetArc(zw);
2679  038a cd0096        	call	_DALIP_SetArc
2681                     ; 551     LightControlCallback(DALIP_ConvertARC(zw));
2683  038d 7b01          	ld	a,(OFST+0,sp)
2684  038f 5f            	clrw	x
2685  0390 97            	ld	xl,a
2686  0391 cd0012        	call	_DALIP_ConvertARC
2688  0394 92cd02        	call	[_LightControlCallback.w]
2690                     ; 552 }
2693  0397 84            	pop	a
2694  0398 81            	ret	
2734                     ; 554 void DALIP_Recall_Min_Level(void)
2734                     ; 555 {
2735                     	switch	.text
2736  0399               _DALIP_Recall_Min_Level:
2738  0399 88            	push	a
2739       00000001      OFST:	set	1
2742                     ; 558     DALIP_DoneTimer();
2744  039a cd000f        	call	_DALIP_DoneTimer
2746                     ; 559     zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
2748  039d a607          	ld	a,#7
2749  039f cd0000        	call	_DALIR_ReadReg
2751  03a2 6b01          	ld	(OFST+0,sp),a
2752                     ; 560     DALIP_SetArc(zw);
2754  03a4 cd0096        	call	_DALIP_SetArc
2756                     ; 561     LightControlCallback(DALIP_ConvertARC(zw));
2758  03a7 7b01          	ld	a,(OFST+0,sp)
2759  03a9 5f            	clrw	x
2760  03aa 97            	ld	xl,a
2761  03ab cd0012        	call	_DALIP_ConvertARC
2763  03ae 92cd02        	call	[_LightControlCallback.w]
2765                     ; 562 }
2768  03b1 84            	pop	a
2769  03b2 81            	ret	
2794                     ; 564 void DALIP_Step_Down_And_Off(void)
2794                     ; 565 {
2795                     	switch	.text
2796  03b3               _DALIP_Step_Down_And_Off:
2800                     ; 566     DALIP_Step_Down();
2803                     ; 567 }
2806  03b3 20b1          	jp	_DALIP_Step_Down
2831                     ; 569 void DALIP_On_And_Step_Up(void)
2831                     ; 570 {
2832                     	switch	.text
2833  03b5               _DALIP_On_And_Step_Up:
2837                     ; 571     DALIP_Step_Up();
2840                     ; 572 }
2843  03b5 2088          	jp	_DALIP_Step_Up
2868                     ; 580 u8 DALIP_Is_Physically_Selected(void)
2868                     ; 581 {
2869                     	switch	.text
2870  03b7               _DALIP_Is_Physically_Selected:
2874                     ; 582     return Physically_Selected; //global variable set by user
2876  03b7 b60f          	ld	a,_Physically_Selected
2879  03b9 81            	ret	
2903                     ; 586 u8 DALIP_What_Device_Type(void)
2903                     ; 587 {
2904                     	switch	.text
2905  03ba               _DALIP_What_Device_Type:
2909                     ; 588     return DEVICE_TYPE;              // globally defined
2911  03ba a606          	ld	a,#6
2914  03bc 81            	ret	
2949                     ; 610 u8 DALIP_Ext_Cmd_Is_Answer_Required(u8 command)
2949                     ; 611 {
2950                     	switch	.text
2951  03bd               _DALIP_Ext_Cmd_Is_Answer_Required:
2955                     ; 612   switch (command)
2958                     ; 623     case 227:
2958                     ; 624     case 228: return 0;
2959  03bd a0e3          	sub	a,#227
2960  03bf 2720          	jreq	L5611
2961  03c1 4a            	dec	a
2962  03c2 271d          	jreq	L5611
2963  03c4 a009          	sub	a,#9
2964  03c6 2716          	jreq	L3611
2965  03c8 4a            	dec	a
2966  03c9 2713          	jreq	L3611
2967  03cb 4a            	dec	a
2968  03cc 2710          	jreq	L3611
2969  03ce 4a            	dec	a
2970  03cf 270d          	jreq	L3611
2971  03d1 4a            	dec	a
2972  03d2 270a          	jreq	L3611
2973  03d4 a00b          	sub	a,#11
2974  03d6 2706          	jreq	L3611
2975  03d8 4a            	dec	a
2976  03d9 2703          	jreq	L3611
2977  03db 4a            	dec	a
2978  03dc 2605          	jrne	L7021
2979  03de               L3611:
2980                     ; 614     case 237:
2980                     ; 615     case 238:
2980                     ; 616     case 239:
2980                     ; 617     case 240:
2980                     ; 618     case 241:
2980                     ; 619     case 252:
2980                     ; 620     case 253:
2980                     ; 621     case 254: return 1;
2982  03de a601          	ld	a,#1
2985  03e0 81            	ret	
2986  03e1               L5611:
2987                     ; 623     case 227:
2987                     ; 624     case 228: return 0;
2989  03e1 4f            	clr	a
2992  03e2 81            	ret	
2993  03e3               L7021:
2994                     ; 626   return 0;
2996  03e3 4f            	clr	a
2999  03e4 81            	ret	
3034                     ; 635 u8 DALIP_Ext_Cmd_Is_Answer_YesNo(u8 command)
3034                     ; 636 {
3035                     	switch	.text
3036  03e5               _DALIP_Ext_Cmd_Is_Answer_YesNo:
3040                     ; 637     return 0;
3042  03e5 4f            	clr	a
3045  03e6 81            	ret	
3083                     ; 644 u8 DALIP_Extended_Command(u8 command)
3083                     ; 645 {
3084                     	switch	.text
3085  03e7               _DALIP_Extended_Command:
3089                     ; 646   switch (command)
3092                     ; 682     case 254: /* Query min fast fade time */
3092                     ; 683       return 1;
3093  03e7 a0e3          	sub	a,#227
3094  03e9 2720          	jreq	L1321
3095  03eb 4a            	dec	a
3096  03ec 2730          	jreq	L3321
3097  03ee a009          	sub	a,#9
3098  03f0 273d          	jreq	L5321
3099  03f2 4a            	dec	a
3100  03f3 273d          	jreq	L7321
3101  03f5 4a            	dec	a
3102  03f6 273d          	jreq	L1421
3103  03f8 4a            	dec	a
3104  03f9 270f          	jreq	L7221
3105  03fb 4a            	dec	a
3106  03fc 2738          	jreq	L3421
3107  03fe a00b          	sub	a,#11
3108  0400 2735          	jreq	L5421
3109  0402 4a            	dec	a
3110  0403 273b          	jreq	L7421
3111  0405 4a            	dec	a
3112  0406 273b          	jreq	L1521
3113  0408 203b          	jra	L3721
3114  040a               L7221:
3115                     ; 648     case 240: /* Query Features */
3115                     ; 649       return 0;
3119  040a 81            	ret	
3120  040b               L1321:
3121                     ; 650     case 227: /* Select dimming curve */
3121                     ; 651       if (dtr == 1)
3123  040b b600          	ld	a,_dtr
3124  040d 4a            	dec	a
3125  040e 2606          	jrne	L5721
3126                     ; 653         DALIP_CurveType = 1;
3128  0410 35010001      	mov	_DALIP_CurveType,#1
3130  0414 2006          	jra	L7721
3131  0416               L5721:
3132                     ; 656       else if(dtr == 0)
3134  0416 b600          	ld	a,_dtr
3135  0418 2602          	jrne	L7721
3136                     ; 658         DALIP_CurveType = 0;
3138  041a b701          	ld	_DALIP_CurveType,a
3139  041c               L7721:
3140                     ; 661       return 0;
3142  041c 4f            	clr	a
3145  041d 81            	ret	
3146  041e               L3321:
3147                     ; 662     case 228: /* Store DTR as fast fade time */
3147                     ; 663       if (dtr > 27)
3149  041e b600          	ld	a,_dtr
3150  0420 a11c          	cp	a,#28
3151  0422 2506          	jrult	L3031
3152                     ; 665         DALIP_FastFade = 27;
3154  0424 351b0000      	mov	_DALIP_FastFade,#27
3155                     ; 666         return 0;
3157  0428 4f            	clr	a
3160  0429 81            	ret	
3161  042a               L3031:
3162                     ; 668       DALIP_FastFade = dtr;
3164  042a 450000        	mov	_DALIP_FastFade,_dtr
3165                     ; 669       return 0;
3167  042d 4f            	clr	a
3170  042e 81            	ret	
3171  042f               L5321:
3172                     ; 670     case 237: /* Query gear type */
3172                     ; 671       return 9; /* 0x09 = LED supply integrated, DC supply possible */
3174  042f a609          	ld	a,#9
3177  0431 81            	ret	
3178  0432               L7321:
3179                     ; 672     case 238: /* Query dimming curve */
3179                     ; 673       return DALIP_CurveType;
3181  0432 b601          	ld	a,_DALIP_CurveType
3184  0434 81            	ret	
3185  0435               L1421:
3186                     ; 674     case 239: /* Query possible operation modes */
3186                     ; 675       return 1; /* 0x01 = PWM regulation is possible */
3188  0435 4c            	inc	a
3191  0436               L3421:
3192                     ; 676     case 241: /* Query failure status */
3192                     ; 677       return 0; /* 0 = no error */
3196  0436 81            	ret	
3197  0437               L5421:
3198                     ; 678     case 252: /* Query operation mode */
3198                     ; 679       return (1 + (DALIP_CurveType << 4)); /* 1 = PWM operation, and lin/log curve */
3200  0437 b601          	ld	a,_DALIP_CurveType
3201  0439 97            	ld	xl,a
3202  043a a610          	ld	a,#16
3203  043c 42            	mul	x,a
3204  043d 9f            	ld	a,xl
3205  043e 4c            	inc	a
3208  043f 81            	ret	
3209  0440               L7421:
3210                     ; 680     case 253: /* Query fast fade time */
3210                     ; 681       return DALIP_FastFade;
3212  0440 b600          	ld	a,_DALIP_FastFade
3215  0442 81            	ret	
3216  0443               L1521:
3217                     ; 682     case 254: /* Query min fast fade time */
3217                     ; 683       return 1;
3219  0443 4c            	inc	a
3222  0444 81            	ret	
3223  0445               L3721:
3224                     ; 685     return 0;
3226  0445 4f            	clr	a
3229  0446 81            	ret	
3253                     ; 691 u8 DALIP_Extended_Version_Number(void)
3253                     ; 692 {
3254                     	switch	.text
3255  0447               _DALIP_Extended_Version_Number:
3259                     ; 693   return 1;
3261  0447 a601          	ld	a,#1
3264  0449 81            	ret	
3412                     	xdef	_DALIP_SetPowerFailureFlag
3413                     	xdef	_DALIP_ConvertARC
3414                     	xdef	_LightControlCallback
3415                     	xdef	_DALIP_HW_LIGHT_Set
3416                     	xdef	_ROMRegs
3417                     	xref	_DALIP_ArcTable
3418                     	xref	_DALIP_FadeRateTable
3419                     	xref	_DALIP_FadeTimeTable
3420                     	xref.b	_dtr
3421                     	xdef	_DALIP_CurveType
3422                     	xdef	_DALIP_FastFade
3423                     	switch	.ubsct
3424  0000               _DALIP_bEnable_DAPC:
3425  0000 00            	ds.b	1
3426                     	xdef	_DALIP_bEnable_DAPC
3427  0001               _DALIP_FadeGoal:
3428  0001 00            	ds.b	1
3429                     	xdef	_DALIP_FadeGoal
3430  0002               _DALIP_DTR:
3431  0002 00            	ds.b	1
3432                     	xdef	_DALIP_DTR
3433  0003               _DALIP_iMinLevel:
3434  0003 00            	ds.b	1
3435                     	xdef	_DALIP_iMinLevel
3436  0004               _DALIP_iMaxLevel:
3437  0004 00            	ds.b	1
3438                     	xdef	_DALIP_iMaxLevel
3439  0005               _DALIP_bOff_AfterFade:
3440  0005 00            	ds.b	1
3441                     	xdef	_DALIP_bOff_AfterFade
3442  0006               _DALIP_bIncrease:
3443  0006 00            	ds.b	1
3444                     	xdef	_DALIP_bIncrease
3445  0007               _DALIP_iChangeCountdown:
3446  0007 00000000      	ds.b	4
3447                     	xdef	_DALIP_iChangeCountdown
3448  000b               _DALIP_iChangeEvery:
3449  000b 00000000      	ds.b	4
3450                     	xdef	_DALIP_iChangeEvery
3451  000f               _Physically_Selected:
3452  000f 00            	ds.b	1
3453                     	xdef	_Physically_Selected
3454                     	xref	_E2_ReadMem
3455                     	xref	_E2_WriteBurst
3456                     	xref	_E2_WriteMem
3457                     	xref	_RTC_DoneDAPCTimer
3458                     	xref	_RTC_LaunchDAPCTimer
3459                     	xref	_RTC_DoneUserTimer
3460                     	xref	_RTC_LaunchUserTimer
3461                     	xref	_PowerOnTimerReset
3462                     	xref	_DALIR_ReadStatusBit
3463                     	xref	_DALIR_WriteStatusBit
3464                     	xref	_DALIR_WriteReg
3465                     	xref	_DALIR_ReadReg
3466                     	xdef	_DALIP_Extended_Version_Number
3467                     	xdef	_DALIP_Extended_Command
3468                     	xdef	_DALIP_Ext_Cmd_Is_Answer_YesNo
3469                     	xdef	_DALIP_Ext_Cmd_Is_Answer_Required
3470                     	xdef	_DALIP_Is_Physically_Selected
3471                     	xdef	_DALIP_What_Device_Type
3472                     	xdef	_DALIP_Try_DAPC_Sequence
3473                     	xdef	_DALIP_Stop_DAPC_Sequence
3474                     	xdef	_DALIP_Enable_DAPC_Sequence
3475                     	xdef	_DALIP_On_And_Step_Up
3476                     	xdef	_DALIP_Step_Down_And_Off
3477                     	xdef	_DALIP_Recall_Min_Level
3478                     	xdef	_DALIP_Recall_Max_Level
3479                     	xdef	_DALIP_Step_Down
3480                     	xdef	_DALIP_Step_Up
3481                     	xdef	_DALIP_Down
3482                     	xdef	_DALIP_Up
3483                     	xdef	_DALIP_Off
3484                     	xdef	_DALIP_Direct_Arc_NoFade
3485                     	xdef	_DALIP_Direct_Arc
3486                     	xdef	_DALIP_Reserved_Special_Function
3487                     	xdef	_DALIP_Reserved_Function
3488                     	xdef	_DALIP_Write_E2_Buffer
3489                     	xdef	_DALIP_Write_E2
3490                     	xdef	_DALIP_Read_E2
3491                     	xdef	_DALIP_EEPROM_Size
3492                     	xdef	_DALIP_GetPhysMinLevel
3493                     	xdef	_DALIP_GetVersion
3494                     	xdef	_DALIP_GetStatus
3495                     	xdef	_DALIP_GetSysFailureLevel
3496                     	xdef	_DALIP_GetPowerOnLevel
3497                     	xdef	_DALIP_GetMinLevel
3498                     	xdef	_DALIP_GetMaxLevel
3499                     	xdef	_DALIP_GetFadeRate
3500                     	xdef	_DALIP_GetFadeTime
3501                     	xdef	_DALIP_GetArc
3502                     	xdef	_DALIP_SetFadeReadyFlag
3503                     	xdef	_DALIP_SetLampPowerOnFlag
3504                     	xdef	_DALIP_SetLampFailureFlag
3505                     	xdef	_DALIP_SetBallastStatusFlag
3506                     	xdef	_DALIP_SetArc
3507                     	xdef	_DALIP_TimerCallback
3508                     	xdef	_DALIP_DoneTimer
3509                     	xdef	_DALIP_LaunchTimer
3510                     	xdef	_DALIP_Init
3511                     	xref.b	c_x
3531                     	xref	c_uitolx
3532                     	xref	c_ldiv
3533                     	xref	c_itol
3534                     	xref	c_smul
3535                     	xref	c_rtol
3536                     	xref	c_itolx
3537                     	xref	c_lzmp
3538                     	xref	c_lgadd
3539                     	xref	c_ltor
3540                     	xref	c_lgsbc
3541                     	end
