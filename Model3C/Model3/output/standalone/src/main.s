	.extern ___TIMER0_COUNT
	.extern ___TIMER1_COUNT
	.extern ___TIMER1_ENABLE
	.public _audio_invert_init
	.extern _cl_get_cycle_count
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _gainProcessing
	.public _initGainProcessing
	.public _main
	.extern _printf
	.public _saturation
	.extern _strcmp
	.extern _strcpy
	.extern __div
	.xdata_ovly
S_GlobalInverterData_0	.struct
_degree	.dw (0x0)
_gain	.dw (0x0)
	.endstruct

	.xdata_ovly
_GlobalHeadroomGain
	.bss (0x1)
	.xdata_ovly
_GlobalInputGain
	.bss (0x1)
	.xdata_ovly
_GlobalInverterData S_GlobalInverterData_0

	.xdata_ovly
_GlobalLimiterThreshold
	.dw  (0x7fdf3b64)
	.xdata_ovly
_OutputModeFlag
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x7fffffff)
	.xdata_ovly
__extractedConst_1_3
	.dw  (0x4026e547)
	.xdata_ovly
__extractedConst_2_2
	.dw  (0x65ac8a37)
	.xdata_ovly
__extractedConst_3_2
	.dw  (0x66666666)
	.xdata_ovly
__extractedConst_4_1
	.dw  (0x5a9df97b)
	.xdata_ovly
__extractedConst_5_2
	.dw  (0x7fdf3b64)
	.xdata_ovly
__extractedConst_6_2
	.dw  (0x8020c49c)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x2d)
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_4
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_5
	.dw  (0x2d)
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_6
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_7
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_8
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_9
	.dw  (0x4e)
	.dw  (0x75)
	.dw  (0x6d)
	.dw  (0x62)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x66)
	.dw  (0x20)
	.dw  (0x63)
	.dw  (0x79)
	.dw  (0x63)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x25)
	.dw  (0x6c)
	.dw  (0x6c)
	.dw  (0x75)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



_audio_invert_init:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_2 + 0]			# LN: 46 | 
	xmem[i0] = a0h; i0 += 1			# LN: 46, 47 | 
	a0 = xmem[__extractedConst_3_2 + 0]			# LN: 47 | 
	xmem[i0] = a0h			# LN: 47 | 
	ret			# LN: 48 | 



_gainProcessing:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i2; i7 += 1			# LN: 62, 62 | 
	xmem[i7] = i3; i7 += 1			# LN: 62, 62 | 
	xmem[i7] = i6; i7 += 1			# LN: 62, 62 | 
	i7 = i7 + (0x4)			# LN: 62 | 
	i4 = i7 - (0x1)			# LN: 65 | 
	xmem[i4] = i0			# LN: 65 | 
	i0 = i0 + (0x10)			# LN: 66 | 
	i4 = i7 - (0x2)			# LN: 66 | 
	xmem[i4] = i0			# LN: 66 | 
	i0 = i1			# LN: 67 | 
	i4 = i7 - (0x4)			# LN: 67 | 
	xmem[i4] = i0			# LN: 67 | 
	i0 = i1 + (0x10)			# LN: 68 | 
	i4 = i7 - (0x3)			# LN: 68 | 
	xmem[i4] = i0			# LN: 68 | 
	i0 = i1 + (0x20)			# LN: 69 | 
	i2 = i0			# LN: 69 | 
	i0 = i1 + (0x30)			# LN: 70 | 
	i3 = i0			# LN: 70 | 
	i0 = i1 + (0x40)			# LN: 71 | 
	i6 = i0			# LN: 71 | 
	do (0x10), label_end_92			# LN: 74 | 
label_begin_92:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 77 | 
	xmem[i2] = a0h			# LN: 77 | 
	xmem[i3] = a0h			# LN: 78 | 
	xmem[i6] = a0h			# LN: 79 | 
	i0 = i7 - (0x1)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	x0 = xmem[_GlobalInputGain + 0]			# LN: 82 | 
	x1 = xmem[i0]			# LN: 82 | 
	i0 = i7 - (0x1)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	a0 = x1 * x0			# LN: 82 | 
	xmem[i0] = a0			# LN: 82 | 
	i0 = i7 - (0x2)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	x0 = xmem[_GlobalInputGain + 0]			# LN: 83 | 
	x1 = xmem[i0]			# LN: 83 | 
	i0 = i7 - (0x2)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	a0 = x1 * x0			# LN: 83 | 
	xmem[i0] = a0			# LN: 83 | 
	i0 = i7 - (0x1)			# LN: 86 | 
	i1 = i7 - (0x2)			# LN: 86 | 
	i1 = xmem[i1]			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	a0 = xmem[i1]			# LN: 86 | 
	a1 = xmem[i0]			# LN: 86 | 
	a0 = a1 + a0			# LN: 86 | 
	call (_saturation)			# LN: 86 | 
	xmem[i2] = a0h			# LN: 86 | 
	x0 = xmem[i2]			# LN: 89 | 
	x1 = xmem[_GlobalHeadroomGain + 0]			# LN: 89 | 
	a0 = x0 * x1			# LN: 89 | 
	xmem[i2] = a0			# LN: 89 | 
	i0 = i7 - (0x1)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	i1 = i7 - (0x2)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 93 | 
	call (_gst_audio_invert_transform)			# LN: 93 | 
	xmem[i3] = a0h			# LN: 93 | 
	i0 = xmem[i1]			# LN: 94 | 
	i1 = i7 - (0x3)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 94 | 
	call (_gst_audio_invert_transform)			# LN: 94 | 
	xmem[i6] = a0h			# LN: 94 | 
	x0 = xmem[i2]			# LN: 98 | 
	x1 = xmem[__extractedConst_1_3 + 0]			# LN: 98 | 
	i0 = i7 - (0x4)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	a0 = x0 * x1			# LN: 98 | 
	xmem[i0] = a0			# LN: 98 | 
	x0 = xmem[i2]			# LN: 99 | 
	x1 = xmem[__extractedConst_1_3 + 0]			# LN: 99 | 
	i0 = xmem[i1]			# LN: 99 | 
	a0 = x0 * x1			# LN: 99 | 
	xmem[i0] = a0			# LN: 99 | 
	x0 = xmem[i3]			# LN: 103 | 
	x1 = xmem[__extractedConst_2_2 + 0]			# LN: 103 | 
	a0 = x0 * x1			# LN: 103 | 
	xmem[i3] = a0			# LN: 103 | 
	x0 = xmem[i6]			# LN: 104 | 
	x1 = xmem[__extractedConst_2_2 + 0]			# LN: 104 | 
	a0 = x0 * x1			# LN: 104 | 
	xmem[i6] = a0			# LN: 104 | 
	i0 = i7 - (0x4)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	a0 = xmem[i3]			# LN: 108 | 
	a1 = xmem[i0]			# LN: 108 | 
	a0 = a0 + a1			# LN: 108 | 
	call (_saturation)			# LN: 108 | 
	xmem[i3] = a0h			# LN: 108 | 
	i0 = i7 - (0x3)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	a0 = xmem[i6]			# LN: 109 | 
	a1 = xmem[i0]			# LN: 109 | 
	a0 = a0 + a1			# LN: 109 | 
	i0 = (0) + (_OutputModeFlag)			# LN: 112 | 
	call (_saturation)			# LN: 109 | 
	xmem[i6] = a0h			# LN: 109 | 
	i1 = (0) + (_string_const_0)			# LN: 112 | 
	call (_strcmp)			# LN: 112 | 
	a0 & a0			# LN: 112 | 
	if (a != 0) jmp (else_2)			# LN: 112 | 
	i0 = i7 - (0x4)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	a0 = xmem[i3]			# LN: 114 | 
	xmem[i0] = a0h			# LN: 114 | 
	i0 = i7 - (0x3)			# LN: 115 | 
	i0 = xmem[i0]			# LN: 115 | 
	a0 = xmem[i6]			# LN: 115 | 
	xmem[i0] = a0h			# LN: 115 | 
endif_2:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 118 | 
	i0 = xmem[i0]			# LN: 118 | 
	i1 = i7 - (0x1)			# LN: 118 | 
	i0 += 1			# LN: 118 | 
	xmem[i1] = i0			# LN: 118 | 
	i0 = i7 - (0x2)			# LN: 119 | 
	i0 = xmem[i0]			# LN: 119 | 
	i1 = i7 - (0x2)			# LN: 119 | 
	i0 += 1			# LN: 119 | 
	xmem[i1] = i0			# LN: 119 | 
	i0 = i7 - (0x3)			# LN: 121 | 
	i1 = i7 - (0x4)			# LN: 120 | 
	i1 = xmem[i1]			# LN: 120 | 
	i0 = xmem[i0]			# LN: 121 | 
	i1 += 1			# LN: 120 | 
	i4 = i7 - (0x4)			# LN: 120 | 
	xmem[i4] = i1			# LN: 120 | 
	i0 += 1			# LN: 121 | 
	i1 = i7 - (0x3)			# LN: 121 | 
	xmem[i1] = i0			# LN: 121 | 
	i2 += 1			# LN: 122 | 
	i3 += 1			# LN: 123 | 
label_end_92:			# LN: 74 | CYCLE: 22 | RULES: ()
	i6 += 1			# LN: 124 | 
for_end_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 128 | 
	i7 -= 1			# LN: 128 | 
	i6 = xmem[i7]; i7 -= 1			# LN: 128, 128 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 128, 128 | 
	i2 = xmem[i7]			# LN: 128 | 
	ret			# LN: 128 | 



_gst_audio_invert_transform:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	a1 = xmem[_GlobalInverterData + 0]			# LN: 52 | 
	b0 = xmem[__extractedConst_0_1 + 0]			# LN: 52 | 
	x0 = a0h; a0 = a1 - b0			# LN: 50, 52 | 
	a0 =- a0			# LN: 52 | 
	x1 = a0h			# LN: 52 | 
	a0 = x0 * x1			# LN: 55 | 
	x1 = xmem[_GlobalInverterData + 0]			# LN: 55 | 
	a0 -= x0 * x1			# LN: 55 | 
	x0 = a0			# LN: 55 | 
	x1 = xmem[_GlobalInverterData + 1]			# LN: 57 | 
	a0 = x0 * x1			# LN: 57 | 
	a0 = a0			# LN: 57 | 
	call (_saturation)			# LN: 57 | 
	ret			# LN: 58 | 



_initGainProcessing:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	xmem[_GlobalInputGain + 0] = a0h			# LN: 24 | 
	xmem[_GlobalHeadroomGain + 0] = a1h			# LN: 25 | 
	ret			# LN: 26 | 



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i2; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a2g; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a2h; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a2l; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = i3; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b2g; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b2h; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b2l; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a3g; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a3h; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = a3l; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b3g; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b3h; i7 += 1			# LN: 148, 148 | 
	xmem[i7] = b3l; i7 += 1			# LN: 148, 148 | 
	i7 = i7 + (0x204)			# LN: 148 | 
	i2 = i0			# LN: 148 | 
	i0 = i2			# LN: 171 | 
	a0 = xmem[__extractedConst_1_3 + 0]			# LN: 165 | 
	i1 = i7 - (0x204)			# LN: 165 | 
	xmem[i1] = a0h			# LN: 165 | 
	i0 += 2			# LN: 171 | 
	i0 = xmem[i0]			# LN: 171 | 
	a0 = xmem[__extractedConst_4_1 + 0]			# LN: 166 | 
	i4 = i7 - (0x203)			# LN: 166 | 
	xmem[i4] = a0h			# LN: 166 | 
	i1 = (0) + (_string_const_1)			# LN: 171 | 
	call (_strcmp)			# LN: 171 | 
	a0 & a0			# LN: 171 | 
	if (a != 0) jmp (else_3)			# LN: 171 | 
	a0 = 0			# LN: 172 | 
	i0 = i7 - (0x201)			# LN: 172 | 
	xmem[i0] = a0h			# LN: 172 | 
	jmp (endif_3)			# LN: 172 | 
else_3:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 174 | 
	i0 = i7 - (0x201)			# LN: 174 | 
	xmem[i0] = a0h			# LN: 174 | 
endif_3:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i0 = i2 + (0x3)			# LN: 176 | 
	i0 = xmem[i0]			# LN: 176 | 
	i1 = (0) + (_string_const_2)			# LN: 176 | 
	call (_strcmp)			# LN: 176 | 
	a0 & a0			# LN: 176 | 
	if (a != 0) jmp (else_4)			# LN: 176 | 
	a0 = xmem[__extractedConst_5_2 + 0]			# LN: 177 | 
	i0 = i7 - (0x204)			# LN: 177 | 
	xmem[i0] = a0h			# LN: 177 | 
	jmp (endif_4)			# LN: 177 | 
else_4:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i2 + (0x3)			# LN: 178 | 
	i0 = xmem[i0]			# LN: 178 | 
	i1 = (0) + (_string_const_3)			# LN: 178 | 
	call (_strcmp)			# LN: 178 | 
	a0 & a0			# LN: 178 | 
	if (a != 0) jmp (else_5)			# LN: 178 | 
	a0 = xmem[__extractedConst_6_2 + 0]			# LN: 179 | 
	i0 = i7 - (0x204)			# LN: 179 | 
	xmem[i0] = a0h			# LN: 179 | 
endif_4:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i2 + (0x4)			# LN: 181 | 
	i0 = xmem[i0]			# LN: 181 | 
	i1 = (0) + (_string_const_4)			# LN: 181 | 
	call (_strcmp)			# LN: 181 | 
	a0 & a0			# LN: 181 | 
	if (a != 0) jmp (else_6)			# LN: 181 | 
	a0 = xmem[__extractedConst_5_2 + 0]			# LN: 182 | 
	i0 = i7 - (0x203)			# LN: 182 | 
	xmem[i0] = a0h			# LN: 182 | 
	jmp (endif_6)			# LN: 182 | 
else_6:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i2 + (0x4)			# LN: 183 | 
	i0 = xmem[i0]			# LN: 183 | 
	i1 = (0) + (_string_const_5)			# LN: 183 | 
	call (_strcmp)			# LN: 183 | 
	a0 & a0			# LN: 183 | 
	if (a != 0) jmp (else_7)			# LN: 183 | 
	a0 = xmem[__extractedConst_6_2 + 0]			# LN: 184 | 
	i0 = i7 - (0x203)			# LN: 184 | 
	xmem[i0] = a0h			# LN: 184 | 
endif_6:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_GlobalInverterData)			# LN: 187 | 
	call (_audio_invert_init)			# LN: 187 | 
	a0 = 0			# LN: 190 | 
	do (0x8), label_end_94			# LN: 190 | 
label_begin_94:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	a1 = 0			# LN: 191 | 
	do (0x10), label_end_93			# LN: 191 | 
label_begin_93:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	b0 =+ a0			# LN: 192 | 
	b0 = b0 << 4			# LN: 192 | 
	i0 = b0; b0 = 0			# LN: 192, 192 | 
	uhalfword(b1) = (0x1)			# LN: 191 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 192 | 
	a2 = i0			# LN: 192 | 
	a2 = a2 + a1			# LN: 192 | 
	AnyReg(i0, a2h)			# LN: 192 | 
	a1 = a1 + b1			# LN: 191 | 
label_end_93:			# LN: 191 | CYCLE: 9 | RULES: ()
	xmem[i0] = b0h			# LN: 192 | 
init_latch_label_2:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x1)			# LN: 190 | 
label_end_94:			# LN: 190 | CYCLE: 1 | RULES: ()
	a0 = a0 + a1			# LN: 190 | 
for_end_1:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i1 = xmem[i2]			# LN: 196 | 
	i0 = i7 - (256 - 0)			# LN: 196 | 
	call (_strcpy)			# LN: 196 | 
	i0 = i7 - (256 - 0)			# LN: 197 | 
	call (_cl_wavread_open)			# LN: 197 | 
	AnyReg(i3, a0h)			# LN: 197 | 
	a0 = i3			# LN: 198 | 
	a0 & a0			# LN: 198 | 
	if (a != 0) jmp (else_8)			# LN: 198 | 
	i0 = (0) + (_string_const_6)			# LN: 200 | 
	call (_printf)			# LN: 200 | 
	halfword(a0) = (0xffff)			# LN: 201 | 
	jmp (__epilogue_260)			# LN: 201 | 
endif_8:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 207 | 
	call (_cl_wavread_getnchannels)			# LN: 207 | 
	i0 = i7 - (0x202)			# LN: 207 | 
	xmem[i0] = a0h			# LN: 207 | 
	i0 = i3			# LN: 208 | 
	call (_cl_wavread_bits_per_sample)			# LN: 208 | 
	a2 =+ a0			# LN: 208 | 
	i0 = i3			# LN: 209 | 
	call (_cl_wavread_frame_rate)			# LN: 209 | 
	b2 =+ a0			# LN: 209 | 
	i0 = i3			# LN: 210 | 
	call (_cl_wavread_number_of_frames)			# LN: 210 | 
	i0 = i2			# LN: 215 | 
	i1 = i7 - (512 - 0)			# LN: 215 | 
	i0 += 1; a3 =+ a0			# LN: 215, 210 | 
	i4 = xmem[i0]			# LN: 215 | 
	i0 = i1			# LN: 215 | 
	i1 = i4			# LN: 215 | 
	call (_strcpy)			# LN: 215 | 
	i4 = i2 + (0x5)			# LN: 217 | 
	i1 = xmem[i4]			# LN: 217 | 
	i0 = (0) + (_OutputModeFlag)			# LN: 217 | 
	call (_strcpy)			# LN: 217 | 
	i0 = xmem[i4]			# LN: 219 | 
	i1 = (0) + (_string_const_7)			# LN: 219 | 
	call (_strcmp)			# LN: 219 | 
	uhalfword(b3) = (0x2)			# LN: 218 | 
	a0 & a0			# LN: 219 | 
	if (a != 0) jmp (else_9)			# LN: 219 | 
	i0 = i7 - (0x201)			# LN: 219 | 
	a0 = xmem[i0]			# LN: 219 | 
	a0 & a0			# LN: 219 | 
	if (a == 0) jmp (else_9)			# LN: 219 | 
	uhalfword(b3) = (0x5)			# LN: 220 | 
endif_9:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (512 - 0)			# LN: 222 | 
	a0 =+ a2; b0 =+ b2			# LN: 222, 222 | 
	a1 =+ b3			# LN: 222 | 
	call (_cl_wavwrite_open)			# LN: 222 | 
	AnyReg(i2, a0h)			# LN: 222 | 
	a0 = i2			# LN: 223 | 
	a0 & a0			# LN: 223 | 
	if (a != 0) jmp (else_10)			# LN: 223 | 
	i0 = (0) + (_string_const_8)			# LN: 225 | 
	call (_printf)			# LN: 225 | 
	halfword(a0) = (0xffff)			# LN: 226 | 
	jmp (__epilogue_260)			# LN: 226 | 
endif_10:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x203)			# LN: 231 | 
	i1 = i7 - (0x204)			# LN: 231 | 
	a0 = xmem[i1]			# LN: 231 | 
	a1 = xmem[i0]			# LN: 231 | 
	call (_initGainProcessing)			# LN: 231 | 
	uhalfword(a1) = (0x10)			# LN: 243 | 
	a0 =+ a3			# LN: 243 | 
	call (__div)			# LN: 243 | 
	AnyReg(i0, a0h)			# LN: 243 | 
	nop #empty cycle
	do (i0), label_end_99			# LN: 243 | 
label_begin_99:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	a2 = 0			# LN: 245 | 
	do (0x10), label_end_96			# LN: 245 | 
label_begin_96:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x202)			# LN: 247 | 
	a0 = xmem[i0]; b0 = 0			# LN: 247, 247 | 
	AnyReg(i0, a0h)			# LN: 247 | 
	nop #empty cycle
	do (i0), label_end_95			# LN: 247 | 
label_begin_95:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 249 | 
	call (_cl_wavread_recvsample)			# LN: 249 | 
	a1 =+ a0; b1 =+ b0			# LN: 249, 250 | 
	b1 = b1 << 4			# LN: 250 | 
	i0 = b1; a0 =+ a1			# LN: 250, 250 | 
	uhalfword(a1) = (0x1)			# LN: 247 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 250 | 
	b1 = i0; b0 = b0 + a1			# LN: 250, 247 | 
	a1 = a2 + b1			# LN: 250 | 
	AnyReg(i0, a1h)			# LN: 250 | 
	nop #empty cycle
label_end_95:			# LN: 247 | CYCLE: 11 | RULES: ()
	xmem[i0] = a0h			# LN: 250 | 
init_latch_label_4:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 245 | 
label_end_96:			# LN: 245 | CYCLE: 1 | RULES: ()
	a2 = a2 + a0			# LN: 245 | 
for_end_4:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x201)			# LN: 254 | 
	a0 = xmem[i0]			# LN: 254 | 
	a0 & a0			# LN: 254 | 
	if (a == 0) jmp (else_11)			# LN: 254 | 
	call (_cl_get_cycle_count)			# LN: 256 | 
	i0 = (0) + (_sampleBuffer)			# LN: 258 | 
	i1 = (0) + (_sampleBuffer)			# LN: 258 | 
	a2 =+ a0			# LN: 256 | 
	call (_gainProcessing)			# LN: 258 | 
	call (_cl_get_cycle_count)			# LN: 260 | 
	a0 = a0 - a2			# LN: 261 | 
	i0 = (0) + (_string_const_9)			# LN: 262 | 
	call (_printf)			# LN: 262 | 
endif_11:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
	a1 = 0			# LN: 265 | 
	do (0x10), label_end_98			# LN: 265 | 
label_begin_98:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, b3h)			# LN: 267 | 
	b0 = 0			# LN: 267 | 
	do (i0), label_end_97			# LN: 267 | 
label_begin_97:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 269 | 
	a0 = a0 << 4			# LN: 269 | 
	i1 = a0			# LN: 269 | 
	i0 = i2			# LN: 270 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 269 | 
	a0 = i1			# LN: 269 | 
	a0 = a0 + a1			# LN: 269 | 
	AnyReg(i1, a0h)			# LN: 269 | 
	uhalfword(a0) = (0x1)			# LN: 267 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 269, 267 | 
	a0 =+ b1			# LN: 269 | 
label_end_97:			# LN: 267 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 270 | 
init_latch_label_6:			/* LN: 272 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 265 | 
label_end_98:			# LN: 265 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 265 | 
init_latch_label_7:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
label_end_99:			# LN: 243 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_3:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 278 | 
	call (_cl_wavread_close)			# LN: 278 | 
	i0 = i2			# LN: 279 | 
	call (_cl_wavwrite_close)			# LN: 279 | 
	a0 = 0			# LN: 282 | 
__epilogue_260:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x204)			# LN: 283 | 
	i7 -= 1			# LN: 283 | 
	b3l = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	b3h = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	b3g = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	a2g = xmem[i7]; i7 -= 1			# LN: 283, 283 | 
	i2 = xmem[i7]			# LN: 283 | 
	ret			# LN: 283 | 



_saturation:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	a1 = xmem[_GlobalLimiterThreshold + 0]			# LN: 30 | 
	a0 - a1			# LN: 30 | 
	if (a <= 0) jmp (else_0)			# LN: 30 | 
	a0 = xmem[_GlobalLimiterThreshold + 0]			# LN: 32 | 
	jmp (__epilogue_252)			# LN: 32 | 
else_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	a1 = xmem[_GlobalLimiterThreshold + 0]			# LN: 34 | 
	a1 =- a1			# LN: 34 | 
	a0 - a1			# LN: 34 | 
	if (a >= 0) jmp (else_1)			# LN: 34 | 
	a0 = xmem[_GlobalLimiterThreshold + 0]			# LN: 36 | 
	a0 =- a0			# LN: 36 | 
	jmp (__epilogue_252)			# LN: 36 | 
__epilogue_252:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 40 | 
