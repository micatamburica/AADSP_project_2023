#ifndef COMMON_H
#define COMMON_H

#include "stdfix_emu.h"

// CONSTANT DEFINITIONS
/////////////////////////////////////////////////////////////////////////////////

// Block size 
#define BLOCK_SIZE 16

// Default values
#define ENABLE_DEFAULT 1

// Gain linear values
#define MINUS_2DB FRACT_NUM(0.794328)
#define MINUS_3DB FRACT_NUM(0.707946)
#define MINUS_6DB FRACT_NUM(0.501187)

// Output Mode
#define MODE2_0_0 "2_0_0"
#define MODE0_2_0 "0_2_0"
#define MODE3_2_0 "3_2_0"

// Number of channels
#define MAX_NUM_CHANNEL 8
#define INPUT_NUM_CHANNELS 2
#define OUTPUT_NUM_CHANNELS_2 2
#define OUTPUT_NUM_CHANNELS_5 5

// Channel IDs. 
#define LEFT_CH 0
#define RIGHT_CH 1
#define CENTER_CH 2
#define LEFT_S_CH 3
#define RIGHT_S_CH 4

// Values for Inverter
#define INVERTER_DEGREE 0.8
#define INVERTER_GAIN 0.8

// DSP TYPE DEFINITIONS
/////////////////////////////////////////////////////////////////////////////////

typedef short DSPshort;				// DSP integer
typedef unsigned short DSPushort;	// DSP unsigned integer
typedef int DSPint;					// DSP integer
typedef fract DSPfract;				// DSP fixed-point fractional 
typedef long_accum DSPaccum;		// DSP fixed-point fractional 

// Struct for Inverter
typedef struct {
	DSPfract degree;
	DSPfract gain;
} inverter_data_t;



#endif