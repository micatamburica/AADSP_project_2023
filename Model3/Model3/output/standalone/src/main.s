	.public _ASMDegree
	.public _ASMGain
	.public _GlobalHeadroomGain
	.public _GlobalInputGain
	.public _GlobalInverterData
	.public _GlobalLimiterThreshold
	.public _Minus_2DB
	.public _Minus_6DB
	.public _ModeFlag
	.public _OutputModeFlag
	.extern ___TIMER0_COUNT
	.extern ___TIMER1_COUNT
	.extern ___TIMER1_ENABLE
	.public _sampleBuffer
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
	.extern _gainProcessing
	.public _initGainProcessing
	.public _main
	.extern _printf
	.public _saturation
	.extern _strcmp
	.extern _strcpy
	.extern __div
	.xdata_ovly
_ASMDegree
	.dw  (0x66666666)
	.xdata_ovly
_ASMGain
	.dw  (0x66666666)
	.xdata_ovly
_GlobalHeadroomGain
	.bss (0x1)
	.xdata_ovly
_GlobalInputGain
	.bss (0x1)
	.xdata_ovly
_GlobalInverterData
	.bss (0x2)
	.xdata_ovly
_GlobalLimiterThreshold
	.dw  (0x7fdf3b64)
	.xdata_ovly
_Minus_2DB
	.dw  (0x65ac8a37)
	.xdata_ovly
_Minus_6DB
	.dw  (0x4026e547)
	.xdata_ovly
_ModeFlag
	.dw  (0x0)
	.xdata_ovly
_OutputModeFlag
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
__extractedConst_0_4
	.dw  (0x66666666)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x4026e547)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0x5a9df97b)
	.xdata_ovly
__extractedConst_3_2
	.dw  (0x7fdf3b64)
	.xdata_ovly
__extractedConst_4_2
	.dw  (0x8020c49c)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2d)
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_4
	.dw  (0x2d)
	.dw  (0x30)
	.dw  (0x2e)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x39)
	.dw  (0x0)
	.xdata_ovly
_string_const_5
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
_string_const_6
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
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



_audio_invert_init:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 51 | 
	i7 += 1			# LN: 51 | 
	i7 = i7 + (0x1)			# LN: 51 | 
	i1 = i7 - (0x1)			# LN: 51 | 
	xmem[i1] = i0			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	AnyReg(i0, a0h)			# LN: 53 | 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 54 | 
	i0 += 1			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 55 | 
	xmem[_ASMDegree + 0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 56 | 
	xmem[_ASMGain + 0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_254)			# LN: 57 | 
__epilogue_254:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 57 | 
	i7 -= 1			# LN: 57 | 
	ret			# LN: 57 | 



_initGainProcessing:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 29 | 
	i7 += 1			# LN: 29 | 
	i7 = i7 + (0x2)			# LN: 29 | 
	i0 = i7 - (0x1)			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
	i0 = i7 - (0x2)			# LN: 29 | 
	xmem[i0] = a1h			# LN: 29 | 
cline_29_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	xmem[_GlobalInputGain + 0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 32 | 
	a0 = xmem[i0]			# LN: 32 | 
	xmem[_GlobalHeadroomGain + 0] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_250)			# LN: 33 | 
__epilogue_250:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 33 | 
	i7 -= 1			# LN: 33 | 
	ret			# LN: 33 | 



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

_main:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 161 | 
	i7 += 1			# LN: 161 | 
	i7 = i7 + (0x218)			# LN: 161 | 
	i1 = i7 - (0x1)			# LN: 161 | 
	xmem[i1] = a0h			# LN: 161 | 
	i1 = i7 - (0x2)			# LN: 161 | 
	xmem[i1] = i0			# LN: 161 | 
cline_161_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 177 | 
	uhalfword(a0) = (0x1)			# LN: 177 | 
	xmem[i0] = a0h			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 178 | 
	i0 = i7 - (0x4)			# LN: 178 | 
	xmem[i0] = a0h			# LN: 178 | 
cline_178_0:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 179 | 
	i0 = i7 - (0x5)			# LN: 179 | 
	xmem[i0] = a0h			# LN: 179 | 
cline_179_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	i1 = (0) + (_string_const_0)			# LN: 184 | 
	i0 += 2			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	call (_strcmp)			# LN: 184 | 
	a0 & a0			# LN: 184 | 
	if (a != 0) jmp (else_2)			# LN: 184 | 
cline_184_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 185 | 
	a0 = 0			# LN: 185 | 
	xmem[i0] = a0h			# LN: 185 | 
	jmp (endif_2)			# LN: 185 | 
cline_185_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 187 | 
	i0 = xmem[i0]			# LN: 187 | 
	i1 = (0) + (_string_const_1)			# LN: 187 | 
	i0 = i0 + (0x3)			# LN: 187 | 
	i0 = xmem[i0]			# LN: 187 | 
	call (_strcmp)			# LN: 187 | 
	a0 & a0			# LN: 187 | 
	if (a != 0) jmp (else_3)			# LN: 187 | 
cline_187_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_2 + 0]			# LN: 188 | 
	i0 = i7 - (0x4)			# LN: 188 | 
	xmem[i0] = a0h			# LN: 188 | 
	jmp (endif_3)			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 189 | 
	i0 = xmem[i0]			# LN: 189 | 
	i1 = (0) + (_string_const_2)			# LN: 189 | 
	i0 = i0 + (0x3)			# LN: 189 | 
	i0 = xmem[i0]			# LN: 189 | 
	call (_strcmp)			# LN: 189 | 
	a0 & a0			# LN: 189 | 
	if (a != 0) jmp (else_4)			# LN: 189 | 
cline_189_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_4_2 + 0]			# LN: 190 | 
	i0 = i7 - (0x4)			# LN: 190 | 
	xmem[i0] = a0h			# LN: 190 | 
	jmp (endif_4)			# LN: 190 | 
cline_190_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	i1 = (0) + (_string_const_3)			# LN: 192 | 
	i0 = i0 + (0x4)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	call (_strcmp)			# LN: 192 | 
	a0 & a0			# LN: 192 | 
	if (a != 0) jmp (else_5)			# LN: 192 | 
cline_192_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_2 + 0]			# LN: 193 | 
	i0 = i7 - (0x5)			# LN: 193 | 
	xmem[i0] = a0h			# LN: 193 | 
	jmp (endif_5)			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 194 | 
	i0 = xmem[i0]			# LN: 194 | 
	i1 = (0) + (_string_const_4)			# LN: 194 | 
	i0 = i0 + (0x4)			# LN: 194 | 
	i0 = xmem[i0]			# LN: 194 | 
	call (_strcmp)			# LN: 194 | 
	a0 & a0			# LN: 194 | 
	if (a != 0) jmp (else_6)			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_4_2 + 0]			# LN: 195 | 
	i0 = i7 - (0x5)			# LN: 195 | 
	xmem[i0] = a0h			# LN: 195 | 
	jmp (endif_6)			# LN: 195 | 
cline_195_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_GlobalInverterData)			# LN: 200 | 
	call (_audio_invert_init)			# LN: 200 | 
cline_200_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 203 | 
	a0 = 0			# LN: 203 | 
	xmem[i0] = a0h			# LN: 203 | 
	do (0x8), label_end_93			# LN: 203 | 
cline_203_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 204 | 
	a0 = 0			# LN: 204 | 
	xmem[i0] = a0h			# LN: 204 | 
	do (0x10), label_end_92			# LN: 204 | 
cline_204_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 205 | 
	a0 = xmem[i0]; a1 = 0			# LN: 205, 205 | 
	a0 = a0 << 4			# LN: 205 | 
	i0 = a0			# LN: 205 | 
	i1 = i7 - (0x7)			# LN: 205 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 205 | 
	a0 = xmem[i1]			# LN: 205 | 
	b0 = i0			# LN: 205 | 
	a0 = a0 + b0			# LN: 205 | 
	AnyReg(i0, a0h)			# LN: 205 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 205 | 
cline_205_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 204 | 
	a0 = xmem[i0]			# LN: 204 | 
	uhalfword(a1) = (0x1)			# LN: 204 | 
	a0 = a0 + a1			# LN: 204 | 
	i0 = i7 - (0x7)			# LN: 204 | 
label_end_92:			# LN: 204 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 204 | 
cline_204_1:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 203 | 
	a0 = xmem[i0]			# LN: 203 | 
	uhalfword(a1) = (0x1)			# LN: 203 | 
	a0 = a0 + a1			# LN: 203 | 
	i0 = i7 - (0x6)			# LN: 203 | 
label_end_93:			# LN: 203 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 203 | 
cline_203_1:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 209 | 
	i0 = xmem[i0]			# LN: 209 | 
	i1 = i7 - (263 - 0)			# LN: 209 | 
	i4 = xmem[i0]			# LN: 209 | 
	i0 = i1			# LN: 209 | 
	i1 = i4			# LN: 209 | 
	call (_strcpy)			# LN: 209 | 
cline_209_0:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (263 - 0)			# LN: 210 | 
	call (_cl_wavread_open)			# LN: 210 | 
	AnyReg(i0, a0h)			# LN: 210 | 
	i1 = i7 - (0x108)			# LN: 210 | 
	xmem[i1] = i0			# LN: 210 | 
cline_210_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 211 | 
	a0 = xmem[i0]			# LN: 211 | 
	a0 & a0			# LN: 211 | 
	if (a != 0) jmp (else_7)			# LN: 211 | 
cline_211_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_5)			# LN: 213 | 
	call (_printf)			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 214 | 
	jmp (__epilogue_260)			# LN: 214 | 
cline_214_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 220 | 
	i0 = xmem[i0]			# LN: 220 | 
	call (_cl_wavread_getnchannels)			# LN: 220 | 
	i0 = i7 - (0x109)			# LN: 220 | 
	xmem[i0] = a0h			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 221 | 
	i0 = xmem[i0]			# LN: 221 | 
	call (_cl_wavread_bits_per_sample)			# LN: 221 | 
	i0 = i7 - (0x10a)			# LN: 221 | 
	xmem[i0] = a0h			# LN: 221 | 
cline_221_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 222 | 
	i0 = xmem[i0]			# LN: 222 | 
	call (_cl_wavread_frame_rate)			# LN: 222 | 
	i0 = i7 - (0x10b)			# LN: 222 | 
	xmem[i0] = a0h			# LN: 222 | 
cline_222_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 223 | 
	i0 = xmem[i0]			# LN: 223 | 
	call (_cl_wavread_number_of_frames)			# LN: 223 | 
	i0 = i7 - (0x10c)			# LN: 223 | 
	xmem[i0] = a0h			# LN: 223 | 
cline_223_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	i1 = i7 - (524 - 0)			# LN: 228 | 
	i0 += 1			# LN: 228 | 
	i4 = xmem[i0]			# LN: 228 | 
	i0 = i1			# LN: 228 | 
	i1 = i4			# LN: 228 | 
	call (_strcpy)			# LN: 228 | 
cline_228_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 229 | 
	uhalfword(a0) = (0x2)			# LN: 229 | 
	xmem[i0] = a0h			# LN: 229 | 
cline_229_0:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 231 | 
	i0 = xmem[i0]			# LN: 231 | 
	i1 = (0) + (_string_const_6)			# LN: 231 | 
	i0 = i0 + (0x5)			# LN: 231 | 
	i0 = xmem[i0]			# LN: 231 | 
	call (_strcmp)			# LN: 231 | 
	a0 & a0			# LN: 231 | 
	if (a != 0) jmp (else_8)			# LN: 231 | 
	i0 = i7 - (0x3)			# LN: 231 | 
	a0 = xmem[i0]			# LN: 231 | 
	a0 & a0			# LN: 231 | 
	if (a == 0) jmp (else_8)			# LN: 231 | 
cline_231_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 232 | 
	xmem[_ModeFlag + 0] = a0h			# LN: 232 | 
	jmp (endif_8)			# LN: 232 | 
cline_232_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	i1 = (0) + (_string_const_7)			# LN: 234 | 
	i0 = i0 + (0x5)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	call (_strcmp)			# LN: 234 | 
	a0 & a0			# LN: 234 | 
	if (a != 0) jmp (else_9)			# LN: 234 | 
	i0 = i7 - (0x3)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	a0 & a0			# LN: 234 | 
	if (a == 0) jmp (else_9)			# LN: 234 | 
cline_234_0:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 235 | 
	uhalfword(a0) = (0x5)			# LN: 235 | 
	xmem[i0] = a0h			# LN: 235 | 
	jmp (endif_9)			# LN: 235 | 
cline_235_0:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (524 - 0)			# LN: 239 | 
	i1 = i7 - (0x10a)			# LN: 239 | 
	a0 = xmem[i1]			# LN: 239 | 
	i1 = i7 - (0x20d)			# LN: 239 | 
	a1 = xmem[i1]			# LN: 239 | 
	i1 = i7 - (0x10b)			# LN: 239 | 
	b0 = xmem[i1]			# LN: 239 | 
	call (_cl_wavwrite_open)			# LN: 239 | 
	AnyReg(i0, a0h)			# LN: 239 | 
	i1 = i7 - (0x20e)			# LN: 239 | 
	xmem[i1] = i0			# LN: 239 | 
cline_239_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 240 | 
	a0 = xmem[i0]			# LN: 240 | 
	a0 & a0			# LN: 240 | 
	if (a != 0) jmp (else_10)			# LN: 240 | 
cline_240_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_8)			# LN: 242 | 
	call (_printf)			# LN: 242 | 
cline_242_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 243 | 
	jmp (__epilogue_260)			# LN: 243 | 
cline_243_0:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 248 | 
	a0 = xmem[i0]			# LN: 248 | 
	i0 = i7 - (0x5)			# LN: 248 | 
	a1 = xmem[i0]			# LN: 248 | 
	call (_initGainProcessing)			# LN: 248 | 
cline_248_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 260 | 
	a0 = 0			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
for_2:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	uhalfword(a1) = (0x10)			# LN: 260 | 
	call (__div)			# LN: 260 | 
	i0 = i7 - (0x20f)			# LN: 260 | 
	a1 = xmem[i0]			# LN: 260 | 
	a1 - a0			# LN: 260 | 
	if (a >= 0) jmp (for_end_2)			# LN: 260 | 
cline_260_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 262 | 
	a0 = 0			# LN: 262 | 
	xmem[i0] = a0h			# LN: 262 | 
	do (0x10), label_end_94			# LN: 262 | 
cline_262_0:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 264 | 
	a0 = 0			# LN: 264 | 
	xmem[i0] = a0h			# LN: 264 | 
for_4:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 264 | 
	a0 = xmem[i0]			# LN: 264 | 
	i0 = i7 - (0x109)			# LN: 264 | 
	a1 = xmem[i0]			# LN: 264 | 
	a0 - a1			# LN: 264 | 
	if (a >= 0) jmp (for_end_4)			# LN: 264 | 
cline_264_0:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 266 | 
	i0 = xmem[i0]			# LN: 266 | 
	call (_cl_wavread_recvsample)			# LN: 266 | 
	i0 = i7 - (0x212)			# LN: 266 | 
	xmem[i0] = a0h			# LN: 266 | 
cline_266_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 267 | 
	a0 = xmem[i0]			# LN: 267 | 
	a0 = a0 << 4			# LN: 267 | 
	i0 = a0			# LN: 267 | 
	i1 = i7 - (0x210)			# LN: 267 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 267 | 
	a0 = xmem[i1]			# LN: 267 | 
	a1 = i0			# LN: 267 | 
	a0 = a1 + a0			# LN: 267 | 
	AnyReg(i0, a0h)			# LN: 267 | 
	i1 = i7 - (0x212)			# LN: 267 | 
	a0 = xmem[i1]			# LN: 267 | 
	ymem[i0] = a0h			# LN: 267 | 
cline_267_0:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 264 | 
	a0 = xmem[i0]			# LN: 264 | 
	uhalfword(a1) = (0x1)			# LN: 264 | 
	a0 = a0 + a1			# LN: 264 | 
	i0 = i7 - (0x211)			# LN: 264 | 
	xmem[i0] = a0h			# LN: 264 | 
	jmp (for_4)			# LN: 264 | 
cline_264_1:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 262 | 
	a0 = xmem[i0]			# LN: 262 | 
	uhalfword(a1) = (0x1)			# LN: 262 | 
	a0 = a0 + a1			# LN: 262 | 
	i0 = i7 - (0x210)			# LN: 262 | 
label_end_94:			# LN: 262 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 262 | 
cline_262_1:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 271 | 
	a0 = xmem[i0]			# LN: 271 | 
	a0 & a0			# LN: 271 | 
	if (a == 0) jmp (else_11)			# LN: 271 | 
cline_271_0:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	call (_cl_get_cycle_count)			# LN: 273 | 
	i0 = i7 - (0x214)			# LN: 273 | 
	xmem[i0] = a0h; i0 += 1			# LN: 273, 273 | 
	xmem[i0] = a0l			# LN: 273 | 
cline_273_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 275 | 
	i1 = (0) + (_sampleBuffer)			# LN: 275 | 
	call (_gainProcessing)			# LN: 275 | 
cline_275_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	call (_cl_get_cycle_count)			# LN: 277 | 
	i0 = i7 - (0x216)			# LN: 277 | 
	xmem[i0] = a0h; i0 += 1			# LN: 277, 277 | 
	xmem[i0] = a0l			# LN: 277 | 
cline_277_0:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x216)			# LN: 278 | 
	a0 = xmem[i0]; i0 += 1			# LN: 278, 278 | 
	a0l = xmem[i0]			# LN: 278 | 
	i0 = i7 - (0x214)			# LN: 278 | 
	a1 = xmem[i0]; i0 += 1			# LN: 278, 278 | 
	a1l = xmem[i0]			# LN: 278 | 
	a0 = a0 - a1			# LN: 278 | 
	i0 = i7 - (0x218)			# LN: 278 | 
	xmem[i0] = a0h; i0 += 1			# LN: 278, 278 | 
	xmem[i0] = a0l			# LN: 278 | 
cline_278_0:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x218)			# LN: 279 | 
	a0 = xmem[i1]; i1 += 1			# LN: 279, 279 | 
	a0l = xmem[i1]			# LN: 279 | 
	i0 = (0) + (_string_const_9)			# LN: 279 | 
	call (_printf)			# LN: 279 | 
	jmp (endif_11)			# LN: 279 | 
cline_279_0:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 282 | 
	a0 = 0			# LN: 282 | 
	xmem[i0] = a0h			# LN: 282 | 
	do (0x10), label_end_95			# LN: 282 | 
cline_282_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 284 | 
	a0 = 0			# LN: 284 | 
	xmem[i0] = a0h			# LN: 284 | 
for_6:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 284 | 
	a0 = xmem[i0]			# LN: 284 | 
	i0 = i7 - (0x20d)			# LN: 284 | 
	a1 = xmem[i0]			# LN: 284 | 
	a0 - a1			# LN: 284 | 
	if (a >= 0) jmp (for_end_6)			# LN: 284 | 
cline_284_0:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 286 | 
	a0 = xmem[i0]			# LN: 286 | 
	a0 = a0 << 4			# LN: 286 | 
	i0 = a0			# LN: 286 | 
	i1 = i7 - (0x210)			# LN: 286 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 286 | 
	a0 = xmem[i1]			# LN: 286 | 
	a1 = i0			# LN: 286 | 
	a0 = a1 + a0			# LN: 286 | 
	AnyReg(i0, a0h)			# LN: 286 | 
	i1 = i7 - (0x212)			# LN: 286 | 
	a0 = ymem[i0]			# LN: 286 | 
	xmem[i1] = a0h			# LN: 286 | 
cline_286_0:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 287 | 
	i1 = i7 - (0x212)			# LN: 287 | 
	a0 = xmem[i1]			# LN: 287 | 
	i0 = xmem[i0]			# LN: 287 | 
	call (_cl_wavwrite_sendsample)			# LN: 287 | 
cline_287_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 288 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 284 | 
	a0 = xmem[i0]			# LN: 284 | 
	uhalfword(a1) = (0x1)			# LN: 284 | 
	a0 = a0 + a1			# LN: 284 | 
	i0 = i7 - (0x211)			# LN: 284 | 
	xmem[i0] = a0h			# LN: 284 | 
	jmp (for_6)			# LN: 284 | 
cline_284_1:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 289 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 282 | 
	a0 = xmem[i0]			# LN: 282 | 
	uhalfword(a1) = (0x1)			# LN: 282 | 
	a0 = a0 + a1			# LN: 282 | 
	i0 = i7 - (0x210)			# LN: 282 | 
label_end_95:			# LN: 282 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 282 | 
cline_282_1:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 290 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	uhalfword(a1) = (0x1)			# LN: 260 | 
	a0 = a0 + a1			# LN: 260 | 
	i0 = i7 - (0x20f)			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
	jmp (for_2)			# LN: 260 | 
cline_260_1:			/* LN: 295 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 295 | 
	i0 = xmem[i0]			# LN: 295 | 
	call (_cl_wavread_close)			# LN: 295 | 
cline_295_0:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 296 | 
	i0 = xmem[i0]			# LN: 296 | 
	call (_cl_wavwrite_close)			# LN: 296 | 
cline_296_0:			/* LN: 299 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 299 | 
	jmp (__epilogue_260)			# LN: 299 | 
cline_299_0:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
__epilogue_260:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x218)			# LN: 300 | 
	i7 -= 1			# LN: 300 | 
	ret			# LN: 300 | 



_saturation:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 35 | 
	i7 += 1			# LN: 35 | 
	i7 = i7 + (0x1)			# LN: 35 | 
	i0 = i7 - (0x1)			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
cline_35_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 37 | 
	a0 = xmem[i0]			# LN: 37 | 
	a1 = xmem[_GlobalLimiterThreshold + 0]			# LN: 37 | 
	a0 - a1			# LN: 37 | 
	if (a <= 0) jmp (else_0)			# LN: 37 | 
cline_37_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_GlobalLimiterThreshold + 0]			# LN: 39 | 
	jmp (__epilogue_252)			# LN: 39 | 
cline_39_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_GlobalLimiterThreshold + 0]			# LN: 41 | 
	a0 =- a0			# LN: 41 | 
	i0 = i7 - (0x1)			# LN: 41 | 
	a1 = xmem[i0]			# LN: 41 | 
	a1 - a0			# LN: 41 | 
	if (a >= 0) jmp (else_1)			# LN: 41 | 
cline_41_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_GlobalLimiterThreshold + 0]			# LN: 43 | 
	a0 =- a0			# LN: 43 | 
	jmp (__epilogue_252)			# LN: 43 | 
cline_43_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 46 | 
	a0 = xmem[i0]			# LN: 46 | 
	jmp (__epilogue_252)			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
__epilogue_252:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 47 | 
	i7 -= 1			# LN: 47 | 
	ret			# LN: 47 | 
