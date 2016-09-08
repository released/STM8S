   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.19 - 04 Sep 2013
   3                     ; Generator (Limited) V4.3.11 - 04 Sep 2013
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  20                     .eeprom:	section	.data
  21  0000               _membanks:
  22  0000 1f            	dc.b	31
  23  0001 65            	dc.b	101
  24  0002 01            	dc.b	1
  25  0003 00            	dc.b	0
  26  0004 01            	dc.b	1
  27  0005 02            	dc.b	2
  28  0006 03            	dc.b	3
  29  0007 04            	dc.b	4
  30  0008 05            	dc.b	5
  31  0009 01            	dc.b	1
  32  000a 00            	dc.b	0
  33  000b 00            	dc.b	0
  34  000c 00            	dc.b	0
  35  000d 00            	dc.b	0
  36  000e 01            	dc.b	1
  37  000f 53            	dc.b	83
  38  0010 54            	dc.b	84
  39  0011 4d            	dc.b	77
  40  0012 38            	dc.b	56
  41  0013 44            	dc.b	68
  42  0014 41            	dc.b	65
  43  0015 4c            	dc.b	76
  44  0016 49            	dc.b	73
  45  0017 20            	dc.b	32
  46  0018 6c            	dc.b	108
  47  0019 69            	dc.b	105
  48  001a 62            	dc.b	98
  49  001b 72            	dc.b	114
  50  001c 61            	dc.b	97
  51  001d 72            	dc.b	114
  52  001e 79            	dc.b	121
  53  001f 2e            	dc.b	46
  54  0020 1f            	dc.b	31
  55  0021 1e            	dc.b	30
  56  0022 ff            	dc.b	255
  57  0023 ff            	dc.b	255
  58  0024 ff            	dc.b	255
  59  0025 ff            	dc.b	255
  60  0026 ff            	dc.b	255
  61  0027 ff            	dc.b	255
  62  0028 ff            	dc.b	255
  63  0029 ff            	dc.b	255
  64  002a ff            	dc.b	255
  65  002b ff            	dc.b	255
  66  002c ff            	dc.b	255
  67  002d ff            	dc.b	255
  68  002e ff            	dc.b	255
  69  002f ff            	dc.b	255
  70  0030 ff            	dc.b	255
  71  0031 ff            	dc.b	255
  72  0032 ff            	dc.b	255
  73  0033 ff            	dc.b	255
  74  0034 ff            	dc.b	255
  75  0035 ff            	dc.b	255
  76  0036 ff            	dc.b	255
  77  0037 ff            	dc.b	255
  78  0038 ff            	dc.b	255
  79  0039 ff            	dc.b	255
  80  003a ff            	dc.b	255
  81  003b ff            	dc.b	255
  82  003c ff            	dc.b	255
  83  003d ff            	dc.b	255
  84  003e ff            	dc.b	255
  85  003f ff            	dc.b	255
  86                     .const:	section	.text
  87  0000               _normal_jt:
  89  0000 07b9          	dc.w	_DALIC_Off
  91  0002 0424          	dc.w	_DALIC_Up
  93  0004 0440          	dc.w	_DALIC_Down
  95  0006 044e          	dc.w	_DALIC_Step_Up
  97  0008 046a          	dc.w	_DALIC_Step_Down
  99  000a 02d0          	dc.w	_DALIC_Recall_Max_Level
 101  000c 02e8          	dc.w	_DALIC_Recall_Min_Level
 103  000e 07d1          	dc.w	_DALIC_Step_Down_And_Off
 105  0010 07f3          	dc.w	_DALIC_On_And_Step_Up
 107  0012 0817          	dc.w	_DALIC_Enable_DAPC_Sequence
 109  0014 0000          	dc.w	_DALIP_Reserved_Function
 111  0016 0000          	dc.w	_DALIP_Reserved_Function
 113  0018 0000          	dc.w	_DALIP_Reserved_Function
 115  001a 0000          	dc.w	_DALIP_Reserved_Function
 117  001c 0000          	dc.w	_DALIP_Reserved_Function
 119  001e 0000          	dc.w	_DALIP_Reserved_Function
 121  0020 0300          	dc.w	_DALIC_Go_To_Scene
 123  0022 0300          	dc.w	_DALIC_Go_To_Scene
 125  0024 0300          	dc.w	_DALIC_Go_To_Scene
 127  0026 0300          	dc.w	_DALIC_Go_To_Scene
 129  0028 0300          	dc.w	_DALIC_Go_To_Scene
 131  002a 0300          	dc.w	_DALIC_Go_To_Scene
 133  002c 0300          	dc.w	_DALIC_Go_To_Scene
 135  002e 0300          	dc.w	_DALIC_Go_To_Scene
 137  0030 0300          	dc.w	_DALIC_Go_To_Scene
 139  0032 0300          	dc.w	_DALIC_Go_To_Scene
 141  0034 0300          	dc.w	_DALIC_Go_To_Scene
 143  0036 0300          	dc.w	_DALIC_Go_To_Scene
 145  0038 0300          	dc.w	_DALIC_Go_To_Scene
 147  003a 0300          	dc.w	_DALIC_Go_To_Scene
 149  003c 0300          	dc.w	_DALIC_Go_To_Scene
 151  003e 0300          	dc.w	_DALIC_Go_To_Scene
 153  0040 081a          	dc.w	_DALIC_Reset
 155  0042 0315          	dc.w	_DALIC_Store_Act_Level_To_DTR
 157  0044 0000          	dc.w	_DALIP_Reserved_Function
 159  0046 0000          	dc.w	_DALIP_Reserved_Function
 161  0048 0000          	dc.w	_DALIP_Reserved_Function
 163  004a 0000          	dc.w	_DALIP_Reserved_Function
 165  004c 0000          	dc.w	_DALIP_Reserved_Function
 167  004e 0000          	dc.w	_DALIP_Reserved_Function
 169  0050 0000          	dc.w	_DALIP_Reserved_Function
 171  0052 0000          	dc.w	_DALIP_Reserved_Function
 173  0054 087f          	dc.w	_DALIC_Store_DTR_As_Max_Level
 175  0056 08a8          	dc.w	_DALIC_Store_DTR_As_Min_Level
 177  0058 08d1          	dc.w	_DALIC_Store_DTR_As_System_Failure_Level
 179  005a 08d6          	dc.w	_DALIC_Store_DTR_As_Power_On_Level
 181  005c 08db          	dc.w	_DALIC_Store_DTR_As_Fade_Time
 183  005e 08f4          	dc.w	_DALIC_Store_DTR_As_Fade_Rate
 185  0060 0000          	dc.w	_DALIP_Reserved_Function
 187  0062 0000          	dc.w	_DALIP_Reserved_Function
 189  0064 0000          	dc.w	_DALIP_Reserved_Function
 191  0066 0000          	dc.w	_DALIP_Reserved_Function
 193  0068 0000          	dc.w	_DALIP_Reserved_Function
 195  006a 0000          	dc.w	_DALIP_Reserved_Function
 197  006c 0000          	dc.w	_DALIP_Reserved_Function
 199  006e 0000          	dc.w	_DALIP_Reserved_Function
 201  0070 0000          	dc.w	_DALIP_Reserved_Function
 203  0072 0000          	dc.w	_DALIP_Reserved_Function
 205  0074 0000          	dc.w	_DALIP_Reserved_Function
 207  0076 0000          	dc.w	_DALIP_Reserved_Function
 209  0078 0000          	dc.w	_DALIP_Reserved_Function
 211  007a 0000          	dc.w	_DALIP_Reserved_Function
 213  007c 0000          	dc.w	_DALIP_Reserved_Function
 215  007e 0000          	dc.w	_DALIP_Reserved_Function
 217  0080 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 219  0082 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 221  0084 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 223  0086 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 225  0088 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 227  008a 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 229  008c 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 231  008e 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 233  0090 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 235  0092 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 237  0094 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 239  0096 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 241  0098 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 243  009a 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 245  009c 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 247  009e 0914          	dc.w	_DALIC_Store_DTR_As_Scene
 249  00a0 0366          	dc.w	_DALIC_Remove_From_Scene
 251  00a2 0366          	dc.w	_DALIC_Remove_From_Scene
 253  00a4 0366          	dc.w	_DALIC_Remove_From_Scene
 255  00a6 0366          	dc.w	_DALIC_Remove_From_Scene
 257  00a8 0366          	dc.w	_DALIC_Remove_From_Scene
 259  00aa 0366          	dc.w	_DALIC_Remove_From_Scene
 261  00ac 0366          	dc.w	_DALIC_Remove_From_Scene
 263  00ae 0366          	dc.w	_DALIC_Remove_From_Scene
 265  00b0 0366          	dc.w	_DALIC_Remove_From_Scene
 267  00b2 0366          	dc.w	_DALIC_Remove_From_Scene
 269  00b4 0366          	dc.w	_DALIC_Remove_From_Scene
 271  00b6 0366          	dc.w	_DALIC_Remove_From_Scene
 273  00b8 0366          	dc.w	_DALIC_Remove_From_Scene
 275  00ba 0366          	dc.w	_DALIC_Remove_From_Scene
 277  00bc 0366          	dc.w	_DALIC_Remove_From_Scene
 279  00be 0366          	dc.w	_DALIC_Remove_From_Scene
 281  00c0 037e          	dc.w	_DALIC_Add_To_Group
 283  00c2 037e          	dc.w	_DALIC_Add_To_Group
 285  00c4 037e          	dc.w	_DALIC_Add_To_Group
 287  00c6 037e          	dc.w	_DALIC_Add_To_Group
 289  00c8 037e          	dc.w	_DALIC_Add_To_Group
 291  00ca 037e          	dc.w	_DALIC_Add_To_Group
 293  00cc 037e          	dc.w	_DALIC_Add_To_Group
 295  00ce 037e          	dc.w	_DALIC_Add_To_Group
 297  00d0 037e          	dc.w	_DALIC_Add_To_Group
 299  00d2 037e          	dc.w	_DALIC_Add_To_Group
 301  00d4 037e          	dc.w	_DALIC_Add_To_Group
 303  00d6 037e          	dc.w	_DALIC_Add_To_Group
 305  00d8 037e          	dc.w	_DALIC_Add_To_Group
 307  00da 037e          	dc.w	_DALIC_Add_To_Group
 309  00dc 037e          	dc.w	_DALIC_Add_To_Group
 311  00de 037e          	dc.w	_DALIC_Add_To_Group
 313  00e0 03d0          	dc.w	_DALIC_Remove_From_Group
 315  00e2 03d0          	dc.w	_DALIC_Remove_From_Group
 317  00e4 03d0          	dc.w	_DALIC_Remove_From_Group
 319  00e6 03d0          	dc.w	_DALIC_Remove_From_Group
 321  00e8 03d0          	dc.w	_DALIC_Remove_From_Group
 323  00ea 03d0          	dc.w	_DALIC_Remove_From_Group
 325  00ec 03d0          	dc.w	_DALIC_Remove_From_Group
 327  00ee 03d0          	dc.w	_DALIC_Remove_From_Group
 329  00f0 03d0          	dc.w	_DALIC_Remove_From_Group
 331  00f2 03d0          	dc.w	_DALIC_Remove_From_Group
 333  00f4 03d0          	dc.w	_DALIC_Remove_From_Group
 335  00f6 03d0          	dc.w	_DALIC_Remove_From_Group
 337  00f8 03d0          	dc.w	_DALIC_Remove_From_Group
 339  00fa 03d0          	dc.w	_DALIC_Remove_From_Group
 341  00fc 03d0          	dc.w	_DALIC_Remove_From_Group
 343  00fe 03d0          	dc.w	_DALIC_Remove_From_Group
 345  0100 0486          	dc.w	_DALIC_Store_DTR_As_Short
 347  0102 0969          	dc.w	_DALIC_Enable_Write_Memory
 349  0104 0000          	dc.w	_DALIP_Reserved_Function
 351  0106 0000          	dc.w	_DALIP_Reserved_Function
 353  0108 0000          	dc.w	_DALIP_Reserved_Function
 355  010a 0000          	dc.w	_DALIP_Reserved_Function
 357  010c 0000          	dc.w	_DALIP_Reserved_Function
 359  010e 0000          	dc.w	_DALIP_Reserved_Function
 361  0110 0000          	dc.w	_DALIP_Reserved_Function
 363  0112 0000          	dc.w	_DALIP_Reserved_Function
 365  0114 0000          	dc.w	_DALIP_Reserved_Function
 367  0116 0000          	dc.w	_DALIP_Reserved_Function
 369  0118 0000          	dc.w	_DALIP_Reserved_Function
 371  011a 0000          	dc.w	_DALIP_Reserved_Function
 373  011c 0000          	dc.w	_DALIP_Reserved_Function
 375  011e 0000          	dc.w	_DALIP_Reserved_Function
 377  0120 04b5          	dc.w	_DALIC_Query_Status
 379  0122 04bd          	dc.w	_DALIC_Query_Ballast
 381  0124 04c9          	dc.w	_DALIC_Query_Lamp_Failure
 383  0126 04d7          	dc.w	_DALIC_Query_Lamp_Power_On
 385  0128 04e5          	dc.w	_DALIC_Query_Limit_Error
 387  012a 04f3          	dc.w	_DALIC_Query_Reset_State
 389  012c 0501          	dc.w	_DALIC_Query_Missing_Short_Address
 391  012e 091b          	dc.w	_DALIC_Query_Reg_Version_Number
 393  0130 0515          	dc.w	_DALIC_Query_Content_DTR
 395  0132 0524          	dc.w	_DALIC_Query_Device_Type
 397  0134 0920          	dc.w	_DALIC_Query_Reg_Phys_Min_Level
 399  0136 052a          	dc.w	_DALIC_Query_Power_Failure
 401  0138 051a          	dc.w	_DALIC_Query_Content_DTR1
 403  013a 051f          	dc.w	_DALIC_Query_Content_DTR2
 405  013c 0000          	dc.w	_DALIP_Reserved_Function
 407  013e 0000          	dc.w	_DALIP_Reserved_Function
 409  0140 0925          	dc.w	_DALIC_Query_Reg_Actual_Dim_Level
 411  0142 0935          	dc.w	_DALIC_Query_Reg_Max_Level
 413  0144 093a          	dc.w	_DALIC_Query_Reg_Min_Level
 415  0146 093f          	dc.w	_DALIC_Query_Reg_Power_On_Level
 417  0148 0944          	dc.w	_DALIC_Query_Reg_System_Failure_Level
 419  014a 0538          	dc.w	_DALIC_Query_Fade_Time_Rate
 421  014c 0000          	dc.w	_DALIP_Reserved_Function
 423  014e 0000          	dc.w	_DALIP_Reserved_Function
 425  0150 0000          	dc.w	_DALIP_Reserved_Function
 427  0152 0000          	dc.w	_DALIP_Reserved_Function
 429  0154 0000          	dc.w	_DALIP_Reserved_Function
 431  0156 0000          	dc.w	_DALIP_Reserved_Function
 433  0158 0000          	dc.w	_DALIP_Reserved_Function
 435  015a 0000          	dc.w	_DALIP_Reserved_Function
 437  015c 0000          	dc.w	_DALIP_Reserved_Function
 439  015e 0000          	dc.w	_DALIP_Reserved_Function
 441  0160 0949          	dc.w	_DALIC_Query_Reg_Scene
 443  0162 0949          	dc.w	_DALIC_Query_Reg_Scene
 445  0164 0949          	dc.w	_DALIC_Query_Reg_Scene
 447  0166 0949          	dc.w	_DALIC_Query_Reg_Scene
 449  0168 0949          	dc.w	_DALIC_Query_Reg_Scene
 451  016a 0949          	dc.w	_DALIC_Query_Reg_Scene
 453  016c 0949          	dc.w	_DALIC_Query_Reg_Scene
 455  016e 0949          	dc.w	_DALIC_Query_Reg_Scene
 457  0170 0949          	dc.w	_DALIC_Query_Reg_Scene
 459  0172 0949          	dc.w	_DALIC_Query_Reg_Scene
 461  0174 0949          	dc.w	_DALIC_Query_Reg_Scene
 463  0176 0949          	dc.w	_DALIC_Query_Reg_Scene
 465  0178 0949          	dc.w	_DALIC_Query_Reg_Scene
 467  017a 0949          	dc.w	_DALIC_Query_Reg_Scene
 469  017c 0949          	dc.w	_DALIC_Query_Reg_Scene
 471  017e 0949          	dc.w	_DALIC_Query_Reg_Scene
 473  0180 0950          	dc.w	_DALIC_Query_Reg_Group_0_7
 475  0182 0955          	dc.w	_DALIC_Query_Reg_Group_8_15
 477  0184 095a          	dc.w	_DALIC_Query_Reg_Random_Address0
 479  0186 095f          	dc.w	_DALIC_Query_Reg_Random_Address1
 481  0188 0964          	dc.w	_DALIC_Query_Reg_Random_Address2
 483  018a 096e          	dc.w	_DALIC_Read_Memory_Location
 485  018c 0000          	dc.w	_DALIP_Reserved_Function
 487  018e 0000          	dc.w	_DALIP_Reserved_Function
 489  0190 0000          	dc.w	_DALIP_Reserved_Function
 491  0192 0000          	dc.w	_DALIP_Reserved_Function
 493  0194 0000          	dc.w	_DALIP_Reserved_Function
 495  0196 0000          	dc.w	_DALIP_Reserved_Function
 497  0198 0000          	dc.w	_DALIP_Reserved_Function
 499  019a 0000          	dc.w	_DALIP_Reserved_Function
 501  019c 0000          	dc.w	_DALIP_Reserved_Function
 503  019e 0000          	dc.w	_DALIP_Reserved_Function
 505  01a0 0000          	dc.w	_DALIP_Reserved_Function
 507  01a2 0000          	dc.w	_DALIP_Reserved_Function
 509  01a4 0000          	dc.w	_DALIP_Reserved_Function
 511  01a6 0000          	dc.w	_DALIP_Reserved_Function
 513  01a8 0000          	dc.w	_DALIP_Reserved_Function
 515  01aa 0000          	dc.w	_DALIP_Reserved_Function
 517  01ac 0000          	dc.w	_DALIP_Reserved_Function
 519  01ae 0000          	dc.w	_DALIP_Reserved_Function
 521  01b0 0000          	dc.w	_DALIP_Reserved_Function
 523  01b2 0000          	dc.w	_DALIP_Reserved_Function
 525  01b4 0000          	dc.w	_DALIP_Reserved_Function
 527  01b6 0000          	dc.w	_DALIP_Reserved_Function
 529  01b8 0000          	dc.w	_DALIP_Reserved_Function
 531  01ba 0000          	dc.w	_DALIP_Reserved_Function
 533  01bc 0000          	dc.w	_DALIP_Reserved_Function
 535  01be 0000          	dc.w	_DALIP_Reserved_Function
 537  01c0 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 539  01c2 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 541  01c4 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 543  01c6 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 545  01c8 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 547  01ca 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 549  01cc 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 551  01ce 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 553  01d0 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 555  01d2 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 557  01d4 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 559  01d6 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 561  01d8 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 563  01da 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 565  01dc 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 567  01de 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 569  01e0 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 571  01e2 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 573  01e4 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 575  01e6 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 577  01e8 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 579  01ea 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 581  01ec 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 583  01ee 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 585  01f0 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 587  01f2 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 589  01f4 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 591  01f6 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 593  01f8 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 595  01fa 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 597  01fc 0553          	dc.w	_DALIC_Query_Application_Extended_Commands
 599  01fe 0588          	dc.w	_DALIC_Query_Application_Extended_Version_Number
 600  0200               _special_jt:
 602  0200 0623          	dc.w	_DALIC_Terminate
 604  0202 077a          	dc.w	_DALIC_SetDTR
 606  0204 05ef          	dc.w	_DALIC_Initialize
 608  0206 062a          	dc.w	_DALIC_Randomize
 610  0208 0654          	dc.w	_DALIC_Compare
 612  020a 06dd          	dc.w	_DALIC_Withdraw
 614  020c 0000          	dc.w	_DALIP_Reserved_Special_Function
 616  020e 0000          	dc.w	_DALIP_Reserved_Special_Function
 618  0210 0783          	dc.w	_DALIC_SetSearchAddress0
 620  0212 0795          	dc.w	_DALIC_SetSearchAddress1
 622  0214 07a7          	dc.w	_DALIC_SetSearchAddress2
 624  0216 06ed          	dc.w	_DALIC_Program_Short_Address
 626  0218 0722          	dc.w	_DALIC_Verify_Short_Address
 628  021a 0749          	dc.w	_DALIC_Query_Short_Address
 630  021c 0762          	dc.w	_DALIC_Physical_Selection
 632  021e 0000          	dc.w	_DALIP_Reserved_Special_Function
 634  0220 076c          	dc.w	_DALIC_Enable_Device_Type_X
 636  0222 077d          	dc.w	_DALIC_SetDTR1
 638  0224 0780          	dc.w	_DALIC_SetDTR2
 640  0226 09aa          	dc.w	_DALIC_Write_Memory_Location
 673                     ; 480 void DALIC_Init(void)
 673                     ; 481 {
 675                     	switch	.text
 676  0000               _DALIC_Init:
 680                     ; 482     b_status_reg = 0;
 682  0000 3f00          	clr	L51_b_status_reg
 683                     ; 483     write_enable_membanks = 0;
 685  0002 3f03          	clr	L7_write_enable_membanks
 686                     ; 485     DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,1);		//ALAL to set the "power failure" bit after a power on (to solve error 6.1.5)
 688  0004 ae0701        	ldw	x,#1793
 689  0007 cd0000        	call	_DALIR_WriteStatusBit
 691                     ; 487     if (DALIR_ReadReg(DALIREG_SHORT_ADDRESS)==0xFF)
 693  000a a60b          	ld	a,#11
 694  000c cd0000        	call	_DALIR_ReadReg
 696  000f 4c            	inc	a
 697  0010 2606          	jrne	L53
 698                     ; 489         DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,1);
 700  0012 ae0601        	ldw	x,#1537
 701  0015 cd0000        	call	_DALIR_WriteStatusBit
 703  0018               L53:
 704                     ; 491 }
 707  0018 81            	ret	
 732                     ; 493 void  DALIC_PowerOn(void)
 732                     ; 494 {
 733                     	switch	.text
 734  0019               _DALIC_PowerOn:
 738                     ; 495 	if (DALIR_ReadReg(DALIREG_POWER_ON_LEVEL) != 255)
 740  0019 a605          	ld	a,#5
 741  001b cd0000        	call	_DALIR_ReadReg
 743  001e 4c            	inc	a
 744  001f 2704          	jreq	L74
 745                     ; 496 	  DALIC_Direct_Arc_NoFade(DALIR_ReadReg(DALIREG_POWER_ON_LEVEL));
 747  0021 a605          	ld	a,#5
 751  0023 2002          	jra	L15
 752  0025               L74:
 753                     ; 498 	  DALIC_Direct_Arc_NoFade(DALIR_ReadReg(DALIREG_MIN_LEVEL));
 755  0025 a607          	ld	a,#7
 758  0027               L15:
 759  0027 cd0000        	call	_DALIR_ReadReg
 760                     ; 499 }
 763  002a cc00b9        	jp	_DALIC_Direct_Arc_NoFade
 810                     ; 501 u8 DALIC_isTalkingToMe(void)
 810                     ; 502 {
 811                     	switch	.text
 812  002d               _DALIC_isTalkingToMe:
 814  002d 88            	push	a
 815       00000001      OFST:	set	1
 818                     ; 506 	ClrFlag(b_is_special);
 820  002e 72110000      	bres	L51_b_status_reg,#0
 821                     ; 508 	addr = dali_address;
 823  0032 b600          	ld	a,_dali_address
 824  0034 6b01          	ld	(OFST+0,sp),a
 825                     ; 510 	if (((addr & 0xE1) == 0xA1) || ((addr & 0xE1) == 0xC1))
 827  0036 a4e1          	and	a,#225
 828  0038 a1a1          	cp	a,#161
 829  003a 2708          	jreq	L77
 831  003c 7b01          	ld	a,(OFST+0,sp)
 832  003e a4e1          	and	a,#225
 833  0040 a1c1          	cp	a,#193
 834  0042 2606          	jrne	L57
 835  0044               L77:
 836                     ; 512 	  SetFlag(b_is_special);
 838  0044 72100000      	bset	L51_b_status_reg,#0
 839                     ; 513 	  return 1;
 841  0048 206a          	jp	LC001
 842  004a               L57:
 843                     ; 516 	if ((addr & 0xFE) == 0xFE)
 845  004a 7b01          	ld	a,(OFST+0,sp)
 846  004c a4fe          	and	a,#254
 847  004e a1fe          	cp	a,#254
 848  0050 2602          	jrne	L101
 849                     ; 517 	    return 1;        /* Broadcast */
 851  0052 2060          	jp	LC001
 852  0054               L101:
 853                     ; 519 	if ((addr & 0xE0) == 0x80)
 855  0054 7b01          	ld	a,(OFST+0,sp)
 856  0056 a4e0          	and	a,#224
 857  0058 a180          	cp	a,#128
 858  005a 2643          	jrne	L301
 859                     ; 521 		addr &= 0x1E;
 861  005c 7b01          	ld	a,(OFST+0,sp)
 862  005e a41e          	and	a,#30
 863  0060 44            	srl	a
 864  0061 6b01          	ld	(OFST+0,sp),a
 865                     ; 522 		addr = addr>>1;
 867                     ; 523 		if (addr<8)
 869  0063 a108          	cp	a,#8
 870  0065 2418          	jruge	L501
 871                     ; 525 		    zw = 1<<addr;
 873  0067 5f            	clrw	x
 874  0068 97            	ld	xl,a
 875  0069 a601          	ld	a,#1
 876  006b 5d            	tnzw	x
 877  006c 2704          	jreq	L23
 878  006e               L43:
 879  006e 48            	sll	a
 880  006f 5a            	decw	x
 881  0070 26fc          	jrne	L43
 882  0072               L23:
 883  0072 6b01          	ld	(OFST+0,sp),a
 884                     ; 527 		    if ((DALIR_ReadReg(DALIREG_GROUP_0_7) & zw) != 0)
 886  0074 a60f          	ld	a,#15
 887  0076 cd0000        	call	_DALIR_ReadReg
 889  0079 1401          	and	a,(OFST+0,sp)
 890  007b 271e          	jreq	L111
 891                     ; 528 		        return 1;  /* Ballast belongs to this group */
 893  007d 2035          	jp	LC001
 894  007f               L501:
 895                     ; 532 		 addr -= 8;
 897  007f a008          	sub	a,#8
 898  0081 6b01          	ld	(OFST+0,sp),a
 899                     ; 533 		 zw = 1<<addr;
 901  0083 5f            	clrw	x
 902  0084 97            	ld	xl,a
 903  0085 a601          	ld	a,#1
 904  0087 5d            	tnzw	x
 905  0088 2704          	jreq	L04
 906  008a               L24:
 907  008a 48            	sll	a
 908  008b 5a            	decw	x
 909  008c 26fc          	jrne	L24
 910  008e               L04:
 911  008e 6b01          	ld	(OFST+0,sp),a
 912                     ; 535 		 if ((DALIR_ReadReg(DALIREG_GROUP_8_15) & zw) != 0)
 914  0090 a610          	ld	a,#16
 915  0092 cd0000        	call	_DALIR_ReadReg
 917  0095 1401          	and	a,(OFST+0,sp)
 918  0097 2702          	jreq	L111
 919                     ; 536 		        return 1;
 921  0099 2019          	jp	LC001
 922  009b               L111:
 923                     ; 538 		return 0;
 925  009b 4f            	clr	a
 928  009c 5b01          	addw	sp,#1
 929  009e 81            	ret	
 930  009f               L301:
 931                     ; 541 	addr = addr|1; // to recognize the Short Address
 933  009f 7b01          	ld	a,(OFST+0,sp)
 934  00a1 aa01          	or	a,#1
 935  00a3 6b01          	ld	(OFST+0,sp),a
 936                     ; 543     if (addr ==DALIR_ReadReg(DALIREG_SHORT_ADDRESS) )
 938  00a5 a60b          	ld	a,#11
 939  00a7 cd0000        	call	_DALIR_ReadReg
 941  00aa 1101          	cp	a,(OFST+0,sp)
 942  00ac 2602          	jrne	L511
 943                     ; 544         return 1;  /* Command is directed to this ballast */
 945  00ae 2004          	jp	LC001
 946  00b0               L511:
 947                     ; 546 	return 0; /* ignore command */
 949  00b0 4f            	clr	a
 952  00b1 5b01          	addw	sp,#1
 953  00b3 81            	ret	
 954  00b4               LC001:
 955  00b4 a601          	ld	a,#1
 956                     ; 544         return 1;  /* Command is directed to this ballast */
 958  00b6 5b01          	addw	sp,#1
 959  00b8 81            	ret	
1008                     ; 550 void DALIC_Direct_Arc_NoFade(u8 val)
1008                     ; 551 {
1009                     	switch	.text
1010  00b9               _DALIC_Direct_Arc_NoFade:
1012  00b9 88            	push	a
1013  00ba 88            	push	a
1014       00000001      OFST:	set	1
1017                     ; 554 	if (val==255)
1019  00bb 4c            	inc	a
1020  00bc 2605          	jrne	L141
1021                     ; 556 		DALIP_DoneTimer();
1023  00be cd0000        	call	_DALIP_DoneTimer
1025                     ; 557 		return;
1027  00c1 2013          	jra	L201
1028  00c3               L141:
1029                     ; 560 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
1031  00c3 ae0201        	ldw	x,#513
1032  00c6 cd0000        	call	_DALIR_WriteStatusBit
1034                     ; 562 	if (val==0)
1036  00c9 7b02          	ld	a,(OFST+1,sp)
1037  00cb 260b          	jrne	L341
1038                     ; 564 		DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 0);
1040  00cd ae0200        	ldw	x,#512
1041  00d0 cd0000        	call	_DALIR_WriteStatusBit
1043                     ; 565 		DALIP_Off();
1045  00d3 cd0000        	call	_DALIP_Off
1047                     ; 566 		return;
1048  00d6               L201:
1051  00d6 85            	popw	x
1052  00d7 81            	ret	
1053  00d8               L341:
1054                     ; 568 	zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
1056  00d8 a607          	ld	a,#7
1057  00da cd0000        	call	_DALIR_ReadReg
1059  00dd 6b01          	ld	(OFST+0,sp),a
1060                     ; 569 	if (val < zw)
1062  00df 7b02          	ld	a,(OFST+1,sp)
1063  00e1 1101          	cp	a,(OFST+0,sp)
1064                     ; 571 		DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1066                     ; 572 		DALIP_Direct_Arc_NoFade(zw);
1068                     ; 573 		return;
1070  00e3 250d          	jrult	LC003
1071                     ; 575 	zw = DALIR_ReadReg(DALIREG_MAX_LEVEL);
1073  00e5 a608          	ld	a,#8
1074  00e7 cd0000        	call	_DALIR_ReadReg
1076  00ea 6b01          	ld	(OFST+0,sp),a
1077                     ; 576 	if (val > zw)
1079  00ec 7b02          	ld	a,(OFST+1,sp)
1080  00ee 1101          	cp	a,(OFST+0,sp)
1081  00f0 230a          	jrule	L741
1082                     ; 578 	    DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1085                     ; 579 	    DALIP_Direct_Arc_NoFade(zw);
1087  00f2               LC003:
1089  00f2 ae0301        	ldw	x,#769
1090  00f5 cd0000        	call	_DALIR_WriteStatusBit
1092  00f8 7b01          	ld	a,(OFST+0,sp)
1094                     ; 580 	    return;
1096  00fa 2008          	jp	LC002
1097  00fc               L741:
1098                     ; 582 	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
1100  00fc ae0300        	ldw	x,#768
1101  00ff cd0000        	call	_DALIR_WriteStatusBit
1103                     ; 583 	DALIP_Direct_Arc_NoFade(val);
1105  0102 7b02          	ld	a,(OFST+1,sp)
1106  0104               LC002:
1107  0104 cd0000        	call	_DALIP_Direct_Arc_NoFade
1109                     ; 584 }
1111  0107 20cd          	jra	L201
1159                     ; 587 void DALIC_Process_System_Failure(void)
1159                     ; 588 {
1160                     	switch	.text
1161  0109               _DALIC_Process_System_Failure:
1163  0109 89            	pushw	x
1164       00000002      OFST:	set	2
1167                     ; 592   val = DALIR_ReadReg(DALIREG_SYSTEM_FAILURE_LEVEL);
1169  010a a606          	ld	a,#6
1170  010c cd0000        	call	_DALIR_ReadReg
1172  010f 6b02          	ld	(OFST+0,sp),a
1173                     ; 593 	if (val!=255)
1175  0111 4c            	inc	a
1176  0112 272d          	jreq	L631
1177                     ; 595   	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
1179  0114 ae0201        	ldw	x,#513
1180  0117 cd0000        	call	_DALIR_WriteStatusBit
1182                     ; 597   	if (val==0)
1184  011a 7b02          	ld	a,(OFST+0,sp)
1185  011c 260b          	jrne	L571
1186                     ; 599   		DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 0);
1188  011e ae0200        	ldw	x,#512
1189  0121 cd0000        	call	_DALIR_WriteStatusBit
1191                     ; 600   		DALIP_Off();
1193  0124 cd0000        	call	_DALIP_Off
1195                     ; 601   		return;
1197  0127 2018          	jra	L631
1198  0129               L571:
1199                     ; 603   	zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
1201  0129 a607          	ld	a,#7
1202  012b cd0000        	call	_DALIR_ReadReg
1204  012e 6b01          	ld	(OFST-1,sp),a
1205                     ; 604   	if (val < zw)
1207  0130 7b02          	ld	a,(OFST+0,sp)
1208  0132 1101          	cp	a,(OFST-1,sp)
1209  0134 240d          	jruge	L771
1210                     ; 606   		DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1213                     ; 607   		DALIP_Direct_Arc_NoFade(zw);
1215  0136               LC005:
1217  0136 ae0301        	ldw	x,#769
1218  0139 cd0000        	call	_DALIR_WriteStatusBit
1220  013c 7b01          	ld	a,(OFST-1,sp)
1221  013e               LC004:
1222  013e cd0000        	call	_DALIP_Direct_Arc_NoFade
1224                     ; 608   		return;
1225  0141               L631:
1228  0141 85            	popw	x
1229  0142 81            	ret	
1230  0143               L771:
1231                     ; 610   	zw = DALIR_ReadReg(DALIREG_MAX_LEVEL);
1233  0143 a608          	ld	a,#8
1234  0145 cd0000        	call	_DALIR_ReadReg
1236  0148 6b01          	ld	(OFST-1,sp),a
1237                     ; 611   	if (val > zw)
1239  014a 7b02          	ld	a,(OFST+0,sp)
1240  014c 1101          	cp	a,(OFST-1,sp)
1241                     ; 613   	    DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1243                     ; 614   	    DALIP_Direct_Arc_NoFade(zw);
1245                     ; 615   	    return;
1247  014e 22e6          	jrugt	LC005
1248                     ; 617   	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
1250  0150 ae0300        	ldw	x,#768
1251  0153 cd0000        	call	_DALIR_WriteStatusBit
1253                     ; 618     DALIP_Direct_Arc_NoFade(val);
1255  0156 7b02          	ld	a,(OFST+0,sp)
1257                     ; 620 }
1259  0158 20e4          	jp	LC004
1289                     ; 626 u8 DALIC_Is_Repeated(void)
1289                     ; 627 {
1290                     	switch	.text
1291  015a               _DALIC_Is_Repeated:
1295                     ; 628 	if (!IsFlag(b_is_cmd_buffered))
1297  015a 720a000012    	btjt	L51_b_status_reg,#5,L312
1298                     ; 630 		iBufferedCmdHi = dali_address;
1300  015f 450002        	mov	L11_iBufferedCmdHi,_dali_address
1301                     ; 631 		iBufferedCmdLo = dali_data;
1303  0162 450001        	mov	L31_iBufferedCmdLo,_dali_data
1304                     ; 632 		SetFlag(b_is_cmd_buffered);
1306  0165 721a0000      	bset	L51_b_status_reg,#5
1307                     ; 633 		RTC_LaunchTimer(DALI_REPETITION_WAIT);
1309  0169 ae0078        	ldw	x,#120
1310  016c cd0000        	call	_RTC_LaunchTimer
1313  016f 2019          	jra	L512
1314  0171               L312:
1315                     ; 637 		ClrFlag(b_is_cmd_buffered);
1317  0171 721b0000      	bres	L51_b_status_reg,#5
1318                     ; 638 		if (RealTimeClock_TimerCountDown == 0)
1320  0175 be00          	ldw	x,_RealTimeClock_TimerCountDown
1321  0177 2602          	jrne	L712
1322                     ; 639             return 0; /* Timeout */
1324  0179 4f            	clr	a
1327  017a 81            	ret	
1328  017b               L712:
1329                     ; 640 		if ((iBufferedCmdHi == dali_address) && (iBufferedCmdLo == dali_data))
1331  017b b602          	ld	a,L11_iBufferedCmdHi
1332  017d b100          	cp	a,_dali_address
1333  017f 2609          	jrne	L512
1335  0181 b601          	ld	a,L31_iBufferedCmdLo
1336  0183 b100          	cp	a,_dali_data
1337  0185 2603          	jrne	L512
1338                     ; 642 		    return 1;
1340  0187 a601          	ld	a,#1
1343  0189 81            	ret	
1344  018a               L512:
1345                     ; 645 	return 0;
1347  018a 4f            	clr	a
1350  018b 81            	ret	
1391                     ; 661 u8 DALIC_Is_Repetiton_Fault(void)
1391                     ; 662 {
1392                     	switch	.text
1393  018c               _DALIC_Is_Repetiton_Fault:
1395  018c 88            	push	a
1396       00000001      OFST:	set	1
1399                     ; 665 	if (!IsFlag(b_is_cmd_buffered))
1401  018d 720a000004    	btjt	L51_b_status_reg,#5,L152
1402                     ; 666         return DCRF_OK;
1404  0192 4f            	clr	a
1407  0193 5b01          	addw	sp,#1
1408  0195 81            	ret	
1409  0196               L152:
1410                     ; 668 	state = 0;
1412  0196 0f01          	clr	(OFST+0,sp)
1413                     ; 669 	if (RealTimeClock_TimerCountDown == 0)
1415  0198 be00          	ldw	x,_RealTimeClock_TimerCountDown
1416  019a 2602          	jrne	L352
1417                     ; 670         state += DCRF_TIMEOUT;
1419  019c 0c01          	inc	(OFST+0,sp)
1420  019e               L352:
1421                     ; 671 	if ((iBufferedCmdHi == dali_address) && (iBufferedCmdLo == dali_data))
1423  019e b602          	ld	a,L11_iBufferedCmdHi
1424  01a0 b100          	cp	a,_dali_address
1425  01a2 260c          	jrne	L552
1427  01a4 b601          	ld	a,L31_iBufferedCmdLo
1428  01a6 b100          	cp	a,_dali_data
1429  01a8 2606          	jrne	L552
1430                     ; 672         state += DCRF_EQUAL;
1432  01aa 7b01          	ld	a,(OFST+0,sp)
1433  01ac ab10          	add	a,#16
1434  01ae 6b01          	ld	(OFST+0,sp),a
1435  01b0               L552:
1436                     ; 673 	switch (state)
1438  01b0 7b01          	ld	a,(OFST+0,sp)
1440                     ; 711 		    return DCRF_OK;
1441  01b2 270c          	jreq	L322
1442  01b4 4a            	dec	a
1443  01b5 2711          	jreq	L522
1444  01b7 a00f          	sub	a,#15
1445  01b9 270f          	jreq	L722
1446  01bb 4a            	dec	a
1447  01bc 270a          	jreq	L522
1448                     ; 708 		default:
1448                     ; 709             ClrFlag(b_is_cmd_buffered);
1450                     ; 710 		    ClrFlag(b_is_cmd_inbetween);
1452                     ; 711 		    return DCRF_OK;
1454  01be 201f          	jp	LC006
1455  01c0               L322:
1456                     ; 675 		case DCRF_NOTIMEOUT + DCRF_UNEQUAL:
1456                     ; 676 			/*--------------------------------------*
1456                     ; 677 			 | Ignore this Command, keep on waiting |
1456                     ; 678 			 *--------------------------------------*/
1456                     ; 679 			SetFlag(b_is_cmd_inbetween);
1458  01c0 721c0000      	bset	L51_b_status_reg,#6
1459                     ; 680 			return DCRF_IGNORE;
1461  01c4 4c            	inc	a
1464  01c5 5b01          	addw	sp,#1
1465  01c7 81            	ret	
1466  01c8               L522:
1467                     ; 682 		case DCRF_TIMEOUT + DCRF_UNEQUAL:
1467                     ; 683 		case DCRF_TIMEOUT + DCRF_EQUAL:
1467                     ; 684 			/*--------------------------------------*
1467                     ; 685 			 | In Timeout case, clear the Buffer    |
1467                     ; 686 			 | execute this command                 |
1467                     ; 687 			 *--------------------------------------*/
1467                     ; 688 			ClrFlag(b_is_cmd_buffered);
1469                     ; 689 			ClrFlag(b_is_cmd_inbetween);
1471                     ; 690 			return DCRF_OK;
1473  01c8 2015          	jp	LC006
1474  01ca               L722:
1475                     ; 692 		case DCRF_NOTIMEOUT + DCRF_EQUAL:
1475                     ; 693 			/*--------------------------------------*
1475                     ; 694 			 | A correct repetion, if no command    |
1475                     ; 695 			 | was sent inbetween                   |
1475                     ; 696 			 *--------------------------------------*/
1475                     ; 697 			if (IsFlag(b_is_cmd_inbetween))
1477  01ca 720d00000c    	btjf	L51_b_status_reg,#6,L362
1478                     ; 699 				ClrFlag(b_is_cmd_buffered);
1480  01cf 721b0000      	bres	L51_b_status_reg,#5
1481                     ; 700 				ClrFlag(b_is_cmd_inbetween);
1483                     ; 701 				return DCRF_IGNORE;
1485  01d3 4c            	inc	a
1486  01d4 721d0000      	bres	L51_b_status_reg,#6
1489  01d8 5b01          	addw	sp,#1
1490  01da 81            	ret	
1491  01db               L362:
1492                     ; 705 			    return DCRF_OK;
1494  01db 4f            	clr	a
1497  01dc 5b01          	addw	sp,#1
1498  01de 81            	ret	
1499  01df               LC006:
1500  01df b600          	ld	a,L51_b_status_reg
1501  01e1 a49f          	and	a,#159
1502  01e3 b700          	ld	L51_b_status_reg,a
1503  01e5 4f            	clr	a
1504                     ; 711 		    return DCRF_OK;
1506  01e6 5b01          	addw	sp,#1
1507  01e8 81            	ret	
1535                     ; 715 void DALIC_ProcessCommand(void)
1535                     ; 716 {
1536                     	switch	.text
1537  01e9               _DALIC_ProcessCommand:
1541                     ; 717 	if (DALIC_Is_Repetiton_Fault())
1543  01e9 ada1          	call	_DALIC_Is_Repetiton_Fault
1545  01eb 4d            	tnz	a
1546  01ec 2701          	jreq	L772
1547                     ; 718         return;
1550  01ee 81            	ret	
1551  01ef               L772:
1552                     ; 719 	if (IsFlag(b_is_special))
1554  01ef 7201000002    	btjf	L51_b_status_reg,#0,L103
1555                     ; 721 	    DALIC_ProcessSpecialCommand();
1560  01f4 2002          	jp	_DALIC_ProcessSpecialCommand
1561  01f6               L103:
1562                     ; 725 	    DALIC_ProcessNormalCommand();
1565                     ; 727 }
1568  01f6 2038          	jp	_DALIC_ProcessNormalCommand
1618                     ; 729 void DALIC_ProcessSpecialCommand(void)
1618                     ; 730 {
1619                     	switch	.text
1620  01f8               _DALIC_ProcessSpecialCommand:
1622  01f8 89            	pushw	x
1623       00000002      OFST:	set	2
1626                     ; 733 	cmd = (dali_address-161)>>1;
1628  01f9 b600          	ld	a,_dali_address
1629  01fb 5f            	clrw	x
1630  01fc 97            	ld	xl,a
1631  01fd 1d00a1        	subw	x,#161
1632  0200 57            	sraw	x
1633  0201 01            	rrwa	x,a
1634  0202 6b02          	ld	(OFST+0,sp),a
1635                     ; 734 	data_val = dali_data;
1637  0204 b600          	ld	a,_dali_data
1638  0206 6b01          	ld	(OFST-1,sp),a
1639                     ; 735 	ClrFlag(b_is_selected);
1641  0208 72150000      	bres	L51_b_status_reg,#2
1642                     ; 736 	if (cmd != (275 - 256)) //if not write command
1644  020c 7b02          	ld	a,(OFST+0,sp)
1645  020e a113          	cp	a,#19
1646  0210 2702          	jreq	L723
1647                     ; 737 	  write_enable_membanks = 0;
1649  0212 3f03          	clr	L7_write_enable_membanks
1650  0214               L723:
1651                     ; 738 	if (cmd > (275 -256))
1653  0214 a114          	cp	a,#20
1654  0216 7b01          	ld	a,(OFST-1,sp)
1655  0218 2509          	jrult	L133
1656                     ; 740 	    DALIP_Reserved_Special_Function(cmd,data_val);
1658  021a 97            	ld	xl,a
1659  021b 7b02          	ld	a,(OFST+0,sp)
1660  021d 95            	ld	xh,a
1661  021e cd0000        	call	_DALIP_Reserved_Special_Function
1663                     ; 741 	    return;
1665  0221 200b          	jra	L461
1666  0223               L133:
1667                     ; 743 	special_jt[cmd](data_val);
1669  0223 88            	push	a
1670  0224 7b03          	ld	a,(OFST+1,sp)
1671  0226 5f            	clrw	x
1672  0227 97            	ld	xl,a
1673  0228 58            	sllw	x
1674  0229 84            	pop	a
1675  022a de0200        	ldw	x,(_special_jt,x)
1676  022d fd            	call	(x)
1678                     ; 744 }
1679  022e               L461:
1682  022e 85            	popw	x
1683  022f 81            	ret	
1725                     ; 746 void DALIC_ProcessNormalCommand(void)
1725                     ; 747 {
1726                     	switch	.text
1727  0230               _DALIC_ProcessNormalCommand:
1729  0230 88            	push	a
1730       00000001      OFST:	set	1
1733                     ; 750 	cmd = dali_data;
1735  0231 b600          	ld	a,_dali_data
1736  0233 6b01          	ld	(OFST+0,sp),a
1737                     ; 752   if (cmd < 0xE0)
1739  0235 a1e0          	cp	a,#224
1740  0237 2404          	jruge	L153
1741                     ; 753     ClrFlag(b_is_selected);
1743  0239 72150000      	bres	L51_b_status_reg,#2
1744  023d               L153:
1745                     ; 754   write_enable_membanks = 0;
1747  023d 3f03          	clr	L7_write_enable_membanks
1748                     ; 755 	if(!(dali_address & 0x01))
1750  023f 720000000c    	btjt	_dali_address,#0,L353
1751                     ; 757 	    DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
1753  0244 ae0700        	ldw	x,#1792
1754  0247 cd0000        	call	_DALIR_WriteStatusBit
1756                     ; 758 	    DALIC_Direct_Arc(cmd);
1758  024a 7b01          	ld	a,(OFST+0,sp)
1759  024c ad0f          	call	_DALIC_Direct_Arc
1761                     ; 759 	    return;
1764  024e 84            	pop	a
1765  024f 81            	ret	
1766  0250               L353:
1767                     ; 761 	normal_jt[cmd](cmd);
1769  0250 88            	push	a
1770  0251 7b02          	ld	a,(OFST+1,sp)
1771  0253 5f            	clrw	x
1772  0254 97            	ld	xl,a
1773  0255 58            	sllw	x
1774  0256 84            	pop	a
1775  0257 de0000        	ldw	x,(_normal_jt,x)
1776  025a fd            	call	(x)
1778                     ; 762 }
1781  025b 84            	pop	a
1782  025c 81            	ret	
1834                     ; 764 void DALIC_Direct_Arc(u8 val)
1834                     ; 765 {
1835                     	switch	.text
1836  025d               _DALIC_Direct_Arc:
1838  025d 88            	push	a
1839  025e 88            	push	a
1840       00000001      OFST:	set	1
1843                     ; 768         DALIP_Try_DAPC_Sequence();
1845  025f cd0000        	call	_DALIP_Try_DAPC_Sequence
1847                     ; 770 	if (val==255)
1849  0262 7b02          	ld	a,(OFST+1,sp)
1850  0264 4c            	inc	a
1851  0265 2605          	jrne	L773
1852                     ; 772 		DALIP_DoneTimer();
1854  0267 cd0000        	call	_DALIP_DoneTimer
1856                     ; 773 		return;
1858  026a 2026          	jra	L504
1859  026c               L773:
1860                     ; 776 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
1862  026c ae0201        	ldw	x,#513
1863  026f cd0000        	call	_DALIR_WriteStatusBit
1865                     ; 778 	if (val==0)
1867  0272 7b02          	ld	a,(OFST+1,sp)
1868  0274 261e          	jrne	L104
1869                     ; 780     if (DALIP_GetFadeTime() == 0)
1871  0276 cd0000        	call	_DALIP_GetFadeTime
1873  0279 4d            	tnz	a
1874  027a 260b          	jrne	L304
1875                     ; 782   		DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 0);
1877  027c ae0200        	ldw	x,#512
1878  027f cd0000        	call	_DALIR_WriteStatusBit
1880                     ; 783   		DALIP_Off();
1882  0282 cd0000        	call	_DALIP_Off
1885  0285 200b          	jra	L504
1886  0287               L304:
1887                     ; 787   	  DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
1890                     ; 788 	    DALIP_Direct_Arc(val);
1893  0287 ae0300        	ldw	x,#768
1894  028a cd0000        	call	_DALIR_WriteStatusBit
1896  028d 7b02          	ld	a,(OFST+1,sp)
1897  028f               LC007:
1898  028f cd0000        	call	_DALIP_Direct_Arc
1900  0292               L504:
1901                     ; 790   	return;
1904  0292 85            	popw	x
1905  0293 81            	ret	
1906  0294               L104:
1907                     ; 793 	zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
1909  0294 a607          	ld	a,#7
1910  0296 cd0000        	call	_DALIR_ReadReg
1912  0299 6b01          	ld	(OFST+0,sp),a
1913                     ; 794   if (DALIP_GetArc() < zw)
1915  029b cd0000        	call	_DALIP_GetArc
1917  029e 1101          	cp	a,(OFST+0,sp)
1918  02a0 2405          	jruge	L704
1919                     ; 795     DALIP_Direct_Arc_NoFade(zw);
1921  02a2 7b01          	ld	a,(OFST+0,sp)
1922  02a4 cd0000        	call	_DALIP_Direct_Arc_NoFade
1924  02a7               L704:
1925                     ; 796 	if (val < zw)
1927  02a7 7b02          	ld	a,(OFST+1,sp)
1928  02a9 1101          	cp	a,(OFST+0,sp)
1929                     ; 798 		DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1931                     ; 799 		DALIP_Direct_Arc(zw);
1933                     ; 800 		return;
1935  02ab 2519          	jrult	LC009
1936                     ; 802 	zw = DALIR_ReadReg(DALIREG_MAX_LEVEL);
1938  02ad a608          	ld	a,#8
1939  02af cd0000        	call	_DALIR_ReadReg
1941  02b2 6b01          	ld	(OFST+0,sp),a
1942                     ; 803 	if (DALIP_GetArc() > zw)
1944  02b4 cd0000        	call	_DALIP_GetArc
1946  02b7 1101          	cp	a,(OFST+0,sp)
1947  02b9 2305          	jrule	L314
1948                     ; 804     DALIP_Direct_Arc_NoFade(zw);
1950  02bb 7b01          	ld	a,(OFST+0,sp)
1951  02bd cd0000        	call	_DALIP_Direct_Arc_NoFade
1953  02c0               L314:
1954                     ; 805 	if (val > zw)
1956  02c0 7b02          	ld	a,(OFST+1,sp)
1957  02c2 1101          	cp	a,(OFST+0,sp)
1958  02c4 23c1          	jrule	L304
1959                     ; 807 	    DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,1);
1962                     ; 808 	    DALIP_Direct_Arc(zw);
1964  02c6               LC009:
1966  02c6 ae0301        	ldw	x,#769
1967  02c9 cd0000        	call	_DALIR_WriteStatusBit
1969  02cc 7b01          	ld	a,(OFST+0,sp)
1971                     ; 809 	    return;
1973  02ce 20bf          	jp	LC007
1974                     ; 811 	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
1976                     ; 812 	DALIP_Direct_Arc(val);
1978                     ; 813 }
2006                     ; 815 void DALIC_Recall_Max_Level(void)
2006                     ; 816 {
2007                     	switch	.text
2008  02d0               _DALIC_Recall_Max_Level:
2012                     ; 817   DALIP_Stop_DAPC_Sequence();
2014  02d0 cd0000        	call	_DALIP_Stop_DAPC_Sequence
2016                     ; 818 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
2018  02d3 ae0700        	ldw	x,#1792
2019  02d6 cd0000        	call	_DALIR_WriteStatusBit
2021                     ; 819 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
2023  02d9 ae0201        	ldw	x,#513
2024  02dc cd0000        	call	_DALIR_WriteStatusBit
2026                     ; 820 	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
2028  02df ae0300        	ldw	x,#768
2029  02e2 cd0000        	call	_DALIR_WriteStatusBit
2031                     ; 821 	DALIP_Recall_Max_Level();
2034                     ; 822 }
2037  02e5 cc0000        	jp	_DALIP_Recall_Max_Level
2064                     ; 824 void DALIC_Recall_Min_Level(void)
2064                     ; 825 {
2065                     	switch	.text
2066  02e8               _DALIC_Recall_Min_Level:
2070                     ; 826   DALIP_Stop_DAPC_Sequence();
2072  02e8 cd0000        	call	_DALIP_Stop_DAPC_Sequence
2074                     ; 827 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
2076  02eb ae0700        	ldw	x,#1792
2077  02ee cd0000        	call	_DALIR_WriteStatusBit
2079                     ; 828 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
2081  02f1 ae0201        	ldw	x,#513
2082  02f4 cd0000        	call	_DALIR_WriteStatusBit
2084                     ; 829 	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
2086  02f7 ae0300        	ldw	x,#768
2087  02fa cd0000        	call	_DALIR_WriteStatusBit
2089                     ; 830 	DALIP_Recall_Min_Level();
2092                     ; 831 }
2095  02fd cc0000        	jp	_DALIP_Recall_Min_Level
2132                     ; 835 void DALIC_Go_To_Scene(u8 idx)
2132                     ; 836 {
2133                     	switch	.text
2134  0300               _DALIC_Go_To_Scene:
2136  0300 88            	push	a
2137       00000000      OFST:	set	0
2140                     ; 837 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
2142  0301 ae0700        	ldw	x,#1792
2143  0304 cd0000        	call	_DALIR_WriteStatusBit
2145                     ; 838 	DALIC_Direct_Arc(DALIR_ReadReg(DALIREG_SCENE + (idx & 0x0F)));
2147  0307 7b01          	ld	a,(OFST+1,sp)
2148  0309 a40f          	and	a,#15
2149  030b ab11          	add	a,#17
2150  030d cd0000        	call	_DALIR_ReadReg
2152  0310 cd025d        	call	_DALIC_Direct_Arc
2154                     ; 839 }
2157  0313 84            	pop	a
2158  0314 81            	ret	
2185                     ; 841 void DALIC_Store_Act_Level_To_DTR(void)
2185                     ; 842 {
2186                     	switch	.text
2187  0315               _DALIC_Store_Act_Level_To_DTR:
2191                     ; 843 	if (!DALIC_Is_Repeated())
2193  0315 cd015a        	call	_DALIC_Is_Repeated
2195  0318 4d            	tnz	a
2196  0319 2601          	jrne	L564
2197                     ; 844         return;
2200  031b 81            	ret	
2201  031c               L564:
2202                     ; 845 	dtr = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
2204  031c 4f            	clr	a
2205  031d cd0000        	call	_DALIR_ReadReg
2207  0320 b706          	ld	_dtr,a
2208                     ; 846 }
2211  0322 81            	ret	
2249                     ; 848 void DALIC_Store_DTR_As_(u8 idx)
2249                     ; 849 {
2250                     	switch	.text
2251  0323               _DALIC_Store_DTR_As_:
2253  0323 88            	push	a
2254       00000000      OFST:	set	0
2257                     ; 850 	if (!DALIC_Is_Repeated())
2259  0324 cd015a        	call	_DALIC_Is_Repeated
2261  0327 4d            	tnz	a
2262  0328 2602          	jrne	L505
2263                     ; 851 	    return;
2266  032a 84            	pop	a
2267  032b 81            	ret	
2268  032c               L505:
2269                     ; 852 	DALIR_WriteReg(idx,dtr);
2271  032c b606          	ld	a,_dtr
2272  032e 97            	ld	xl,a
2273  032f 7b01          	ld	a,(OFST+1,sp)
2274  0331 95            	ld	xh,a
2275  0332 cd0000        	call	_DALIR_WriteReg
2277                     ; 853 }
2280  0335 84            	pop	a
2281  0336 81            	ret	
2329                     ; 855 void DALIC_StoreMinMax_DTR_As_(u8 idx)
2329                     ; 856 {
2330                     	switch	.text
2331  0337               _DALIC_StoreMinMax_DTR_As_:
2333  0337 88            	push	a
2334  0338 88            	push	a
2335       00000001      OFST:	set	1
2338                     ; 859 	if (!DALIC_Is_Repeated())
2340  0339 cd015a        	call	_DALIC_Is_Repeated
2342  033c 4d            	tnz	a
2343  033d 2716          	jreq	L443
2344                     ; 860 	    return;
2346                     ; 862 	zw = DALIR_ReadReg(DALIREG_MIN_LEVEL);
2348  033f a607          	ld	a,#7
2349  0341 cd0000        	call	_DALIR_ReadReg
2351  0344 6b01          	ld	(OFST+0,sp),a
2352                     ; 863 	if (dtr < zw)
2354  0346 b606          	ld	a,_dtr
2355  0348 1101          	cp	a,(OFST+0,sp)
2356  034a 240b          	jruge	L335
2357                     ; 865 	 DALIR_WriteReg(idx,zw);
2359  034c               LC011:
2361  034c 7b01          	ld	a,(OFST+0,sp)
2362  034e               LC010:
2364  034e 97            	ld	xl,a
2365  034f 7b02          	ld	a,(OFST+1,sp)
2366  0351 95            	ld	xh,a
2367  0352 cd0000        	call	_DALIR_WriteReg
2369                     ; 866 	 return;
2370  0355               L443:
2373  0355 85            	popw	x
2374  0356 81            	ret	
2375  0357               L335:
2376                     ; 868 	zw = DALIR_ReadReg(DALIREG_MAX_LEVEL);
2378  0357 a608          	ld	a,#8
2379  0359 cd0000        	call	_DALIR_ReadReg
2381  035c 6b01          	ld	(OFST+0,sp),a
2382                     ; 869 	if (dtr > zw)
2384  035e b606          	ld	a,_dtr
2385  0360 1101          	cp	a,(OFST+0,sp)
2386  0362 23ea          	jrule	LC010
2387                     ; 871 	    DALIR_WriteReg(idx,zw);
2389                     ; 872 	    return;
2391  0364 20e6          	jp	LC011
2392                     ; 874 	DALIR_WriteReg(idx,dtr);
2394                     ; 875 }
2432                     ; 877 void DALIC_Remove_From_Scene(u8 idx)
2432                     ; 878 {
2433                     	switch	.text
2434  0366               _DALIC_Remove_From_Scene:
2436  0366 88            	push	a
2437       00000000      OFST:	set	0
2440                     ; 879 	if (!DALIC_Is_Repeated())
2442  0367 cd015a        	call	_DALIC_Is_Repeated
2444  036a 4d            	tnz	a
2445  036b 2602          	jrne	L555
2446                     ; 880 	    return;
2449  036d 84            	pop	a
2450  036e 81            	ret	
2451  036f               L555:
2452                     ; 881 	DALIR_WriteReg(DALIREG_SCENE+(idx & 0x0F),0xFF);
2454  036f ae00ff        	ldw	x,#255
2455  0372 7b01          	ld	a,(OFST+1,sp)
2456  0374 a40f          	and	a,#15
2457  0376 ab11          	add	a,#17
2458  0378 95            	ld	xh,a
2459  0379 cd0000        	call	_DALIR_WriteReg
2461                     ; 882 }
2464  037c 84            	pop	a
2465  037d 81            	ret	
2511                     ; 884 void DALIC_Add_To_Group(u8 grp)
2511                     ; 885 {
2512                     	switch	.text
2513  037e               _DALIC_Add_To_Group:
2515  037e 88            	push	a
2516  037f 88            	push	a
2517       00000001      OFST:	set	1
2520                     ; 888 	if (!DALIC_Is_Repeated())
2522  0380 cd015a        	call	_DALIC_Is_Repeated
2524  0383 4d            	tnz	a
2525  0384 2748          	jreq	L506
2526                     ; 889 	    return;
2528                     ; 890 	grp &= 0x0F;
2530  0386 7b02          	ld	a,(OFST+1,sp)
2531  0388 a40f          	and	a,#15
2532  038a 6b02          	ld	(OFST+1,sp),a
2533                     ; 891 	if (grp < 8)
2535  038c a008          	sub	a,#8
2536  038e 241d          	jruge	L306
2537                     ; 893 	izwgrp = DALIR_ReadReg(DALIREG_GROUP_0_7);
2539  0390 a60f          	ld	a,#15
2540  0392 cd0000        	call	_DALIR_ReadReg
2542  0395 6b01          	ld	(OFST+0,sp),a
2543                     ; 894 	izwgrp |= 1<<grp;
2545  0397 5f            	clrw	x
2546  0398 7b02          	ld	a,(OFST+1,sp)
2547  039a 97            	ld	xl,a
2548  039b a601          	ld	a,#1
2549  039d 5d            	tnzw	x
2550  039e 2704          	jreq	L263
2551  03a0               L463:
2552  03a0 48            	sll	a
2553  03a1 5a            	decw	x
2554  03a2 26fc          	jrne	L463
2555  03a4               L263:
2556  03a4 1a01          	or	a,(OFST+0,sp)
2557  03a6 6b01          	ld	(OFST+0,sp),a
2558                     ; 895 	DALIR_WriteReg(DALIREG_GROUP_0_7,izwgrp);
2560  03a8 97            	ld	xl,a
2561  03a9 a60f          	ld	a,#15
2564  03ab 201d          	jp	LC012
2565  03ad               L306:
2566                     ; 897 	  grp -= 8;
2568  03ad 6b02          	ld	(OFST+1,sp),a
2569                     ; 898 	  izwgrp = DALIR_ReadReg(DALIREG_GROUP_8_15);
2571  03af a610          	ld	a,#16
2572  03b1 cd0000        	call	_DALIR_ReadReg
2574  03b4 6b01          	ld	(OFST+0,sp),a
2575                     ; 899 	  izwgrp |= 1<<grp;
2577  03b6 5f            	clrw	x
2578  03b7 7b02          	ld	a,(OFST+1,sp)
2579  03b9 97            	ld	xl,a
2580  03ba a601          	ld	a,#1
2581  03bc 5d            	tnzw	x
2582  03bd 2704          	jreq	L273
2583  03bf               L473:
2584  03bf 48            	sll	a
2585  03c0 5a            	decw	x
2586  03c1 26fc          	jrne	L473
2587  03c3               L273:
2588  03c3 1a01          	or	a,(OFST+0,sp)
2589  03c5 6b01          	ld	(OFST+0,sp),a
2590                     ; 900 	  DALIR_WriteReg(DALIREG_GROUP_8_15,izwgrp);
2592  03c7 97            	ld	xl,a
2593  03c8 a610          	ld	a,#16
2594  03ca               LC012:
2595  03ca 95            	ld	xh,a
2596  03cb cd0000        	call	_DALIR_WriteReg
2598  03ce               L506:
2599                     ; 902 }
2602  03ce 85            	popw	x
2603  03cf 81            	ret	
2650                     ; 904 void DALIC_Remove_From_Group(u8 grp)
2650                     ; 905 {
2651                     	switch	.text
2652  03d0               _DALIC_Remove_From_Group:
2654  03d0 88            	push	a
2655  03d1 88            	push	a
2656       00000001      OFST:	set	1
2659                     ; 908 	if (!DALIC_Is_Repeated())
2661  03d2 cd015a        	call	_DALIC_Is_Repeated
2663  03d5 4d            	tnz	a
2664  03d6 274a          	jreq	L536
2665                     ; 909         return;
2667                     ; 910 	grp &= 0x0F;
2669  03d8 7b02          	ld	a,(OFST+1,sp)
2670  03da a40f          	and	a,#15
2671  03dc 6b02          	ld	(OFST+1,sp),a
2672                     ; 911 	if (grp < 8)
2674  03de a008          	sub	a,#8
2675  03e0 241e          	jruge	L336
2676                     ; 913 		izwgrp = DALIR_ReadReg(DALIREG_GROUP_0_7);
2678  03e2 a60f          	ld	a,#15
2679  03e4 cd0000        	call	_DALIR_ReadReg
2681  03e7 6b01          	ld	(OFST+0,sp),a
2682                     ; 914 		izwgrp &= (1<<grp)^255;
2684  03e9 5f            	clrw	x
2685  03ea 7b02          	ld	a,(OFST+1,sp)
2686  03ec 97            	ld	xl,a
2687  03ed a601          	ld	a,#1
2688  03ef 5d            	tnzw	x
2689  03f0 2704          	jreq	L014
2690  03f2               L214:
2691  03f2 48            	sll	a
2692  03f3 5a            	decw	x
2693  03f4 26fc          	jrne	L214
2694  03f6               L014:
2695  03f6 43            	cpl	a
2696  03f7 1401          	and	a,(OFST+0,sp)
2697  03f9 6b01          	ld	(OFST+0,sp),a
2698                     ; 915 		DALIR_WriteReg(DALIREG_GROUP_0_7,izwgrp);
2700  03fb 97            	ld	xl,a
2701  03fc a60f          	ld	a,#15
2704  03fe 201e          	jp	LC013
2705  0400               L336:
2706                     ; 919 		grp -= 8;
2708  0400 6b02          	ld	(OFST+1,sp),a
2709                     ; 920 		izwgrp = DALIR_ReadReg(DALIREG_GROUP_8_15);
2711  0402 a610          	ld	a,#16
2712  0404 cd0000        	call	_DALIR_ReadReg
2714  0407 6b01          	ld	(OFST+0,sp),a
2715                     ; 921 		izwgrp &= (1<<grp)^255;
2717  0409 5f            	clrw	x
2718  040a 7b02          	ld	a,(OFST+1,sp)
2719  040c 97            	ld	xl,a
2720  040d a601          	ld	a,#1
2721  040f 5d            	tnzw	x
2722  0410 2704          	jreq	L024
2723  0412               L224:
2724  0412 48            	sll	a
2725  0413 5a            	decw	x
2726  0414 26fc          	jrne	L224
2727  0416               L024:
2728  0416 43            	cpl	a
2729  0417 1401          	and	a,(OFST+0,sp)
2730  0419 6b01          	ld	(OFST+0,sp),a
2731                     ; 922 		DALIR_WriteReg(DALIREG_GROUP_8_15,izwgrp);
2733  041b 97            	ld	xl,a
2734  041c a610          	ld	a,#16
2735  041e               LC013:
2736  041e 95            	ld	xh,a
2737  041f cd0000        	call	_DALIR_WriteReg
2739  0422               L536:
2740                     ; 924 }
2743  0422 85            	popw	x
2744  0423 81            	ret	
2781                     ; 926 void DALIC_Up(void)
2781                     ; 927 {
2782                     	switch	.text
2783  0424               _DALIC_Up:
2785  0424 88            	push	a
2786       00000001      OFST:	set	1
2789                     ; 930   DALIP_Stop_DAPC_Sequence();
2791  0425 cd0000        	call	_DALIP_Stop_DAPC_Sequence
2793                     ; 931 	zw = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
2795  0428 4f            	clr	a
2796  0429 cd0000        	call	_DALIR_ReadReg
2798  042c 6b01          	ld	(OFST+0,sp),a
2799                     ; 932 	if (zw==0)
2801  042e 2602          	jrne	L556
2802                     ; 933         return;
2805  0430 84            	pop	a
2806  0431 81            	ret	
2807  0432               L556:
2808                     ; 934 	if (zw < DALIR_ReadReg(DALIREG_MAX_LEVEL))
2810  0432 a608          	ld	a,#8
2811  0434 cd0000        	call	_DALIR_ReadReg
2813  0437 1101          	cp	a,(OFST+0,sp)
2814  0439 2303          	jrule	L756
2815                     ; 936 	    DALIP_Up();
2817  043b cd0000        	call	_DALIP_Up
2819  043e               L756:
2820                     ; 938 }
2823  043e 84            	pop	a
2824  043f 81            	ret	
2850                     ; 940 void DALIC_Down(void)
2850                     ; 941 {
2851                     	switch	.text
2852  0440               _DALIC_Down:
2856                     ; 942   DALIP_Stop_DAPC_Sequence();
2858  0440 cd0000        	call	_DALIP_Stop_DAPC_Sequence
2860                     ; 943 	if (DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL) == 0)
2862  0443 4f            	clr	a
2863  0444 cd0000        	call	_DALIR_ReadReg
2865  0447 4d            	tnz	a
2866  0448 2601          	jrne	L176
2867                     ; 944         return;
2870  044a 81            	ret	
2871  044b               L176:
2872                     ; 945 	DALIP_Down();
2875                     ; 946 }
2878  044b cc0000        	jp	_DALIP_Down
2915                     ; 948 void DALIC_Step_Up(void)
2915                     ; 949 {
2916                     	switch	.text
2917  044e               _DALIC_Step_Up:
2919  044e 88            	push	a
2920       00000001      OFST:	set	1
2923                     ; 952   DALIP_Stop_DAPC_Sequence();
2925  044f cd0000        	call	_DALIP_Stop_DAPC_Sequence
2927                     ; 953 	zw = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
2929  0452 4f            	clr	a
2930  0453 cd0000        	call	_DALIR_ReadReg
2932  0456 6b01          	ld	(OFST+0,sp),a
2933                     ; 954 	if (zw == 0) return;
2935  0458 2602          	jrne	L117
2939  045a 84            	pop	a
2940  045b 81            	ret	
2941  045c               L117:
2942                     ; 955 	if (zw < DALIR_ReadReg(DALIREG_MAX_LEVEL)) DALIP_Step_Up();
2944  045c a608          	ld	a,#8
2945  045e cd0000        	call	_DALIR_ReadReg
2947  0461 1101          	cp	a,(OFST+0,sp)
2948  0463 2303          	jrule	L317
2951  0465 cd0000        	call	_DALIP_Step_Up
2953  0468               L317:
2954                     ; 956 }
2957  0468 84            	pop	a
2958  0469 81            	ret	
2995                     ; 958 void DALIC_Step_Down(void)
2995                     ; 959 {
2996                     	switch	.text
2997  046a               _DALIC_Step_Down:
2999  046a 88            	push	a
3000       00000001      OFST:	set	1
3003                     ; 962   DALIP_Stop_DAPC_Sequence();
3005  046b cd0000        	call	_DALIP_Stop_DAPC_Sequence
3007                     ; 963 	zw = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
3009  046e 4f            	clr	a
3010  046f cd0000        	call	_DALIR_ReadReg
3012  0472 6b01          	ld	(OFST+0,sp),a
3013                     ; 964 	if (zw == 0)
3015  0474 2602          	jrne	L337
3016                     ; 965         return;
3019  0476 84            	pop	a
3020  0477 81            	ret	
3021  0478               L337:
3022                     ; 966 	if (zw > DALIR_ReadReg(DALIREG_MIN_LEVEL))
3024  0478 a607          	ld	a,#7
3025  047a cd0000        	call	_DALIR_ReadReg
3027  047d 1101          	cp	a,(OFST+0,sp)
3028  047f 2403          	jruge	L537
3029                     ; 967         DALIP_Step_Down();
3031  0481 cd0000        	call	_DALIP_Step_Down
3033  0484               L537:
3034                     ; 968 }
3037  0484 84            	pop	a
3038  0485 81            	ret	
3067                     ; 970 void DALIC_Store_DTR_As_Short(void)
3067                     ; 971 {
3068                     	switch	.text
3069  0486               _DALIC_Store_DTR_As_Short:
3073                     ; 973 	if (!DALIC_Is_Repeated())
3075  0486 cd015a        	call	_DALIC_Is_Repeated
3077  0489 4d            	tnz	a
3078  048a 2601          	jrne	L747
3079                     ; 974         return;
3082  048c 81            	ret	
3083  048d               L747:
3084                     ; 975 	if (dtr == 255)
3086  048d b606          	ld	a,_dtr
3087  048f a1ff          	cp	a,#255
3088  0491 2609          	jrne	L157
3089                     ; 977 			DALIR_DeleteShort();
3091  0493 cd0000        	call	_DALIR_DeleteShort
3093                     ; 978 			DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,1);
3095  0496 ae0601        	ldw	x,#1537
3097                     ; 979 			return;
3100  0499 cc0000        	jp	_DALIR_WriteStatusBit
3101  049c               L157:
3102                     ; 981 	if (dtr & 0x80)
3104  049c a580          	bcp	a,#128
3105  049e 2701          	jreq	L357
3106                     ; 982         return;
3109  04a0 81            	ret	
3110  04a1               L357:
3111                     ; 983 	if (!(dtr & 0x01))
3113  04a1 a501          	bcp	a,#1
3114  04a3 2601          	jrne	L557
3115                     ; 984         return;
3118  04a5 81            	ret	
3119  04a6               L557:
3120                     ; 985 	DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,0);
3122  04a6 ae0600        	ldw	x,#1536
3123  04a9 cd0000        	call	_DALIR_WriteStatusBit
3125                     ; 986 	DALIR_WriteReg(DALIREG_SHORT_ADDRESS,dtr);
3127  04ac b606          	ld	a,_dtr
3128  04ae 97            	ld	xl,a
3129  04af a60b          	ld	a,#11
3130  04b1 95            	ld	xh,a
3132                     ; 987 }
3135  04b2 cc0000        	jp	_DALIR_WriteReg
3160                     ; 989 void DALIC_Query_Status(void)
3160                     ; 990 {
3161                     	switch	.text
3162  04b5               _DALIC_Query_Status:
3166                     ; 991     Send_DALI_Frame(DALIR_ReadReg(DALIREG_STATUS_INFORMATION));
3168  04b5 a604          	ld	a,#4
3169  04b7 cd0000        	call	_DALIR_ReadReg
3172                     ; 992 }
3175  04ba cc0000        	jp	_Send_DALI_Frame
3201                     ; 994 void DALIC_Query_Ballast(void)
3201                     ; 995 {
3202                     	switch	.text
3203  04bd               _DALIC_Query_Ballast:
3207                     ; 996     if (!DALIR_ReadStatusBit(DALIREG_STATUS_BALLAST))
3209  04bd 4f            	clr	a
3210  04be cd0000        	call	_DALIR_ReadStatusBit
3212  04c1 4d            	tnz	a
3213  04c2 2604          	jrne	L777
3214                     ; 997         Send_DALI_Frame(0xFF);           /* Answer with Yes */
3216  04c4 4a            	dec	a
3217  04c5 cd0000        	call	_Send_DALI_Frame
3219  04c8               L777:
3220                     ; 998 }
3223  04c8 81            	ret	
3249                     ; 1000 void DALIC_Query_Lamp_Failure(void)
3249                     ; 1001 {
3250                     	switch	.text
3251  04c9               _DALIC_Query_Lamp_Failure:
3255                     ; 1002     if (DALIR_ReadStatusBit(DALIREG_STATUS_LAMP_FAILURE))
3257  04c9 a601          	ld	a,#1
3258  04cb cd0000        	call	_DALIR_ReadStatusBit
3260  04ce 4d            	tnz	a
3261  04cf 2705          	jreq	L1101
3262                     ; 1003         Send_DALI_Frame(0xFF);          /* Answer with Yes */
3264  04d1 a6ff          	ld	a,#255
3265  04d3 cd0000        	call	_Send_DALI_Frame
3267  04d6               L1101:
3268                     ; 1004 }
3271  04d6 81            	ret	
3297                     ; 1006 void DALIC_Query_Lamp_Power_On(void)
3297                     ; 1007 {
3298                     	switch	.text
3299  04d7               _DALIC_Query_Lamp_Power_On:
3303                     ; 1008     if (DALIR_ReadStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON))
3305  04d7 a602          	ld	a,#2
3306  04d9 cd0000        	call	_DALIR_ReadStatusBit
3308  04dc 4d            	tnz	a
3309  04dd 2705          	jreq	L3201
3310                     ; 1009         Send_DALI_Frame(0xFF);
3312  04df a6ff          	ld	a,#255
3313  04e1 cd0000        	call	_Send_DALI_Frame
3315  04e4               L3201:
3316                     ; 1010 }
3319  04e4 81            	ret	
3345                     ; 1012 void DALIC_Query_Limit_Error(void)
3345                     ; 1013 {
3346                     	switch	.text
3347  04e5               _DALIC_Query_Limit_Error:
3351                     ; 1014     if (DALIR_ReadStatusBit(DALIREG_STATUS_LIMIT_ERROR))
3353  04e5 a603          	ld	a,#3
3354  04e7 cd0000        	call	_DALIR_ReadStatusBit
3356  04ea 4d            	tnz	a
3357  04eb 2705          	jreq	L5301
3358                     ; 1015         Send_DALI_Frame(0xFF);
3360  04ed a6ff          	ld	a,#255
3361  04ef cd0000        	call	_Send_DALI_Frame
3363  04f2               L5301:
3364                     ; 1016 }
3367  04f2 81            	ret	
3393                     ; 1018 void DALIC_Query_Reset_State(void)
3393                     ; 1019 {
3394                     	switch	.text
3395  04f3               _DALIC_Query_Reset_State:
3399                     ; 1020     if (DALIR_ReadStatusBit(DALIREG_STATUS_RESET_STATE))
3401  04f3 a605          	ld	a,#5
3402  04f5 cd0000        	call	_DALIR_ReadStatusBit
3404  04f8 4d            	tnz	a
3405  04f9 2705          	jreq	L7401
3406                     ; 1021         Send_DALI_Frame(0xFF);
3408  04fb a6ff          	ld	a,#255
3409  04fd cd0000        	call	_Send_DALI_Frame
3411  0500               L7401:
3412                     ; 1022 }
3415  0500 81            	ret	
3441                     ; 1024 void DALIC_Query_Missing_Short_Address(void)
3441                     ; 1025 {
3442                     	switch	.text
3443  0501               _DALIC_Query_Missing_Short_Address:
3447                     ; 1026     if (DALIR_ReadStatusBit(DALIREG_STATUS_MISSING_SHORT))
3449  0501 a606          	ld	a,#6
3450  0503 cd0000        	call	_DALIR_ReadStatusBit
3452  0506 4d            	tnz	a
3453  0507 2705          	jreq	L1601
3454                     ; 1027         Send_DALI_Frame(0xFF);
3456  0509 a6ff          	ld	a,#255
3457  050b cd0000        	call	_Send_DALI_Frame
3459  050e               L1601:
3460                     ; 1028 }
3463  050e 81            	ret	
3499                     ; 1030 void DALIC_Query_Reg_(u8 reg)
3499                     ; 1031 {
3500                     	switch	.text
3501  050f               _DALIC_Query_Reg_:
3505                     ; 1032     Send_DALI_Frame(DALIR_ReadReg(reg));
3507  050f cd0000        	call	_DALIR_ReadReg
3510                     ; 1033 }
3513  0512 cc0000        	jp	_Send_DALI_Frame
3539                     ; 1035 void DALIC_Query_Content_DTR(void)
3539                     ; 1036 {
3540                     	switch	.text
3541  0515               _DALIC_Query_Content_DTR:
3545                     ; 1037     Send_DALI_Frame(dtr);
3547  0515 b606          	ld	a,_dtr
3549                     ; 1038 }
3552  0517 cc0000        	jp	_Send_DALI_Frame
3578                     ; 1040 void DALIC_Query_Content_DTR1(void)
3578                     ; 1041 {
3579                     	switch	.text
3580  051a               _DALIC_Query_Content_DTR1:
3584                     ; 1042     Send_DALI_Frame(dtr1);
3586  051a b605          	ld	a,L3_dtr1
3588                     ; 1043 }
3591  051c cc0000        	jp	_Send_DALI_Frame
3617                     ; 1045 void DALIC_Query_Content_DTR2(void)
3617                     ; 1046 {
3618                     	switch	.text
3619  051f               _DALIC_Query_Content_DTR2:
3623                     ; 1047     Send_DALI_Frame(dtr2);
3625  051f b604          	ld	a,L5_dtr2
3627                     ; 1048 }
3630  0521 cc0000        	jp	_Send_DALI_Frame
3656                     ; 1050 void DALIC_Query_Device_Type(void)
3656                     ; 1051 {
3657                     	switch	.text
3658  0524               _DALIC_Query_Device_Type:
3662                     ; 1052     Send_DALI_Frame(DALIP_What_Device_Type());
3664  0524 cd0000        	call	_DALIP_What_Device_Type
3667                     ; 1053 }
3670  0527 cc0000        	jp	_Send_DALI_Frame
3696                     ; 1055 void DALIC_Query_Power_Failure(void)
3696                     ; 1056 {
3697                     	switch	.text
3698  052a               _DALIC_Query_Power_Failure:
3702                     ; 1057     if (DALIR_ReadStatusBit(DALIREG_STATUS_POWER_FAILURE))
3704  052a a607          	ld	a,#7
3705  052c cd0000        	call	_DALIR_ReadStatusBit
3707  052f 4d            	tnz	a
3708  0530 2705          	jreq	L1511
3709                     ; 1058         Send_DALI_Frame(0xFF);
3711  0532 a6ff          	ld	a,#255
3712  0534 cd0000        	call	_Send_DALI_Frame
3714  0537               L1511:
3715                     ; 1059 }
3718  0537 81            	ret	
3755                     ; 1061 void DALIC_Query_Fade_Time_Rate(void)
3755                     ; 1062 {
3756                     	switch	.text
3757  0538               _DALIC_Query_Fade_Time_Rate:
3759  0538 88            	push	a
3760       00000001      OFST:	set	1
3763                     ; 1065 	zw = DALIR_ReadReg(DALIREG_FADE_TIME)<<4;
3765  0539 a60a          	ld	a,#10
3766  053b cd0000        	call	_DALIR_ReadReg
3768  053e 97            	ld	xl,a
3769  053f a610          	ld	a,#16
3770  0541 42            	mul	x,a
3771  0542 9f            	ld	a,xl
3772  0543 6b01          	ld	(OFST+0,sp),a
3773                     ; 1066 	zw += DALIR_ReadReg(DALIREG_FADE_RATE);
3775  0545 a609          	ld	a,#9
3776  0547 cd0000        	call	_DALIR_ReadReg
3778  054a 1b01          	add	a,(OFST+0,sp)
3779  054c 6b01          	ld	(OFST+0,sp),a
3780                     ; 1067 	Send_DALI_Frame(zw);
3782  054e cd0000        	call	_Send_DALI_Frame
3784                     ; 1068 }
3787  0551 84            	pop	a
3788  0552 81            	ret	
3829                     ; 1070 void DALIC_Query_Application_Extended_Commands(u8 cmd)
3829                     ; 1071 {
3830                     	switch	.text
3831  0553               _DALIC_Query_Application_Extended_Commands:
3833  0553 88            	push	a
3834       00000000      OFST:	set	0
3837                     ; 1072   if (!IsFlag(b_is_selected))
3839  0554 7204000002    	btjt	L51_b_status_reg,#2,L7021
3840                     ; 1073     return;
3843  0559 84            	pop	a
3844  055a 81            	ret	
3845  055b               L7021:
3846                     ; 1074 	if (DALIP_Ext_Cmd_Is_Answer_Required(cmd))
3848  055b 7b01          	ld	a,(OFST+1,sp)
3849  055d cd0000        	call	_DALIP_Ext_Cmd_Is_Answer_Required
3851  0560 4d            	tnz	a
3852  0561 271e          	jreq	L1121
3853                     ; 1076 	    if (DALIP_Ext_Cmd_Is_Answer_YesNo(cmd))
3855  0563 7b01          	ld	a,(OFST+1,sp)
3856  0565 cd0000        	call	_DALIP_Ext_Cmd_Is_Answer_YesNo
3858  0568 4d            	tnz	a
3859  0569 270c          	jreq	L3121
3860                     ; 1078 	        if (DALIP_Extended_Command(cmd))
3862  056b 7b01          	ld	a,(OFST+1,sp)
3863  056d cd0000        	call	_DALIP_Extended_Command
3865  0570 4d            	tnz	a
3866  0571 2713          	jreq	L1221
3867                     ; 1079                 Send_DALI_Frame(0xFF);
3869  0573 a6ff          	ld	a,#255
3871  0575 2005          	jp	LC014
3872  0577               L3121:
3873                     ; 1083 	         Send_DALI_Frame(DALIP_Extended_Command(cmd));
3875  0577 7b01          	ld	a,(OFST+1,sp)
3876  0579 cd0000        	call	_DALIP_Extended_Command
3878  057c               LC014:
3879  057c cd0000        	call	_Send_DALI_Frame
3881  057f 2005          	jra	L1221
3882  0581               L1121:
3883                     ; 1088 	    DALIP_Extended_Command(cmd);
3885  0581 7b01          	ld	a,(OFST+1,sp)
3886  0583 cd0000        	call	_DALIP_Extended_Command
3888  0586               L1221:
3889                     ; 1090 }
3892  0586 84            	pop	a
3893  0587 81            	ret	
3921                     ; 1092 void DALIC_Query_Application_Extended_Version_Number(void)
3921                     ; 1093 {
3922                     	switch	.text
3923  0588               _DALIC_Query_Application_Extended_Version_Number:
3927                     ; 1094   if (!IsFlag(b_is_selected))
3929  0588 7204000001    	btjt	L51_b_status_reg,#2,L3321
3930                     ; 1095     return;
3933  058d 81            	ret	
3934  058e               L3321:
3935                     ; 1096   Send_DALI_Frame(DALIP_Extended_Version_Number());
3937  058e cd0000        	call	_DALIP_Extended_Version_Number
3940                     ; 1097 }
3943  0591 cc0000        	jp	_Send_DALI_Frame
3980                     ; 1099 u8 DALIC_Is_Selected(void)
3980                     ; 1100 {
3981                     	switch	.text
3982  0594               _DALIC_Is_Selected:
3984  0594 88            	push	a
3985       00000001      OFST:	set	1
3988                     ; 1103 	if (!IsFlag(b_in_physical_selection))
3990  0595 7208000041    	btjt	L51_b_status_reg,#4,L3521
3991                     ; 1105 	        zw = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 0);
3993  059a a60c          	ld	a,#12
3994  059c cd0000        	call	_DALIR_ReadReg
3996  059f 6b01          	ld	(OFST+0,sp),a
3997                     ; 1106             if (DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 0) != zw)
3999  05a1 a601          	ld	a,#1
4000  05a3 cd0000        	call	_DALIR_ReadReg
4002  05a6 1101          	cp	a,(OFST+0,sp)
4003  05a8 2704          	jreq	L5521
4004                     ; 1107                 return 0;
4006  05aa 4f            	clr	a
4009  05ab 5b01          	addw	sp,#1
4010  05ad 81            	ret	
4011  05ae               L5521:
4012                     ; 1108 	        zw = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 1);
4014  05ae a60d          	ld	a,#13
4015  05b0 cd0000        	call	_DALIR_ReadReg
4017  05b3 6b01          	ld	(OFST+0,sp),a
4018                     ; 1109 	        if (DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 1) != zw)
4020  05b5 a602          	ld	a,#2
4021  05b7 cd0000        	call	_DALIR_ReadReg
4023  05ba 1101          	cp	a,(OFST+0,sp)
4024  05bc 2704          	jreq	L7521
4025                     ; 1110                 return 0;
4027  05be 4f            	clr	a
4030  05bf 5b01          	addw	sp,#1
4031  05c1 81            	ret	
4032  05c2               L7521:
4033                     ; 1111             zw = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 2);
4035  05c2 a60e          	ld	a,#14
4036  05c4 cd0000        	call	_DALIR_ReadReg
4038  05c7 6b01          	ld	(OFST+0,sp),a
4039                     ; 1112 	        if (DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 2) != zw)
4041  05c9 a603          	ld	a,#3
4042  05cb cd0000        	call	_DALIR_ReadReg
4044  05ce 1101          	cp	a,(OFST+0,sp)
4045  05d0 2704          	jreq	L1621
4046                     ; 1113                 return 0;
4048  05d2 4f            	clr	a
4051  05d3 5b01          	addw	sp,#1
4052  05d5 81            	ret	
4053  05d6               L1621:
4054                     ; 1114 	        return 1;
4056  05d6 a601          	ld	a,#1
4059  05d8 5b01          	addw	sp,#1
4060  05da 81            	ret	
4061  05db               L3521:
4062                     ; 1116 	return DALIP_Is_Physically_Selected();
4064  05db cd0000        	call	_DALIP_Is_Physically_Selected
4068  05de 5b01          	addw	sp,#1
4069  05e0 81            	ret	
4094                     ; 1119 void DALIC_LaunchInit(void)
4094                     ; 1120 {
4095                     	switch	.text
4096  05e1               _DALIC_LaunchInit:
4100                     ; 1121 	RTC_LaunchBigTimer(15); /* Start a 15-Minute-Timer */
4102  05e1 a60f          	ld	a,#15
4103  05e3 cd0000        	call	_RTC_LaunchBigTimer
4105                     ; 1123 	SetFlag(b_in_special_mode);
4107                     ; 1124 	ClrFlag(b_is_withdrawn);
4109                     ; 1125 	ClrFlag(b_in_physical_selection);
4111                     ; 1126 }
4114  05e6 b600          	ld	a,L51_b_status_reg
4115  05e8 a4e7          	and	a,#231
4116  05ea aa02          	or	a,#2
4117  05ec b700          	ld	L51_b_status_reg,a
4118  05ee 81            	ret	
4158                     ; 1128 void DALIC_Initialize(u8 addr)
4158                     ; 1129 {
4159                     	switch	.text
4160  05ef               _DALIC_Initialize:
4162  05ef 88            	push	a
4163       00000000      OFST:	set	0
4166                     ; 1131 	if (!DALIC_Is_Repeated())
4168  05f0 cd015a        	call	_DALIC_Is_Repeated
4170  05f3 4d            	tnz	a
4171  05f4 2602          	jrne	L7131
4172                     ; 1132         return;
4175  05f6 84            	pop	a
4176  05f7 81            	ret	
4177  05f8               L7131:
4178                     ; 1133 	if ((IsFlag(b_is_withdrawn)) && (IsFlag(b_in_special_mode)))
4180  05f8 7207000007    	btjf	L51_b_status_reg,#3,L1231
4182  05fd 7203000002    	btjf	L51_b_status_reg,#1,L1231
4183                     ; 1134         return;
4186  0602 84            	pop	a
4187  0603 81            	ret	
4188  0604               L1231:
4189                     ; 1135 	switch (addr)
4191  0604 7b01          	ld	a,(OFST+1,sp)
4193                     ; 1154 	    	break;
4194  0606 2717          	jreq	LC015
4195  0608 4c            	inc	a
4196  0609 270c          	jreq	L5721
4197                     ; 1148 		default:	 /* initialize if own short address recognized */
4197                     ; 1149 		    dali_address = addr;
4199  060b 7b01          	ld	a,(OFST+1,sp)
4200  060d b700          	ld	_dali_address,a
4201                     ; 1150 		    if (DALIC_isTalkingToMe())
4203  060f cd002d        	call	_DALIC_isTalkingToMe
4205  0612 4d            	tnz	a
4206  0613 270c          	jreq	L5231
4207                     ; 1152 		        DALIC_LaunchInit();
4209  0615 2008          	jp	LC015
4210                     ; 1137 		case 0x00:   /* normal initialize */
4210                     ; 1138 		    DALIC_LaunchInit();
4212                     ; 1139 		    break;
4214  0617               L5721:
4215                     ; 1141 		case 0xFF:	 /* initialize on missing short address */
4215                     ; 1142 		    if (DALIR_ReadReg(DALIREG_SHORT_ADDRESS)==0xFF)
4217  0617 a60b          	ld	a,#11
4218  0619 cd0000        	call	_DALIR_ReadReg
4220  061c 4c            	inc	a
4221  061d 2602          	jrne	L5231
4222                     ; 1144 		        DALIC_LaunchInit();
4224  061f               LC015:
4227  061f adc0          	call	_DALIC_LaunchInit
4229  0621               L5231:
4230                     ; 1156 }
4233  0621 84            	pop	a
4234  0622 81            	ret	
4259                     ; 1158 void DALIC_Terminate(void)
4259                     ; 1159 {
4260                     	switch	.text
4261  0623               _DALIC_Terminate:
4265                     ; 1160     ClrFlag(b_in_special_mode);
4267  0623 72130000      	bres	L51_b_status_reg,#1
4268                     ; 1161     RealTimeClock_BigTimer = 0;
4270  0627 3f00          	clr	_RealTimeClock_BigTimer
4271                     ; 1162 }
4274  0629 81            	ret	
4301                     ; 1164 void DALIC_Randomize(void)
4301                     ; 1165 {
4302                     	switch	.text
4303  062a               _DALIC_Randomize:
4307                     ; 1166 	if (!DALIC_Is_Repeated())
4309  062a cd015a        	call	_DALIC_Is_Repeated
4311  062d 4d            	tnz	a
4312  062e 2601          	jrne	L3531
4313                     ; 1167         return;
4316  0630 81            	ret	
4317  0631               L3531:
4318                     ; 1169 	if (!RealTimeClock_BigTimer)
4320  0631 b600          	ld	a,_RealTimeClock_BigTimer
4321  0633 2601          	jrne	L5531
4322                     ; 1170         return;
4325  0635 81            	ret	
4326  0636               L5531:
4327                     ; 1172 	DALIR_WriteReg(DALIREG_RANDOM_ADDRESS + 0,Get_DALI_Random()); // take value from AR_Timer
4329  0636 cd0000        	call	_Get_DALI_Random
4331  0639 97            	ld	xl,a
4332  063a a60c          	ld	a,#12
4333  063c 95            	ld	xh,a
4334  063d cd0000        	call	_DALIR_WriteReg
4336                     ; 1173 	DALIR_WriteReg(DALIREG_RANDOM_ADDRESS + 1,Get_DALI_Random()); // take value from AR_Timer
4338  0640 cd0000        	call	_Get_DALI_Random
4340  0643 97            	ld	xl,a
4341  0644 a60d          	ld	a,#13
4342  0646 95            	ld	xh,a
4343  0647 cd0000        	call	_DALIR_WriteReg
4345                     ; 1174 	DALIR_WriteReg(DALIREG_RANDOM_ADDRESS + 2,Get_DALI_Random()); // take value from AR_Timer
4347  064a cd0000        	call	_Get_DALI_Random
4349  064d 97            	ld	xl,a
4350  064e a60e          	ld	a,#14
4351  0650 95            	ld	xh,a
4353                     ; 1175 }
4356  0651 cc0000        	jp	_DALIR_WriteReg
4414                     ; 1177 void DALIC_Compare(void)
4414                     ; 1178 {
4415                     	switch	.text
4416  0654               _DALIC_Compare:
4418  0654 5208          	subw	sp,#8
4419       00000008      OFST:	set	8
4422                     ; 1181 	if (!RealTimeClock_BigTimer)
4424  0656 b600          	ld	a,_RealTimeClock_BigTimer
4425  0658 2705          	jreq	L677
4426                     ; 1182         return;
4428                     ; 1183 	if (IsFlag(b_is_withdrawn))
4430  065a 7207000003    	btjf	L51_b_status_reg,#3,L7041
4431                     ; 1184         return;
4432  065f               L677:
4435  065f 5b08          	addw	sp,#8
4436  0661 81            	ret	
4437  0662               L7041:
4438                     ; 1187 	search[0] = DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 0);
4440  0662 a601          	ld	a,#1
4441  0664 cd0000        	call	_DALIR_ReadReg
4443  0667 6b02          	ld	(OFST-6,sp),a
4444                     ; 1188 	search[1] = DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 1);
4446  0669 a602          	ld	a,#2
4447  066b cd0000        	call	_DALIR_ReadReg
4449  066e 6b03          	ld	(OFST-5,sp),a
4450                     ; 1189 	search[2] = DALIR_ReadReg(DALIREG_SEARCH_ADDRESS + 2);
4452  0670 a603          	ld	a,#3
4453  0672 cd0000        	call	_DALIR_ReadReg
4455  0675 6b04          	ld	(OFST-4,sp),a
4456                     ; 1191 	rand[0] = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 0);
4458  0677 a60c          	ld	a,#12
4459  0679 cd0000        	call	_DALIR_ReadReg
4461  067c 6b05          	ld	(OFST-3,sp),a
4462                     ; 1192 	rand[1] = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 1);
4464  067e a60d          	ld	a,#13
4465  0680 cd0000        	call	_DALIR_ReadReg
4467  0683 6b06          	ld	(OFST-2,sp),a
4468                     ; 1193 	rand[2] = DALIR_ReadReg(DALIREG_RANDOM_ADDRESS + 2);
4470  0685 a60e          	ld	a,#14
4471  0687 cd0000        	call	_DALIR_ReadReg
4473  068a 6b07          	ld	(OFST-1,sp),a
4474                     ; 1195 	for (i=0;i<3;i++)
4476  068c 0f08          	clr	(OFST+0,sp)
4477  068e               L1141:
4478                     ; 1197 	    if (rand[i]>search[i])
4480  068e 96            	ldw	x,sp
4481  068f 1c0002        	addw	x,#OFST-6
4482  0692 9f            	ld	a,xl
4483  0693 5e            	swapw	x
4484  0694 1b08          	add	a,(OFST+0,sp)
4485  0696 2401          	jrnc	L267
4486  0698 5c            	incw	x
4487  0699               L267:
4488  0699 02            	rlwa	x,a
4489  069a f6            	ld	a,(x)
4490  069b 6b01          	ld	(OFST-7,sp),a
4491  069d 96            	ldw	x,sp
4492  069e 1c0005        	addw	x,#OFST-3
4493  06a1 9f            	ld	a,xl
4494  06a2 5e            	swapw	x
4495  06a3 1b08          	add	a,(OFST+0,sp)
4496  06a5 2401          	jrnc	L467
4497  06a7 5c            	incw	x
4498  06a8               L467:
4499  06a8 02            	rlwa	x,a
4500  06a9 f6            	ld	a,(x)
4501  06aa 1101          	cp	a,(OFST-7,sp)
4502  06ac 22b1          	jrugt	L677
4503                     ; 1198             return;
4505                     ; 1199 	    if (rand[i]<search[i])
4507  06ae 96            	ldw	x,sp
4508  06af 1c0002        	addw	x,#OFST-6
4509  06b2 9f            	ld	a,xl
4510  06b3 5e            	swapw	x
4511  06b4 1b08          	add	a,(OFST+0,sp)
4512  06b6 2401          	jrnc	L667
4513  06b8 5c            	incw	x
4514  06b9               L667:
4515  06b9 02            	rlwa	x,a
4516  06ba f6            	ld	a,(x)
4517  06bb 6b01          	ld	(OFST-7,sp),a
4518  06bd 96            	ldw	x,sp
4519  06be 1c0005        	addw	x,#OFST-3
4520  06c1 9f            	ld	a,xl
4521  06c2 5e            	swapw	x
4522  06c3 1b08          	add	a,(OFST+0,sp)
4523  06c5 2401          	jrnc	L077
4524  06c7 5c            	incw	x
4525  06c8               L077:
4526  06c8 02            	rlwa	x,a
4527  06c9 f6            	ld	a,(x)
4528  06ca 1101          	cp	a,(OFST-7,sp)
4529                     ; 1201 	        Send_DALI_Frame(0xFF);
4531                     ; 1202 	        return;
4533  06cc 2508          	jrult	LC016
4534                     ; 1195 	for (i=0;i<3;i++)
4536  06ce 0c08          	inc	(OFST+0,sp)
4539  06d0 7b08          	ld	a,(OFST+0,sp)
4540  06d2 a103          	cp	a,#3
4541  06d4 25b8          	jrult	L1141
4542                     ; 1205 	Send_DALI_Frame(0xFF); //Here, the random and search-addresses are equal
4544  06d6               LC016:
4546  06d6 a6ff          	ld	a,#255
4547  06d8 cd0000        	call	_Send_DALI_Frame
4549                     ; 1206 }
4551  06db 2082          	jra	L677
4577                     ; 1209 void DALIC_Withdraw(void)
4577                     ; 1210 {
4578                     	switch	.text
4579  06dd               _DALIC_Withdraw:
4583                     ; 1211 	if (!RealTimeClock_BigTimer)
4585  06dd b600          	ld	a,_RealTimeClock_BigTimer
4586  06df 2601          	jrne	L3341
4587                     ; 1212         return;
4590  06e1 81            	ret	
4591  06e2               L3341:
4592                     ; 1214 	if (DALIC_Is_Selected())
4594  06e2 cd0594        	call	_DALIC_Is_Selected
4596  06e5 4d            	tnz	a
4597  06e6 2704          	jreq	L5341
4598                     ; 1215         SetFlag(b_is_withdrawn);
4600  06e8 72160000      	bset	L51_b_status_reg,#3
4601  06ec               L5341:
4602                     ; 1216 }
4605  06ec 81            	ret	
4645                     ; 1218 void DALIC_Program_Short_Address(u8 addr)
4645                     ; 1219 {
4646                     	switch	.text
4647  06ed               _DALIC_Program_Short_Address:
4649  06ed 88            	push	a
4650       00000000      OFST:	set	0
4653                     ; 1221 	if (!RealTimeClock_BigTimer)
4655  06ee b600          	ld	a,_RealTimeClock_BigTimer
4656  06f0 2602          	jrne	L5541
4657                     ; 1222         return;
4660  06f2 84            	pop	a
4661  06f3 81            	ret	
4662  06f4               L5541:
4663                     ; 1224 	if (addr == 0xFF)
4665  06f4 7b01          	ld	a,(OFST+1,sp)
4666  06f6 a1ff          	cp	a,#255
4667  06f8 260b          	jrne	L7541
4668                     ; 1226 		DALIR_DeleteShort();
4670  06fa cd0000        	call	_DALIR_DeleteShort
4672                     ; 1227 		DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,1);
4674  06fd ae0601        	ldw	x,#1537
4675  0700 cd0000        	call	_DALIR_WriteStatusBit
4677                     ; 1228 		return;
4680  0703 84            	pop	a
4681  0704 81            	ret	
4682  0705               L7541:
4683                     ; 1230 	if (addr & 0x80)
4685  0705 a580          	bcp	a,#128
4686  0707 2702          	jreq	L1641
4687                     ; 1231         return; /* only valid up to 7E */
4690  0709 84            	pop	a
4691  070a 81            	ret	
4692  070b               L1641:
4693                     ; 1233 	if (DALIC_Is_Selected())
4695  070b cd0594        	call	_DALIC_Is_Selected
4697  070e 4d            	tnz	a
4698  070f 270f          	jreq	L3641
4699                     ; 1235 	    DALIR_WriteReg(DALIREG_SHORT_ADDRESS,addr);
4701  0711 7b01          	ld	a,(OFST+1,sp)
4702  0713 97            	ld	xl,a
4703  0714 a60b          	ld	a,#11
4704  0716 95            	ld	xh,a
4705  0717 cd0000        	call	_DALIR_WriteReg
4707                     ; 1236 	    DALIR_WriteStatusBit(DALIREG_STATUS_MISSING_SHORT,0);
4709  071a ae0600        	ldw	x,#1536
4710  071d cd0000        	call	_DALIR_WriteStatusBit
4712  0720               L3641:
4713                     ; 1238 }
4716  0720 84            	pop	a
4717  0721 81            	ret	
4754                     ; 1240 void DALIC_Verify_Short_Address(u8 addr)
4754                     ; 1241 {
4755                     	switch	.text
4756  0722               _DALIC_Verify_Short_Address:
4758  0722 88            	push	a
4759       00000000      OFST:	set	0
4762                     ; 1242 	if (addr & 0x80) return; /* only valid up to 7E */
4764  0723 a580          	bcp	a,#128
4765  0725 2702          	jreq	L3051
4769  0727 84            	pop	a
4770  0728 81            	ret	
4771  0729               L3051:
4772                     ; 1243 	    addr = addr>>1;
4774  0729 0401          	srl	(OFST+1,sp)
4775                     ; 1244 	if (((DALIR_ReadReg(DALIREG_SHORT_ADDRESS)&0xFE)>>1) == addr)
4777  072b a60b          	ld	a,#11
4778  072d cd0000        	call	_DALIR_ReadReg
4780  0730 a4fe          	and	a,#254
4781  0732 44            	srl	a
4782  0733 5f            	clrw	x
4783  0734 97            	ld	xl,a
4784  0735 7b01          	ld	a,(OFST+1,sp)
4785  0737 905f          	clrw	y
4786  0739 9097          	ld	yl,a
4787  073b 90bf00        	ldw	c_y,y
4788  073e b300          	cpw	x,c_y
4789  0740 2605          	jrne	L5051
4790                     ; 1245         Send_DALI_Frame(0xFF);
4792  0742 a6ff          	ld	a,#255
4793  0744 cd0000        	call	_Send_DALI_Frame
4795  0747               L5051:
4796                     ; 1246 }
4799  0747 84            	pop	a
4800  0748 81            	ret	
4839                     ; 1248 void DALIC_Query_Short_Address(void)
4839                     ; 1249 {
4840                     	switch	.text
4841  0749               _DALIC_Query_Short_Address:
4843  0749 88            	push	a
4844       00000001      OFST:	set	1
4847                     ; 1251 	if (!RealTimeClock_BigTimer)
4849  074a b600          	ld	a,_RealTimeClock_BigTimer
4850  074c 2602          	jrne	L5251
4851                     ; 1252         return;
4854  074e 84            	pop	a
4855  074f 81            	ret	
4856  0750               L5251:
4857                     ; 1253 	if (DALIC_Is_Selected())
4859  0750 cd0594        	call	_DALIC_Is_Selected
4861  0753 4d            	tnz	a
4862  0754 270a          	jreq	L7251
4863                     ; 1255 		zw = DALIR_ReadReg(DALIREG_SHORT_ADDRESS);
4865  0756 a60b          	ld	a,#11
4866  0758 cd0000        	call	_DALIR_ReadReg
4868  075b 6b01          	ld	(OFST+0,sp),a
4869                     ; 1256 		Send_DALI_Frame(zw);
4871  075d cd0000        	call	_Send_DALI_Frame
4873  0760               L7251:
4874                     ; 1258 }
4877  0760 84            	pop	a
4878  0761 81            	ret	
4904                     ; 1260 void DALIC_Physical_Selection(void)
4904                     ; 1261 {
4905                     	switch	.text
4906  0762               _DALIC_Physical_Selection:
4910                     ; 1262 	if (!RealTimeClock_BigTimer)
4912  0762 b600          	ld	a,_RealTimeClock_BigTimer
4913  0764 2601          	jrne	L1451
4914                     ; 1263         return;
4917  0766 81            	ret	
4918  0767               L1451:
4919                     ; 1264 	SetFlag(b_in_physical_selection);
4921  0767 72180000      	bset	L51_b_status_reg,#4
4922                     ; 1265 }
4925  076b 81            	ret	
4962                     ; 1267 void DALIC_Enable_Device_Type_X(u8 devtype)
4962                     ; 1268 {
4963                     	switch	.text
4964  076c               _DALIC_Enable_Device_Type_X:
4966  076c 88            	push	a
4967       00000000      OFST:	set	0
4970                     ; 1269     if (DALIP_What_Device_Type()==devtype)
4972  076d cd0000        	call	_DALIP_What_Device_Type
4974  0770 1101          	cp	a,(OFST+1,sp)
4975  0772 2604          	jrne	L1651
4976                     ; 1270         SetFlag(b_is_selected);
4978  0774 72140000      	bset	L51_b_status_reg,#2
4979  0778               L1651:
4980                     ; 1271 }
4983  0778 84            	pop	a
4984  0779 81            	ret	
5019                     ; 1273 void DALIC_SetDTR(u8 newdtr)
5019                     ; 1274 {
5020                     	switch	.text
5021  077a               _DALIC_SetDTR:
5025                     ; 1275     dtr = newdtr;
5027  077a b706          	ld	_dtr,a
5028                     ; 1276 }
5031  077c 81            	ret	
5066                     ; 1278 void DALIC_SetDTR1(u8 newdtr)
5066                     ; 1279 {
5067                     	switch	.text
5068  077d               _DALIC_SetDTR1:
5072                     ; 1280     dtr1 = newdtr;
5074  077d b705          	ld	L3_dtr1,a
5075                     ; 1281 }
5078  077f 81            	ret	
5113                     ; 1283 void DALIC_SetDTR2(u8 newdtr)
5113                     ; 1284 {
5114                     	switch	.text
5115  0780               _DALIC_SetDTR2:
5119                     ; 1285     dtr2 = newdtr;
5121  0780 b704          	ld	L5_dtr2,a
5122                     ; 1286 }
5125  0782 81            	ret	
5162                     ; 1288 void DALIC_SetSearchAddress0(u8 newsearch)
5162                     ; 1289 {
5163                     	switch	.text
5164  0783               _DALIC_SetSearchAddress0:
5166  0783 88            	push	a
5167       00000000      OFST:	set	0
5170                     ; 1290     if (!RealTimeClock_BigTimer)
5172  0784 b600          	ld	a,_RealTimeClock_BigTimer
5173  0786 2602          	jrne	L3561
5174                     ; 1291         return;
5177  0788 84            	pop	a
5178  0789 81            	ret	
5179  078a               L3561:
5180                     ; 1292     DALIR_WriteReg(DALIREG_SEARCH_ADDRESS + 0, newsearch);
5182  078a 7b01          	ld	a,(OFST+1,sp)
5183  078c 97            	ld	xl,a
5184  078d a601          	ld	a,#1
5185  078f 95            	ld	xh,a
5186  0790 cd0000        	call	_DALIR_WriteReg
5188                     ; 1293 }
5191  0793 84            	pop	a
5192  0794 81            	ret	
5229                     ; 1295 void DALIC_SetSearchAddress1(u8 newsearch)
5229                     ; 1296 {
5230                     	switch	.text
5231  0795               _DALIC_SetSearchAddress1:
5233  0795 88            	push	a
5234       00000000      OFST:	set	0
5237                     ; 1297     if (!RealTimeClock_BigTimer)
5239  0796 b600          	ld	a,_RealTimeClock_BigTimer
5240  0798 2602          	jrne	L3761
5241                     ; 1298         return;
5244  079a 84            	pop	a
5245  079b 81            	ret	
5246  079c               L3761:
5247                     ; 1299     DALIR_WriteReg(DALIREG_SEARCH_ADDRESS + 1, newsearch);
5249  079c 7b01          	ld	a,(OFST+1,sp)
5250  079e 97            	ld	xl,a
5251  079f a602          	ld	a,#2
5252  07a1 95            	ld	xh,a
5253  07a2 cd0000        	call	_DALIR_WriteReg
5255                     ; 1300 }
5258  07a5 84            	pop	a
5259  07a6 81            	ret	
5296                     ; 1302 void DALIC_SetSearchAddress2(u8 newsearch)
5296                     ; 1303 {
5297                     	switch	.text
5298  07a7               _DALIC_SetSearchAddress2:
5300  07a7 88            	push	a
5301       00000000      OFST:	set	0
5304                     ; 1304 	if (!RealTimeClock_BigTimer)
5306  07a8 b600          	ld	a,_RealTimeClock_BigTimer
5307  07aa 2602          	jrne	L3171
5308                     ; 1305         return;
5311  07ac 84            	pop	a
5312  07ad 81            	ret	
5313  07ae               L3171:
5314                     ; 1306 	DALIR_WriteReg(DALIREG_SEARCH_ADDRESS + 2, newsearch);
5316  07ae 7b01          	ld	a,(OFST+1,sp)
5317  07b0 97            	ld	xl,a
5318  07b1 a603          	ld	a,#3
5319  07b3 95            	ld	xh,a
5320  07b4 cd0000        	call	_DALIR_WriteReg
5322                     ; 1307 }
5325  07b7 84            	pop	a
5326  07b8 81            	ret	
5352                     ; 1309 void DALIC_Off(void)
5352                     ; 1310 {
5353                     	switch	.text
5354  07b9               _DALIC_Off:
5358                     ; 1311   DALIP_Stop_DAPC_Sequence();
5360  07b9 cd0000        	call	_DALIP_Stop_DAPC_Sequence
5362                     ; 1312 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
5364  07bc ae0700        	ldw	x,#1792
5365  07bf cd0000        	call	_DALIR_WriteStatusBit
5367                     ; 1313 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON,0);
5369  07c2 ae0200        	ldw	x,#512
5370  07c5 cd0000        	call	_DALIR_WriteStatusBit
5372                     ; 1314 	DALIR_WriteStatusBit(DALIREG_STATUS_LIMIT_ERROR,0);
5374  07c8 ae0300        	ldw	x,#768
5375  07cb cd0000        	call	_DALIR_WriteStatusBit
5377                     ; 1315 	DALIP_Off();
5380                     ; 1316 }
5383  07ce cc0000        	jp	_DALIP_Off
5423                     ; 1318 void DALIC_Step_Down_And_Off(void)
5423                     ; 1319 {
5424                     	switch	.text
5425  07d1               _DALIC_Step_Down_And_Off:
5427  07d1 88            	push	a
5428       00000001      OFST:	set	1
5431                     ; 1322   DALIP_Stop_DAPC_Sequence();
5433  07d2 cd0000        	call	_DALIP_Stop_DAPC_Sequence
5435                     ; 1323 	zw = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
5437  07d5 4f            	clr	a
5438  07d6 cd0000        	call	_DALIR_ReadReg
5440  07d9 6b01          	ld	(OFST+0,sp),a
5441                     ; 1324 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
5443  07db ae0700        	ldw	x,#1792
5444  07de cd0000        	call	_DALIR_WriteStatusBit
5446                     ; 1326 	if (zw <= DALIR_ReadReg(DALIREG_MIN_LEVEL))
5448  07e1 a607          	ld	a,#7
5449  07e3 cd0000        	call	_DALIR_ReadReg
5451  07e6 1101          	cp	a,(OFST+0,sp)
5452  07e8 2504          	jrult	L3471
5453                     ; 1328 	    DALIC_Off();
5455  07ea adcd          	call	_DALIC_Off
5458  07ec 2003          	jra	L5471
5459  07ee               L3471:
5460                     ; 1332 	    DALIP_Step_Down_And_Off();
5462  07ee cd0000        	call	_DALIP_Step_Down_And_Off
5464  07f1               L5471:
5465                     ; 1334 }
5468  07f1 84            	pop	a
5469  07f2 81            	ret	
5508                     ; 1336 void DALIC_On_And_Step_Up(void)
5508                     ; 1337 {
5509                     	switch	.text
5510  07f3               _DALIC_On_And_Step_Up:
5512  07f3 88            	push	a
5513       00000001      OFST:	set	1
5516                     ; 1340   DALIP_Stop_DAPC_Sequence();
5518  07f4 cd0000        	call	_DALIP_Stop_DAPC_Sequence
5520                     ; 1341 	zw = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
5522  07f7 4f            	clr	a
5523  07f8 cd0000        	call	_DALIR_ReadReg
5525  07fb 6b01          	ld	(OFST+0,sp),a
5526                     ; 1342 	DALIR_WriteStatusBit(DALIREG_STATUS_POWER_FAILURE,0);
5528  07fd ae0700        	ldw	x,#1792
5529  0800 cd0000        	call	_DALIR_WriteStatusBit
5531                     ; 1343 	DALIR_WriteStatusBit(DALIREG_STATUS_LAMP_ARC_POWER_ON, 1);
5533  0803 ae0201        	ldw	x,#513
5534  0806 cd0000        	call	_DALIR_WriteStatusBit
5536                     ; 1344 	if (zw < DALIR_ReadReg(DALIREG_MAX_LEVEL))
5538  0809 a608          	ld	a,#8
5539  080b cd0000        	call	_DALIR_ReadReg
5541  080e 1101          	cp	a,(OFST+0,sp)
5542  0810 2303          	jrule	L5671
5543                     ; 1345         DALIP_On_And_Step_Up();
5545  0812 cd0000        	call	_DALIP_On_And_Step_Up
5547  0815               L5671:
5548                     ; 1346 }
5551  0815 84            	pop	a
5552  0816 81            	ret	
5577                     ; 1348 void DALIC_Enable_DAPC_Sequence(void)
5577                     ; 1349 {
5578                     	switch	.text
5579  0817               _DALIC_Enable_DAPC_Sequence:
5583                     ; 1350   DALIP_Enable_DAPC_Sequence();
5586                     ; 1351 }
5589  0817 cc0000        	jp	_DALIP_Enable_DAPC_Sequence
5629                     ; 1353 void DALIC_Reset(void)
5629                     ; 1354 {
5630                     	switch	.text
5631  081a               _DALIC_Reset:
5633  081a 88            	push	a
5634       00000001      OFST:	set	1
5637                     ; 1357   if (!DALIC_Is_Repeated())
5639  081b cd015a        	call	_DALIC_Is_Repeated
5641  081e 4d            	tnz	a
5642  081f 2602          	jrne	L5102
5643                     ; 1358     return;
5646  0821 84            	pop	a
5647  0822 81            	ret	
5648  0823               L5102:
5649                     ; 1359 	DALIP_DoneTimer();
5651  0823 cd0000        	call	_DALIP_DoneTimer
5653                     ; 1360 	zw = DALIP_GetArc();
5655  0826 cd0000        	call	_DALIP_GetArc
5657  0829 6b01          	ld	(OFST+0,sp),a
5658                     ; 1361 	DALIR_ResetRegs();
5660  082b cd0000        	call	_DALIR_ResetRegs
5662                     ; 1362   DALIC_Direct_Arc_NoFade(zw);
5664  082e 7b01          	ld	a,(OFST+0,sp)
5665  0830 cd00b9        	call	_DALIC_Direct_Arc_NoFade
5667                     ; 1363   DALIC_PowerOn();
5669  0833 cd0019        	call	_DALIC_PowerOn
5671                     ; 1364 }
5674  0836 84            	pop	a
5675  0837 81            	ret	
5719                     ; 1366 u8 DALIC_BoundPhys(u8 val)
5719                     ; 1367 {
5720                     	switch	.text
5721  0838               _DALIC_BoundPhys:
5723  0838 88            	push	a
5724  0839 88            	push	a
5725       00000001      OFST:	set	1
5728                     ; 1369 	if (val == 255)
5730  083a 4c            	inc	a
5731  083b 2604          	jrne	L1402
5732                     ; 1370         return 254;
5734  083d a6fe          	ld	a,#254
5736  083f 200f          	jra	L4611
5737  0841               L1402:
5738                     ; 1372 	min = DALIR_ReadReg(DALIREG_PHYS_MIN_LEVEL);
5740  0841 a622          	ld	a,#34
5741  0843 cd0000        	call	_DALIR_ReadReg
5743  0846 6b01          	ld	(OFST+0,sp),a
5744                     ; 1373 	return (val<min ? min : val);
5746  0848 7b02          	ld	a,(OFST+1,sp)
5747  084a 1101          	cp	a,(OFST+0,sp)
5748  084c 2402          	jruge	L4611
5749  084e 7b01          	ld	a,(OFST+0,sp)
5750  0850               L4611:
5753  0850 85            	popw	x
5754  0851 81            	ret	
5809                     ; 1376 void DALIC_Adjust_Actual_Level(void)
5809                     ; 1377 {
5810                     	switch	.text
5811  0852               _DALIC_Adjust_Actual_Level:
5813  0852 5203          	subw	sp,#3
5814       00000003      OFST:	set	3
5817                     ; 1380 	min = DALIR_ReadReg(DALIREG_MIN_LEVEL);
5819  0854 a607          	ld	a,#7
5820  0856 cd0000        	call	_DALIR_ReadReg
5822  0859 6b01          	ld	(OFST-2,sp),a
5823                     ; 1381 	max = DALIR_ReadReg(DALIREG_MAX_LEVEL);
5825  085b a608          	ld	a,#8
5826  085d cd0000        	call	_DALIR_ReadReg
5828  0860 6b02          	ld	(OFST-1,sp),a
5829                     ; 1382 	act = DALIR_ReadReg(DALIREG_ACTUAL_DIM_LEVEL);
5831  0862 4f            	clr	a
5832  0863 cd0000        	call	_DALIR_ReadReg
5834  0866 6b03          	ld	(OFST+0,sp),a
5835                     ; 1383 	if(!act)
5837  0868 2712          	jreq	L5702
5838                     ; 1384 	  return;
5840                     ; 1385 	if (act<min)
5842  086a 1101          	cp	a,(OFST-2,sp)
5843  086c 2405          	jruge	L3702
5844                     ; 1387 	    DALIC_Direct_Arc(min);
5846  086e 7b01          	ld	a,(OFST-2,sp)
5847  0870 cd025d        	call	_DALIC_Direct_Arc
5849  0873               L3702:
5850                     ; 1389 	if (max<act)
5852  0873 7b02          	ld	a,(OFST-1,sp)
5853  0875 1103          	cp	a,(OFST+0,sp)
5854  0877 2403          	jruge	L5702
5855                     ; 1391 	    DALIC_Direct_Arc(max);
5857  0879 cd025d        	call	_DALIC_Direct_Arc
5859  087c               L5702:
5860                     ; 1393 }
5863  087c 5b03          	addw	sp,#3
5864  087e 81            	ret	
5914                     ; 1395 void DALIC_Store_DTR_As_Max_Level(void)
5914                     ; 1396 {
5915                     	switch	.text
5916  087f               _DALIC_Store_DTR_As_Max_Level:
5918  087f 89            	pushw	x
5919       00000002      OFST:	set	2
5922                     ; 1399 	if (!DALIC_Is_Repeated())
5924  0880 cd015a        	call	_DALIC_Is_Repeated
5926  0883 4d            	tnz	a
5927  0884 2720          	jreq	L4221
5928                     ; 1400         return;
5930                     ; 1402 	zw = DALIC_BoundPhys(dtr);
5932  0886 b606          	ld	a,_dtr
5933  0888 adae          	call	_DALIC_BoundPhys
5935  088a 6b02          	ld	(OFST+0,sp),a
5936                     ; 1403 	zw2 = DALIR_ReadReg(DALIREG_MIN_LEVEL);
5938  088c a607          	ld	a,#7
5939  088e cd0000        	call	_DALIR_ReadReg
5941  0891 6b01          	ld	(OFST-1,sp),a
5942                     ; 1404 	if (zw<zw2)
5944  0893 7b02          	ld	a,(OFST+0,sp)
5945  0895 1101          	cp	a,(OFST-1,sp)
5946  0897 2404          	jruge	L3212
5947                     ; 1405         zw = zw2;
5949  0899 7b01          	ld	a,(OFST-1,sp)
5950  089b 6b02          	ld	(OFST+0,sp),a
5951  089d               L3212:
5952                     ; 1406 	DALIR_WriteReg(DALIREG_MAX_LEVEL,zw);
5954  089d 97            	ld	xl,a
5955  089e a608          	ld	a,#8
5956  08a0 95            	ld	xh,a
5957  08a1 cd0000        	call	_DALIR_WriteReg
5959                     ; 1407 	DALIC_Adjust_Actual_Level();
5961  08a4 adac          	call	_DALIC_Adjust_Actual_Level
5963                     ; 1408 }
5964  08a6               L4221:
5967  08a6 85            	popw	x
5968  08a7 81            	ret	
6018                     ; 1410 void DALIC_Store_DTR_As_Min_Level(void)
6018                     ; 1411 {
6019                     	switch	.text
6020  08a8               _DALIC_Store_DTR_As_Min_Level:
6022  08a8 89            	pushw	x
6023       00000002      OFST:	set	2
6026                     ; 1414 	if (!DALIC_Is_Repeated())
6028  08a9 cd015a        	call	_DALIC_Is_Repeated
6030  08ac 4d            	tnz	a
6031  08ad 2720          	jreq	L2421
6032                     ; 1415         return;
6034                     ; 1416     zw = DALIC_BoundPhys(dtr);
6036  08af b606          	ld	a,_dtr
6037  08b1 ad85          	call	_DALIC_BoundPhys
6039  08b3 6b02          	ld	(OFST+0,sp),a
6040                     ; 1417 	zw2 = DALIR_ReadReg(DALIREG_MAX_LEVEL);
6042  08b5 a608          	ld	a,#8
6043  08b7 cd0000        	call	_DALIR_ReadReg
6045  08ba 6b01          	ld	(OFST-1,sp),a
6046                     ; 1418 	if (zw>zw2)
6048  08bc 7b02          	ld	a,(OFST+0,sp)
6049  08be 1101          	cp	a,(OFST-1,sp)
6050  08c0 2304          	jrule	L1512
6051                     ; 1419         zw = zw2;
6053  08c2 7b01          	ld	a,(OFST-1,sp)
6054  08c4 6b02          	ld	(OFST+0,sp),a
6055  08c6               L1512:
6056                     ; 1420 	DALIR_WriteReg(DALIREG_MIN_LEVEL,zw);
6058  08c6 97            	ld	xl,a
6059  08c7 a607          	ld	a,#7
6060  08c9 95            	ld	xh,a
6061  08ca cd0000        	call	_DALIR_WriteReg
6063                     ; 1421 	DALIC_Adjust_Actual_Level();
6065  08cd ad83          	call	_DALIC_Adjust_Actual_Level
6067                     ; 1422 }
6068  08cf               L2421:
6071  08cf 85            	popw	x
6072  08d0 81            	ret	
6098                     ; 1424 void DALIC_Store_DTR_As_System_Failure_Level(void)
6098                     ; 1425 {
6099                     	switch	.text
6100  08d1               _DALIC_Store_DTR_As_System_Failure_Level:
6104                     ; 1426     DALIC_Store_DTR_As_(DALIREG_SYSTEM_FAILURE_LEVEL);
6106  08d1 a606          	ld	a,#6
6108                     ; 1427 }
6111  08d3 cc0323        	jp	_DALIC_Store_DTR_As_
6136                     ; 1429 void DALIC_Store_DTR_As_Power_On_Level(void)
6136                     ; 1430 {
6137                     	switch	.text
6138  08d6               _DALIC_Store_DTR_As_Power_On_Level:
6142                     ; 1431   DALIC_Store_DTR_As_(DALIREG_POWER_ON_LEVEL);
6144  08d6 a605          	ld	a,#5
6146                     ; 1432 }
6149  08d8 cc0323        	jp	_DALIC_Store_DTR_As_
6176                     ; 1434 void DALIC_Store_DTR_As_Fade_Time(void)
6176                     ; 1435 {
6177                     	switch	.text
6178  08db               _DALIC_Store_DTR_As_Fade_Time:
6182                     ; 1436   if (!DALIC_Is_Repeated())
6184  08db cd015a        	call	_DALIC_Is_Repeated
6186  08de 4d            	tnz	a
6187  08df 2601          	jrne	L3022
6188                     ; 1437 	    return;
6191  08e1 81            	ret	
6192  08e2               L3022:
6193                     ; 1438   if (dtr < 15)
6195  08e2 b606          	ld	a,_dtr
6196  08e4 a10f          	cp	a,#15
6197  08e6 2406          	jruge	L5022
6198                     ; 1439 	  DALIR_WriteReg(DALIREG_FADE_TIME,dtr);
6200  08e8 97            	ld	xl,a
6201  08e9 a60a          	ld	a,#10
6202  08eb 95            	ld	xh,a
6205  08ec 2003          	jra	L7022
6206  08ee               L5022:
6207                     ; 1441 	  DALIR_WriteReg(DALIREG_FADE_TIME,15);
6209  08ee ae0a0f        	ldw	x,#2575
6211  08f1               L7022:
6212                     ; 1442 }
6215  08f1 cc0000        	jp	_DALIR_WriteReg
6253                     ; 1444 void DALIC_Store_DTR_As_Fade_Rate(void)
6253                     ; 1445 {
6254                     	switch	.text
6255  08f4               _DALIC_Store_DTR_As_Fade_Rate:
6257  08f4 88            	push	a
6258       00000001      OFST:	set	1
6261                     ; 1448 	if (!DALIC_Is_Repeated())
6263  08f5 cd015a        	call	_DALIC_Is_Repeated
6265  08f8 4d            	tnz	a
6266  08f9 2602          	jrne	L7222
6267                     ; 1449         return;
6270  08fb 84            	pop	a
6271  08fc 81            	ret	
6272  08fd               L7222:
6273                     ; 1450 	zw = dtr;
6275  08fd b606          	ld	a,_dtr
6276                     ; 1451 	if (zw > 15)
6278  08ff a110          	cp	a,#16
6279  0901 2502          	jrult	L1322
6280                     ; 1452         zw = 15;
6282  0903 a60f          	ld	a,#15
6283  0905               L1322:
6284  0905 4d            	tnz	a
6285                     ; 1453 	if (zw == 0)
6287  0906 2601          	jrne	L3322
6288                     ; 1454         zw = 1;
6290  0908 4c            	inc	a
6291  0909               L3322:
6292  0909 6b01          	ld	(OFST+0,sp),a
6293                     ; 1455 	DALIR_WriteReg(DALIREG_FADE_RATE,zw);
6295  090b 97            	ld	xl,a
6296  090c a609          	ld	a,#9
6297  090e 95            	ld	xh,a
6298  090f cd0000        	call	_DALIR_WriteReg
6300                     ; 1456 }
6303  0912 84            	pop	a
6304  0913 81            	ret	
6340                     ; 1458 void DALIC_Store_DTR_As_Scene(u8 idx)
6340                     ; 1459 {
6341                     	switch	.text
6342  0914               _DALIC_Store_DTR_As_Scene:
6346                     ; 1460     DALIC_Store_DTR_As_(DALIREG_SCENE+(idx & 0x0F));
6348  0914 a40f          	and	a,#15
6349  0916 ab11          	add	a,#17
6351                     ; 1461 }
6354  0918 cc0323        	jp	_DALIC_Store_DTR_As_
6379                     ; 1463 void DALIC_Query_Reg_Version_Number(void)
6379                     ; 1464 {
6380                     	switch	.text
6381  091b               _DALIC_Query_Reg_Version_Number:
6385                     ; 1465     DALIC_Query_Reg_(DALIREG_VERSION_NUMBER);
6387  091b a621          	ld	a,#33
6389                     ; 1466 }
6392  091d cc050f        	jp	_DALIC_Query_Reg_
6417                     ; 1468 void DALIC_Query_Reg_Phys_Min_Level(void)
6417                     ; 1469 {
6418                     	switch	.text
6419  0920               _DALIC_Query_Reg_Phys_Min_Level:
6423                     ; 1470     DALIC_Query_Reg_(DALIREG_PHYS_MIN_LEVEL);
6425  0920 a622          	ld	a,#34
6427                     ; 1471 }
6430  0922 cc050f        	jp	_DALIC_Query_Reg_
6457                     ; 1473 void DALIC_Query_Reg_Actual_Dim_Level(void)
6457                     ; 1474 {
6458                     	switch	.text
6459  0925               _DALIC_Query_Reg_Actual_Dim_Level:
6463                     ; 1475     if (DALIR_ReadStatusBit(DALIREG_STATUS_LAMP_FAILURE))
6465  0925 a601          	ld	a,#1
6466  0927 cd0000        	call	_DALIR_ReadStatusBit
6468  092a 4d            	tnz	a
6469  092b 2705          	jreq	L3032
6470                     ; 1476         Send_DALI_Frame(0xFF);          /* Answer with 0xFF if Lamp failure */
6472  092d a6ff          	ld	a,#255
6476  092f cc0000        	jp	_Send_DALI_Frame
6477  0932               L3032:
6478                     ; 1478         DALIC_Query_Reg_(DALIREG_ACTUAL_DIM_LEVEL);
6481                     ; 1479 }
6484  0932 cc050f        	jp	_DALIC_Query_Reg_
6509                     ; 1481 void DALIC_Query_Reg_Max_Level(void)
6509                     ; 1482 {
6510                     	switch	.text
6511  0935               _DALIC_Query_Reg_Max_Level:
6515                     ; 1483     DALIC_Query_Reg_(DALIREG_MAX_LEVEL);
6517  0935 a608          	ld	a,#8
6519                     ; 1484 }
6522  0937 cc050f        	jp	_DALIC_Query_Reg_
6547                     ; 1486 void DALIC_Query_Reg_Min_Level(void)
6547                     ; 1487 {
6548                     	switch	.text
6549  093a               _DALIC_Query_Reg_Min_Level:
6553                     ; 1488     DALIC_Query_Reg_(DALIREG_MIN_LEVEL);
6555  093a a607          	ld	a,#7
6557                     ; 1489 }
6560  093c cc050f        	jp	_DALIC_Query_Reg_
6585                     ; 1491 void DALIC_Query_Reg_Power_On_Level(void)
6585                     ; 1492 {
6586                     	switch	.text
6587  093f               _DALIC_Query_Reg_Power_On_Level:
6591                     ; 1493     DALIC_Query_Reg_(DALIREG_POWER_ON_LEVEL);
6593  093f a605          	ld	a,#5
6595                     ; 1494 }
6598  0941 cc050f        	jp	_DALIC_Query_Reg_
6623                     ; 1496 void DALIC_Query_Reg_System_Failure_Level(void)
6623                     ; 1497 {
6624                     	switch	.text
6625  0944               _DALIC_Query_Reg_System_Failure_Level:
6629                     ; 1498     DALIC_Query_Reg_(DALIREG_SYSTEM_FAILURE_LEVEL);
6631  0944 a606          	ld	a,#6
6633                     ; 1499 }
6636  0946 cc050f        	jp	_DALIC_Query_Reg_
6672                     ; 1501 void DALIC_Query_Reg_Scene(u8 idx)
6672                     ; 1502 {
6673                     	switch	.text
6674  0949               _DALIC_Query_Reg_Scene:
6678                     ; 1503     DALIC_Query_Reg_(DALIREG_SCENE + (idx & 0x0F));
6680  0949 a40f          	and	a,#15
6681  094b ab11          	add	a,#17
6683                     ; 1504 }
6686  094d cc050f        	jp	_DALIC_Query_Reg_
6711                     ; 1506 void DALIC_Query_Reg_Group_0_7(void)
6711                     ; 1507 {
6712                     	switch	.text
6713  0950               _DALIC_Query_Reg_Group_0_7:
6717                     ; 1508     DALIC_Query_Reg_(DALIREG_GROUP_0_7);
6719  0950 a60f          	ld	a,#15
6721                     ; 1509 }
6724  0952 cc050f        	jp	_DALIC_Query_Reg_
6749                     ; 1511 void DALIC_Query_Reg_Group_8_15(void)
6749                     ; 1512 {
6750                     	switch	.text
6751  0955               _DALIC_Query_Reg_Group_8_15:
6755                     ; 1513     DALIC_Query_Reg_(DALIREG_GROUP_8_15);
6757  0955 a610          	ld	a,#16
6759                     ; 1514 }
6762  0957 cc050f        	jp	_DALIC_Query_Reg_
6787                     ; 1516 void DALIC_Query_Reg_Random_Address0(void)
6787                     ; 1517 {
6788                     	switch	.text
6789  095a               _DALIC_Query_Reg_Random_Address0:
6793                     ; 1518     DALIC_Query_Reg_(DALIREG_RANDOM_ADDRESS + 0);
6795  095a a60c          	ld	a,#12
6797                     ; 1519 }
6800  095c cc050f        	jp	_DALIC_Query_Reg_
6825                     ; 1521 void DALIC_Query_Reg_Random_Address1(void)
6825                     ; 1522 {
6826                     	switch	.text
6827  095f               _DALIC_Query_Reg_Random_Address1:
6831                     ; 1523     DALIC_Query_Reg_(DALIREG_RANDOM_ADDRESS + 1);
6833  095f a60d          	ld	a,#13
6835                     ; 1524 }
6838  0961 cc050f        	jp	_DALIC_Query_Reg_
6863                     ; 1526 void DALIC_Query_Reg_Random_Address2(void)
6863                     ; 1527 {
6864                     	switch	.text
6865  0964               _DALIC_Query_Reg_Random_Address2:
6869                     ; 1528     DALIC_Query_Reg_(DALIREG_RANDOM_ADDRESS + 2);
6871  0964 a60e          	ld	a,#14
6873                     ; 1529 }
6876  0966 cc050f        	jp	_DALIC_Query_Reg_
6901                     ; 1531 void DALIC_Enable_Write_Memory(void)
6901                     ; 1532 {
6902                     	switch	.text
6903  0969               _DALIC_Enable_Write_Memory:
6907                     ; 1533   write_enable_membanks = 1;
6909  0969 35010003      	mov	L7_write_enable_membanks,#1
6910                     ; 1534 }
6913  096d 81            	ret	
6953                     ; 1536 void DALIC_Read_Memory_Location(void)
6953                     ; 1537 {
6954                     	switch	.text
6955  096e               _DALIC_Read_Memory_Location:
6957  096e 88            	push	a
6958       00000001      OFST:	set	1
6961                     ; 1540   if((dtr1 < MEM_BANKS_CNT) && (dtr <= membanks[dtr1][0]))
6963  096f b605          	ld	a,L3_dtr1
6964  0971 a102          	cp	a,#2
6965  0973 2429          	jruge	L3642
6967  0975 ad29          	call	LC017
6968  0977 2525          	jrult	L3642
6969                     ; 1542     mem_data = membanks[dtr1][dtr];
6971  0979 01            	rrwa	x,a
6972  097a bb06          	add	a,_dtr
6973  097c 2401          	jrnc	L2731
6974  097e 5c            	incw	x
6975  097f               L2731:
6976  097f 02            	rlwa	x,a
6977  0980 d60000        	ld	a,(_membanks,x)
6978  0983 6b01          	ld	(OFST+0,sp),a
6979                     ; 1543     dtr++;
6981  0985 3c06          	inc	_dtr
6982                     ; 1544     if (dtr <= membanks[dtr1][0])
6984  0987 b605          	ld	a,L3_dtr1
6985  0989 ad15          	call	LC017
6986  098b 250c          	jrult	L5642
6987                     ; 1545       dtr2 = membanks[dtr1][dtr];
6989  098d 01            	rrwa	x,a
6990  098e bb06          	add	a,_dtr
6991  0990 2401          	jrnc	L4731
6992  0992 5c            	incw	x
6993  0993               L4731:
6994  0993 02            	rlwa	x,a
6995  0994 d60000        	ld	a,(_membanks,x)
6996  0997 b704          	ld	L5_dtr2,a
6997  0999               L5642:
6998                     ; 1546     Send_DALI_Frame(mem_data);
7000  0999 7b01          	ld	a,(OFST+0,sp)
7001  099b cd0000        	call	_Send_DALI_Frame
7003  099e               L3642:
7004                     ; 1548 }
7007  099e 84            	pop	a
7008  099f 81            	ret	
7009  09a0               LC017:
7010  09a0 97            	ld	xl,a
7011  09a1 a620          	ld	a,#32
7012  09a3 42            	mul	x,a
7013  09a4 d60000        	ld	a,(_membanks,x)
7014  09a7 b106          	cp	a,_dtr
7015  09a9 81            	ret	
7056                     ; 1550 void DALIC_Write_Memory_Location(u8 mem_data)
7056                     ; 1551 {
7057                     	switch	.text
7058  09aa               _DALIC_Write_Memory_Location:
7060  09aa 88            	push	a
7061       00000000      OFST:	set	0
7064                     ; 1552   if(
7064                     ; 1553      (write_enable_membanks)     && // check global write protection
7064                     ; 1554      (dtr1 <= membanks[0][2])    && // check dtr1 to membanks count
7064                     ; 1555      (dtr1 > 0)                  && // check dtr1 to membanks min (bank 0 is read only)
7064                     ; 1556      (dtr  <= membanks[dtr1][0]) && // check dtr to max address
7064                     ; 1557      (dtr  >= 2)                 && // check dtr to min address
7064                     ; 1558      ((dtr==2) || (membanks[dtr1][2] == 0x55) || ((dtr==0x0F)&&(dtr1==1)))
7064                     ; 1559                                     // check if memory bank is write protected (except protection byte - index "2" and index 0x0F in bank 1)
7064                     ; 1560     )
7066  09ab b603          	ld	a,L7_write_enable_membanks
7067  09ad 275a          	jreq	L5052
7069  09af c60002        	ld	a,_membanks+2
7070  09b2 b105          	cp	a,L3_dtr1
7071  09b4 2553          	jrult	L5052
7073  09b6 b605          	ld	a,L3_dtr1
7074  09b8 274f          	jreq	L5052
7076  09ba ad4f          	call	LC018
7077  09bc 254b          	jrult	L5052
7079  09be b606          	ld	a,_dtr
7080  09c0 a102          	cp	a,#2
7081  09c2 2545          	jrult	L5052
7083  09c4 2713          	jreq	L7052
7085  09c6 d60002        	ld	a,(_membanks+2,x)
7086  09c9 a155          	cp	a,#85
7087  09cb 270c          	jreq	L7052
7089  09cd b606          	ld	a,_dtr
7090  09cf a10f          	cp	a,#15
7091  09d1 2636          	jrne	L5052
7093  09d3 b605          	ld	a,L3_dtr1
7094  09d5 a101          	cp	a,#1
7095  09d7 2630          	jrne	L5052
7096  09d9               L7052:
7097                     ; 1562     membanks[dtr1][dtr] = mem_data;    //write to memory bank "dtr1" at address "dtr"
7099  09d9 01            	rrwa	x,a
7100  09da bb06          	add	a,_dtr
7101  09dc 2401          	jrnc	L2041
7102  09de 5c            	incw	x
7103  09df               L2041:
7104  09df 02            	rlwa	x,a
7105  09e0 7b01          	ld	a,(OFST+1,sp)
7106  09e2 1c0000        	addw	x,#_membanks
7107  09e5 cd0000        	call	c_eewrc
7109                     ; 1563     membanks[dtr1][1]   = DALIC_Mem_Checksum(dtr1);  //update memory bank checksum
7111  09e8 b605          	ld	a,L3_dtr1
7112  09ea 97            	ld	xl,a
7113  09eb a620          	ld	a,#32
7114  09ed 42            	mul	x,a
7115  09ee 89            	pushw	x
7116  09ef b605          	ld	a,L3_dtr1
7117  09f1 ad22          	call	_DALIC_Mem_Checksum
7119  09f3 85            	popw	x
7120  09f4 1c0001        	addw	x,#_membanks+1
7121  09f7 cd0000        	call	c_eewrc
7123                     ; 1564     if (dtr == membanks[dtr1][0])
7125  09fa b605          	ld	a,L3_dtr1
7126  09fc ad0d          	call	LC018
7127  09fe 2602          	jrne	L3152
7128                     ; 1565       write_enable_membanks = 0;
7130  0a00 3f03          	clr	L7_write_enable_membanks
7131  0a02               L3152:
7132                     ; 1566     dtr++;
7134  0a02 3c06          	inc	_dtr
7135                     ; 1567     Send_DALI_Frame(mem_data);
7137  0a04 7b01          	ld	a,(OFST+1,sp)
7138  0a06 cd0000        	call	_Send_DALI_Frame
7140  0a09               L5052:
7141                     ; 1569 }
7144  0a09 84            	pop	a
7145  0a0a 81            	ret	
7146  0a0b               LC018:
7147  0a0b 97            	ld	xl,a
7148  0a0c a620          	ld	a,#32
7149  0a0e 42            	mul	x,a
7150  0a0f d60000        	ld	a,(_membanks,x)
7151  0a12 b106          	cp	a,_dtr
7152  0a14 81            	ret	
7205                     ; 1571 u8 DALIC_Mem_Checksum(u8 mem_number)
7205                     ; 1572 {
7206                     	switch	.text
7207  0a15               _DALIC_Mem_Checksum:
7209  0a15 88            	push	a
7210  0a16 89            	pushw	x
7211       00000002      OFST:	set	2
7214                     ; 1576   checksum = 0;
7216  0a17 0f01          	clr	(OFST-1,sp)
7217                     ; 1577   for (i = 2; i <= membanks[mem_number][0]; i++)
7219  0a19 a602          	ld	a,#2
7220  0a1b 6b02          	ld	(OFST+0,sp),a
7222  0a1d 2010          	jra	L7452
7223  0a1f               L3452:
7224                     ; 1578     checksum -= membanks[mem_number][i];
7226  0a1f 01            	rrwa	x,a
7227  0a20 1b02          	add	a,(OFST+0,sp)
7228  0a22 2401          	jrnc	L2141
7229  0a24 5c            	incw	x
7230  0a25               L2141:
7231  0a25 02            	rlwa	x,a
7232  0a26 7b01          	ld	a,(OFST-1,sp)
7233  0a28 d00000        	sub	a,(_membanks,x)
7234  0a2b 6b01          	ld	(OFST-1,sp),a
7235                     ; 1577   for (i = 2; i <= membanks[mem_number][0]; i++)
7237  0a2d 0c02          	inc	(OFST+0,sp)
7238  0a2f               L7452:
7241  0a2f 7b03          	ld	a,(OFST+1,sp)
7242  0a31 97            	ld	xl,a
7243  0a32 a620          	ld	a,#32
7244  0a34 42            	mul	x,a
7245  0a35 d60000        	ld	a,(_membanks,x)
7246  0a38 1102          	cp	a,(OFST+0,sp)
7247  0a3a 24e3          	jruge	L3452
7248                     ; 1579   return checksum;
7250  0a3c 7b01          	ld	a,(OFST-1,sp)
7253  0a3e 5b03          	addw	sp,#3
7254  0a40 81            	ret	
7368                     	xdef	_DALIC_BoundPhys
7369                     	xdef	_DALIC_LaunchInit
7370                     	xdef	_DALIC_Is_Selected
7371                     	xdef	_DALIC_StoreMinMax_DTR_As_
7372                     	xdef	_DALIC_Is_Repetiton_Fault
7373                     	xdef	_DALIC_Is_Repeated
7374                     	xdef	_special_jt
7375                     	xdef	_normal_jt
7376                     	switch	.ubsct
7377  0000               L51_b_status_reg:
7378  0000 00            	ds.b	1
7379                     	xdef	_membanks
7380  0001               L31_iBufferedCmdLo:
7381  0001 00            	ds.b	1
7382  0002               L11_iBufferedCmdHi:
7383  0002 00            	ds.b	1
7384  0003               L7_write_enable_membanks:
7385  0003 00            	ds.b	1
7386  0004               L5_dtr2:
7387  0004 00            	ds.b	1
7388  0005               L3_dtr1:
7389  0005 00            	ds.b	1
7390  0006               _dtr:
7391  0006 00            	ds.b	1
7392                     	xdef	_dtr
7393                     	xdef	_DALIC_Adjust_Actual_Level
7394                     	xdef	_DALIC_Mem_Checksum
7395                     	xdef	_DALIC_Write_Memory_Location
7396                     	xdef	_DALIC_Enable_Device_Type_X
7397                     	xdef	_DALIC_Physical_Selection
7398                     	xdef	_DALIC_Query_Short_Address
7399                     	xdef	_DALIC_Verify_Short_Address
7400                     	xdef	_DALIC_Program_Short_Address
7401                     	xdef	_DALIC_SetSearchAddress2
7402                     	xdef	_DALIC_SetSearchAddress1
7403                     	xdef	_DALIC_SetSearchAddress0
7404                     	xdef	_DALIC_Withdraw
7405                     	xdef	_DALIC_Compare
7406                     	xdef	_DALIC_Randomize
7407                     	xdef	_DALIC_Initialize
7408                     	xdef	_DALIC_SetDTR2
7409                     	xdef	_DALIC_SetDTR1
7410                     	xdef	_DALIC_SetDTR
7411                     	xdef	_DALIC_Terminate
7412                     	xdef	_DALIC_Read_Memory_Location
7413                     	xdef	_DALIC_Query_Reg_Random_Address2
7414                     	xdef	_DALIC_Query_Reg_Random_Address1
7415                     	xdef	_DALIC_Query_Reg_Random_Address0
7416                     	xdef	_DALIC_Query_Reg_Group_8_15
7417                     	xdef	_DALIC_Query_Reg_Group_0_7
7418                     	xdef	_DALIC_Query_Reg_Scene
7419                     	xdef	_DALIC_Query_Reg_System_Failure_Level
7420                     	xdef	_DALIC_Query_Reg_Power_On_Level
7421                     	xdef	_DALIC_Query_Reg_Min_Level
7422                     	xdef	_DALIC_Query_Reg_Max_Level
7423                     	xdef	_DALIC_Query_Reg_Actual_Dim_Level
7424                     	xdef	_DALIC_Query_Reg_Phys_Min_Level
7425                     	xdef	_DALIC_Query_Reg_Version_Number
7426                     	xdef	_DALIC_Query_Application_Extended_Version_Number
7427                     	xdef	_DALIC_Query_Application_Extended_Commands
7428                     	xdef	_DALIC_Query_Fade_Time_Rate
7429                     	xdef	_DALIC_Query_Power_Failure
7430                     	xdef	_DALIC_Query_Device_Type
7431                     	xdef	_DALIC_Query_Reg_
7432                     	xdef	_DALIC_Query_Content_DTR2
7433                     	xdef	_DALIC_Query_Content_DTR1
7434                     	xdef	_DALIC_Query_Content_DTR
7435                     	xdef	_DALIC_Query_Missing_Short_Address
7436                     	xdef	_DALIC_Query_Reset_State
7437                     	xdef	_DALIC_Query_Limit_Error
7438                     	xdef	_DALIC_Query_Lamp_Power_On
7439                     	xdef	_DALIC_Query_Lamp_Failure
7440                     	xdef	_DALIC_Query_Ballast
7441                     	xdef	_DALIC_Query_Status
7442                     	xdef	_DALIC_Enable_Write_Memory
7443                     	xdef	_DALIC_Store_DTR_As_Short
7444                     	xdef	_DALIC_Remove_From_Group
7445                     	xdef	_DALIC_Add_To_Group
7446                     	xdef	_DALIC_Remove_From_Scene
7447                     	xdef	_DALIC_Reset
7448                     	xdef	_DALIC_On_And_Step_Up
7449                     	xdef	_DALIC_Store_DTR_As_Scene
7450                     	xdef	_DALIC_Store_DTR_As_Fade_Rate
7451                     	xdef	_DALIC_Store_DTR_As_Fade_Time
7452                     	xdef	_DALIC_Store_DTR_As_Power_On_Level
7453                     	xdef	_DALIC_Store_DTR_As_System_Failure_Level
7454                     	xdef	_DALIC_Store_DTR_As_Min_Level
7455                     	xdef	_DALIC_Store_DTR_As_Max_Level
7456                     	xdef	_DALIC_Store_DTR_As_
7457                     	xdef	_DALIC_Store_Act_Level_To_DTR
7458                     	xdef	_DALIC_Go_To_Scene
7459                     	xdef	_DALIC_Recall_Min_Level
7460                     	xdef	_DALIC_Enable_DAPC_Sequence
7461                     	xdef	_DALIC_Step_Down_And_Off
7462                     	xdef	_DALIC_Recall_Max_Level
7463                     	xdef	_DALIC_Step_Down
7464                     	xdef	_DALIC_Step_Up
7465                     	xdef	_DALIC_Down
7466                     	xdef	_DALIC_Up
7467                     	xdef	_DALIC_Off
7468                     	xdef	_DALIC_Direct_Arc_NoFade
7469                     	xdef	_DALIC_Direct_Arc
7470                     	xdef	_DALIC_ProcessNormalCommand
7471                     	xdef	_DALIC_ProcessSpecialCommand
7472                     	xref.b	_RealTimeClock_TimerCountDown
7473                     	xref.b	_RealTimeClock_BigTimer
7474                     	xref	_RTC_LaunchTimer
7475                     	xref	_RTC_LaunchBigTimer
7476                     	xref	_DALIP_Extended_Version_Number
7477                     	xref	_DALIP_Extended_Command
7478                     	xref	_DALIP_Ext_Cmd_Is_Answer_YesNo
7479                     	xref	_DALIP_Ext_Cmd_Is_Answer_Required
7480                     	xref	_DALIP_Is_Physically_Selected
7481                     	xref	_DALIP_What_Device_Type
7482                     	xref	_DALIP_Try_DAPC_Sequence
7483                     	xref	_DALIP_Stop_DAPC_Sequence
7484                     	xref	_DALIP_Enable_DAPC_Sequence
7485                     	xref	_DALIP_On_And_Step_Up
7486                     	xref	_DALIP_Step_Down_And_Off
7487                     	xref	_DALIP_Recall_Min_Level
7488                     	xref	_DALIP_Recall_Max_Level
7489                     	xref	_DALIP_Step_Down
7490                     	xref	_DALIP_Step_Up
7491                     	xref	_DALIP_Down
7492                     	xref	_DALIP_Up
7493                     	xref	_DALIP_Off
7494                     	xref	_DALIP_Direct_Arc_NoFade
7495                     	xref	_DALIP_Direct_Arc
7496                     	xref	_DALIP_Reserved_Special_Function
7497                     	xref	_DALIP_Reserved_Function
7498                     	xref	_DALIP_GetFadeTime
7499                     	xref	_DALIP_GetArc
7500                     	xref	_DALIP_DoneTimer
7501                     	xdef	_DALIC_PowerOn
7502                     	xdef	_DALIC_Process_System_Failure
7503                     	xdef	_DALIC_ProcessCommand
7504                     	xdef	_DALIC_isTalkingToMe
7505                     	xdef	_DALIC_Init
7506                     	xref	_DALIR_DeleteShort
7507                     	xref	_DALIR_ResetRegs
7508                     	xref	_DALIR_ReadStatusBit
7509                     	xref	_DALIR_WriteStatusBit
7510                     	xref	_DALIR_WriteReg
7511                     	xref	_DALIR_ReadReg
7512                     	xref	_Get_DALI_Random
7513                     	xref	_Send_DALI_Frame
7514                     	xref.b	_dali_data
7515                     	xref.b	_dali_address
7516                     	xref.b	c_y
7536                     	xref	c_eewrc
7537                     	end
