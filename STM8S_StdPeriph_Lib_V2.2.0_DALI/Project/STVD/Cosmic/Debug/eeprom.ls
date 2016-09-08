   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
2824                     ; 44 void EEPROM_Init(void)
2824                     ; 45 {
2826                     	switch	.text
2827  0000               _EEPROM_Init:
2831                     ; 47   FLASH->DUKR = 0xAE;
2833  0000 35ae5064      	mov	20580,#174
2834                     ; 48   FLASH->DUKR = 0x56;
2836  0004 35565064      	mov	20580,#86
2837                     ; 50   if ((eeprom_variable[0]=='T') && (eeprom_variable[1]=='G') && (eeprom_variable[2]==8) && (eeprom_variable[3]==0x00))
2840  0008 c60000        	ld	a,_eeprom_variable
2841  000b a154          	cp	a,#84
2842  000d 2616          	jrne	L1002
2844  000f c60001        	ld	a,_eeprom_variable+1
2845  0012 a147          	cp	a,#71
2846  0014 260f          	jrne	L1002
2848  0016 c60002        	ld	a,_eeprom_variable+2
2849  0019 a108          	cp	a,#8
2850  001b 2608          	jrne	L1002
2852  001d c60003        	ld	a,_eeprom_variable+3
2853  0020 2603          	jrne	L1002
2854                     ; 52     DALIR_LoadRegsFromE2();  // short_addr = E2_ReadMem(DALIREG_SHORT_ADDRESS - DALIREG_EEPROM_START);
2859  0022 cc0000        	jp	_DALIR_LoadRegsFromE2
2860  0025               L1002:
2861                     ; 56     DALIR_DeleteShort();
2863  0025 cd0000        	call	_DALIR_DeleteShort
2865                     ; 57     DALIR_ResetRegs();
2867  0028 cd0000        	call	_DALIR_ResetRegs
2869                     ; 58     E2_ResetEEPROM();
2872                     ; 61 }
2876  002b 2000          	jp	_E2_ResetEEPROM
2900                     ; 63 void E2_ResetEEPROM(void)
2900                     ; 64 {
2901                     	switch	.text
2902  002d               _E2_ResetEEPROM:
2906                     ; 66   eeprom_variable[0] = 'T';   //"TG80" is written  in the EEPROM
2909  002d a654          	ld	a,#84
2910  002f ae0000        	ldw	x,#_eeprom_variable
2911  0032 cd0000        	call	c_eewrc
2913                     ; 68   eeprom_variable[1] = 'G';   //This allows to check later that the EEPROM content is valid.
2916  0035 a647          	ld	a,#71
2917  0037 ae0001        	ldw	x,#_eeprom_variable+1
2918  003a cd0000        	call	c_eewrc
2920                     ; 70   eeprom_variable[2] = 8;
2923  003d a608          	ld	a,#8
2924  003f ae0002        	ldw	x,#_eeprom_variable+2
2925  0042 cd0000        	call	c_eewrc
2927                     ; 72   eeprom_variable[3] = 0x00;
2930  0045 4f            	clr	a
2931  0046 ae0003        	ldw	x,#_eeprom_variable+3
2933                     ; 74 }
2937  0049 cc0000        	jp	c_eewrc
2981                     ; 76 void E2_WriteMem(u8 addr, u8 val)
2981                     ; 77 {
2982                     	switch	.text
2983  004c               _E2_WriteMem:
2985  004c 89            	pushw	x
2986       00000000      OFST:	set	0
2989                     ; 79   if (eeprom_variable[addr+4] !=val)
2992  004d 9e            	ld	a,xh
2993  004e 5f            	clrw	x
2994  004f 97            	ld	xl,a
2995  0050 d60004        	ld	a,(_eeprom_variable+4,x)
2996  0053 1102          	cp	a,(OFST+2,sp)
2997  0055 270c          	jreq	L7302
2998                     ; 80     eeprom_variable[addr+4] = val;
3000  0057 7b01          	ld	a,(OFST+1,sp)
3001  0059 5f            	clrw	x
3002  005a 97            	ld	xl,a
3003  005b 7b02          	ld	a,(OFST+2,sp)
3004  005d 1c0004        	addw	x,#_eeprom_variable+4
3005  0060 cd0000        	call	c_eewrc
3007  0063               L7302:
3008                     ; 82 }
3012  0063 85            	popw	x
3013  0064 81            	ret	
3085                     ; 84 void E2_WriteBurst(u8 addr, u8 times, u8 *buf)
3085                     ; 85 {
3086                     	switch	.text
3087  0065               _E2_WriteBurst:
3089  0065 89            	pushw	x
3090  0066 5203          	subw	sp,#3
3091       00000003      OFST:	set	3
3094                     ; 88   address = addr + 4;
3097  0068 9e            	ld	a,xh
3098  0069 ab04          	add	a,#4
3099  006b 6b02          	ld	(OFST-1,sp),a
3100                     ; 89   i = 0;
3102  006d 0f03          	clr	(OFST+0,sp)
3104  006f 2032          	jra	L3012
3105  0071               L7702:
3106                     ; 92     if (eeprom_variable[address+i] != buf[i])
3108  0071 7b08          	ld	a,(OFST+5,sp)
3109  0073 97            	ld	xl,a
3110  0074 7b09          	ld	a,(OFST+6,sp)
3111  0076 1b03          	add	a,(OFST+0,sp)
3112  0078 2401          	jrnc	L42
3113  007a 5c            	incw	x
3114  007b               L42:
3115  007b 02            	rlwa	x,a
3116  007c f6            	ld	a,(x)
3117  007d 6b01          	ld	(OFST-2,sp),a
3118  007f 5f            	clrw	x
3119  0080 7b02          	ld	a,(OFST-1,sp)
3120  0082 1b03          	add	a,(OFST+0,sp)
3121  0084 59            	rlcw	x
3122  0085 02            	rlwa	x,a
3123  0086 d60000        	ld	a,(_eeprom_variable,x)
3124  0089 1101          	cp	a,(OFST-2,sp)
3125  008b 2714          	jreq	L7012
3126                     ; 93       eeprom_variable[address+i] = buf[i];
3128  008d 89            	pushw	x
3129  008e 7b0a          	ld	a,(OFST+7,sp)
3130  0090 97            	ld	xl,a
3131  0091 7b0b          	ld	a,(OFST+8,sp)
3132  0093 1b05          	add	a,(OFST+2,sp)
3133  0095 2401          	jrnc	L23
3134  0097 5c            	incw	x
3135  0098               L23:
3136  0098 02            	rlwa	x,a
3137  0099 f6            	ld	a,(x)
3138  009a 85            	popw	x
3139  009b 1c0000        	addw	x,#_eeprom_variable
3140  009e cd0000        	call	c_eewrc
3142  00a1               L7012:
3143                     ; 94     i++;
3145  00a1 0c03          	inc	(OFST+0,sp)
3147  00a3               L3012:
3148                     ; 90   while (times--)
3150  00a3 7b05          	ld	a,(OFST+2,sp)
3151  00a5 0a05          	dec	(OFST+2,sp)
3152  00a7 4d            	tnz	a
3153  00a8 26c7          	jrne	L7702
3154                     ; 97 }
3157  00aa 5b05          	addw	sp,#5
3158  00ac 81            	ret	
3193                     ; 99 u8 E2_ReadMem(u8 addr)
3193                     ; 100 {
3194                     	switch	.text
3195  00ad               _E2_ReadMem:
3199                     ; 102   return eeprom_variable[addr+4];
3202  00ad 5f            	clrw	x
3203  00ae 97            	ld	xl,a
3204  00af d60004        	ld	a,(_eeprom_variable+4,x)
3207  00b2 81            	ret	
3232                     	xdef	_E2_ResetEEPROM
3233                     .eeprom:	section	.data
3234  0000               _eeprom_variable:
3235  0000 000000000000  	ds.b	125
3236                     	xdef	_eeprom_variable
3237                     	xref	_DALIR_DeleteShort
3238                     	xref	_DALIR_LoadRegsFromE2
3239                     	xref	_DALIR_ResetRegs
3240                     	xdef	_E2_ReadMem
3241                     	xdef	_E2_WriteBurst
3242                     	xdef	_E2_WriteMem
3243                     	xdef	_EEPROM_Init
3263                     	xref	c_eewrc
3264                     	end
