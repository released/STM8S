   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  51                     ; 41 void Timer_Lite_Init(void)
  51                     ; 42 {
  53                     	switch	.text
  54  0000               _Timer_Lite_Init:
  58                     ; 43   PowerOnTimerActive = 600; //600 ms timeout after power up
  60  0000 ae0258        	ldw	x,#600
  61  0003 bf02          	ldw	_PowerOnTimerActive,x
  62                     ; 44   UserTimerActive = 0;
  64  0005 3f05          	clr	_UserTimerActive
  65                     ; 45   DAPCTimerActive = 0;
  67  0007 3f04          	clr	_DAPCTimerActive
  68                     ; 46 }
  71  0009 81            	ret	
  95                     ; 48 void PowerOnTimerReset(void)
  95                     ; 49 {
  96                     	switch	.text
  97  000a               _PowerOnTimerReset:
 101                     ; 50   PowerOnTimerActive = 0;
 103  000a 5f            	clrw	x
 104  000b bf02          	ldw	_PowerOnTimerActive,x
 105                     ; 51 }
 108  000d 81            	ret	
 145                     ; 53 void RTC_LaunchBigTimer(u8 mins)
 145                     ; 54 {
 146                     	switch	.text
 147  000e               _RTC_LaunchBigTimer:
 151                     ; 55   bigtimertics = 60000; /* 60000*1ms=1mn*/
 153  000e aeea60        	ldw	x,#60000
 154  0011 bf06          	ldw	_bigtimertics,x
 155                     ; 56   bigtimermins = mins-1; /* Timer is launched for (mins-1)*1mn (basically 15mn, see DALI specifications)*/
 157  0013 4a            	dec	a
 158  0014 b708          	ld	_bigtimermins,a
 159                     ; 57   RealTimeClock_BigTimer = 1;
 161  0016 3501000d      	mov	_RealTimeClock_BigTimer,#1
 162                     ; 58 }
 165  001a 81            	ret	
 200                     ; 60 void RTC_LaunchTimer(u16 timer_value)
 200                     ; 61 {
 201                     	switch	.text
 202  001b               _RTC_LaunchTimer:
 206                     ; 62   RealTimeClock_TimerCountDown=timer_value;
 208  001b bf0b          	ldw	_RealTimeClock_TimerCountDown,x
 209                     ; 63 }
 212  001d 81            	ret	
 248                     ; 65 void RTC_LaunchUserTimer(u8 TimerCount)
 248                     ; 66 {
 249                     	switch	.text
 250  001e               _RTC_LaunchUserTimer:
 254                     ; 67   UserTimerActive=TimerCount;
 256  001e b705          	ld	_UserTimerActive,a
 257                     ; 68 }
 260  0020 81            	ret	
 284                     ; 70 void RTC_DoneUserTimer(void)
 284                     ; 71 {
 285                     	switch	.text
 286  0021               _RTC_DoneUserTimer:
 290                     ; 72   UserTimerActive=0;
 292  0021 3f05          	clr	_UserTimerActive
 293                     ; 73 }
 296  0023 81            	ret	
 321                     ; 75 void RTC_LaunchDAPCTimer(void)
 321                     ; 76 {
 322                     	switch	.text
 323  0024               _RTC_LaunchDAPCTimer:
 327                     ; 77   DAPCTimerActive=200;
 329  0024 35c80004      	mov	_DAPCTimerActive,#200
 330                     ; 78 }
 333  0028 81            	ret	
 357                     ; 80 void RTC_DoneDAPCTimer(void)
 357                     ; 81 {
 358                     	switch	.text
 359  0029               _RTC_DoneDAPCTimer:
 363                     ; 82   DAPCTimerActive=0;
 365  0029 3f04          	clr	_DAPCTimerActive
 366                     ; 83 }
 369  002b 81            	ret	
 401                     ; 85 u8 Process_Lite_timer_IT(void)
 401                     ; 86 {
 402                     	switch	.text
 403  002c               _Process_Lite_timer_IT:
 407                     ; 87   if (UserTimerActive)
 409  002c b605          	ld	a,_UserTimerActive
 410  002e 270f          	jreq	L341
 411                     ; 89     if (UserTimerActive!=0xFF) UserTimerActive--;
 413  0030 4c            	inc	a
 414  0031 2702          	jreq	L541
 417  0033 3a05          	dec	_UserTimerActive
 418  0035               L541:
 419                     ; 90     DALIP_TimerCallback();
 421  0035 cd0000        	call	_DALIP_TimerCallback
 423                     ; 91     if (UserTimerActive==0)
 425  0038 b605          	ld	a,_UserTimerActive
 426  003a 2603          	jrne	L341
 427                     ; 92       DALIP_SetFadeReadyFlag(0); /* fade is ready */
 429  003c cd0000        	call	_DALIP_SetFadeReadyFlag
 431  003f               L341:
 432                     ; 94   if (PowerOnTimerActive)
 434  003f be02          	ldw	x,_PowerOnTimerActive
 435  0041 2708          	jreq	L151
 436                     ; 96     PowerOnTimerActive--;
 438  0043 5a            	decw	x
 439  0044 bf02          	ldw	_PowerOnTimerActive,x
 440                     ; 97     if (!PowerOnTimerActive)
 442  0046 2603          	jrne	L151
 443                     ; 99       DALIC_PowerOn();
 445  0048 cd0000        	call	_DALIC_PowerOn
 447  004b               L151:
 448                     ; 103   if (DAPCTimerActive)
 450  004b b604          	ld	a,_DAPCTimerActive
 451  004d 2707          	jreq	L551
 452                     ; 105     DAPCTimerActive--;
 454  004f 3a04          	dec	_DAPCTimerActive
 455                     ; 106     if (!DAPCTimerActive)
 457  0051 2603          	jrne	L551
 458                     ; 108       DALIP_Stop_DAPC_Sequence();
 460  0053 cd0000        	call	_DALIP_Stop_DAPC_Sequence
 462  0056               L551:
 463                     ; 112   lite_timer_IT_state=0;
 465  0056 3f0e          	clr	_lite_timer_IT_state
 466                     ; 113   return (UserTimerActive + PowerOnTimerActive + DAPCTimerActive);
 468  0058 b605          	ld	a,_UserTimerActive
 469  005a bb03          	add	a,_PowerOnTimerActive+1
 470  005c bb04          	add	a,_DAPCTimerActive
 473  005e 81            	ret	
 502                     ; 118 void Lite_timer_Interrupt(void)
 502                     ; 119 {
 503                     	switch	.text
 504  005f               _Lite_timer_Interrupt:
 508                     ; 120     if (bigtimertics)
 510  005f be06          	ldw	x,_bigtimertics
 511  0061 2703          	jreq	L171
 512                     ; 122       bigtimertics--;
 514  0063 5a            	decw	x
 516  0064 2009          	jp	LC001
 517  0066               L171:
 518                     ; 126       if (bigtimermins)
 520  0066 b608          	ld	a,_bigtimermins
 521  0068 2709          	jreq	L571
 522                     ; 128         bigtimermins--;
 524  006a 3a08          	dec	_bigtimermins
 525                     ; 129         bigtimertics = 60000;  /* 60000*1ms=1mn*/
 527  006c aeea60        	ldw	x,#60000
 528  006f               LC001:
 529  006f bf06          	ldw	_bigtimertics,x
 531  0071 2002          	jra	L371
 532  0073               L571:
 533                     ; 133         RealTimeClock_BigTimer = 0;
 535  0073 b70d          	ld	_RealTimeClock_BigTimer,a
 536  0075               L371:
 537                     ; 136     if (RealTimeClock_TimerCountDown)
 539  0075 be0b          	ldw	x,_RealTimeClock_TimerCountDown
 540  0077 2703          	jreq	L102
 541                     ; 138       RealTimeClock_TimerCountDown--;
 543  0079 5a            	decw	x
 544  007a bf0b          	ldw	_RealTimeClock_TimerCountDown,x
 545  007c               L102:
 546                     ; 140     lite_timer_IT_state=1;
 548  007c 3501000e      	mov	_lite_timer_IT_state,#1
 549                     ; 141 }
 552  0080 81            	ret	
 660                     	switch	.ubsct
 661  0000               _BusFailureTimer:
 662  0000 0000          	ds.b	2
 663                     	xdef	_BusFailureTimer
 664  0002               _PowerOnTimerActive:
 665  0002 0000          	ds.b	2
 666                     	xdef	_PowerOnTimerActive
 667  0004               _DAPCTimerActive:
 668  0004 00            	ds.b	1
 669                     	xdef	_DAPCTimerActive
 670  0005               _UserTimerActive:
 671  0005 00            	ds.b	1
 672                     	xdef	_UserTimerActive
 673  0006               _bigtimertics:
 674  0006 0000          	ds.b	2
 675                     	xdef	_bigtimertics
 676  0008               _bigtimermins:
 677  0008 00            	ds.b	1
 678                     	xdef	_bigtimermins
 679  0009               _timercounter:
 680  0009 0000          	ds.b	2
 681                     	xdef	_timercounter
 682                     	xref	_DALIC_PowerOn
 683                     	xref	_DALIP_Stop_DAPC_Sequence
 684                     	xref	_DALIP_SetFadeReadyFlag
 685                     	xref	_DALIP_TimerCallback
 686  000b               _RealTimeClock_TimerCountDown:
 687  000b 0000          	ds.b	2
 688                     	xdef	_RealTimeClock_TimerCountDown
 689  000d               _RealTimeClock_BigTimer:
 690  000d 00            	ds.b	1
 691                     	xdef	_RealTimeClock_BigTimer
 692                     	xdef	_Lite_timer_Interrupt
 693                     	xdef	_Process_Lite_timer_IT
 694                     	xdef	_RTC_DoneDAPCTimer
 695                     	xdef	_RTC_LaunchDAPCTimer
 696                     	xdef	_RTC_DoneUserTimer
 697                     	xdef	_RTC_LaunchUserTimer
 698                     	xdef	_RTC_LaunchTimer
 699                     	xdef	_RTC_LaunchBigTimer
 700                     	xdef	_PowerOnTimerReset
 701                     	xdef	_Timer_Lite_Init
 702  000e               _lite_timer_IT_state:
 703  000e 00            	ds.b	1
 704                     	xdef	_lite_timer_IT_state
 724                     	end
