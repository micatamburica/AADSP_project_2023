#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include "common.h"
#include <dsplib\timers.h>

// IO Buffers
__memY DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

// Processing related variables
DSPfract GlobalInputGain;
DSPfract GlobalHeadroomGain;
DSPfract GlobalLimiterThreshold = 0.999;
inverter_data_t GlobalInverterData;
char OutputModeFlag[] = MODE3_2_0;

DSPfract Minus_6DB = MINUS_6DB;
DSPfract Minus_2DB = MINUS_2DB;
DSPint ModeFlag = 0;
DSPfract ASMDegree = INVERTER_DEGREE;
DSPfract ASMGain = INVERTER_GAIN;


//FUNCTIONS FOR THE GAIN PROCESSING
/////////////////////////////////////////////////////////////////////////////////
void initGainProcessing(DSPfract inputGainValue, DSPfract headroomGainValue)
{
	GlobalInputGain = inputGainValue;
	GlobalHeadroomGain = headroomGainValue;
}

DSPfract saturation(DSPfract in)
{
	if (in > GlobalLimiterThreshold)
	{
		return GlobalLimiterThreshold;
	}
	else if (in < (- GlobalLimiterThreshold))
	{
		return (-GlobalLimiterThreshold);
	}

	return in;
}

//FUNCTIONS FOR THE INVERTER
///////////////////////////////////////////////////////////////////////////////
void audio_invert_init(inverter_data_t* data)
{
	data->degree = INVERTER_DEGREE;
	data->gain = INVERTER_GAIN;
	ASMDegree = INVERTER_DEGREE;
	ASMGain = INVERTER_GAIN;
}

static DSPfract gst_audio_invert_transform(DSPfract input)
{
	DSPfract dry = (DSPfract)1.0 - (DSPfract)GlobalInverterData.degree;
	DSPfract val;

	val = (input * (DSPfract)dry) - (input * (DSPfract)(GlobalInverterData.degree));

	return saturation(val * (DSPfract)(GlobalInverterData.gain));
}

//GAIN PROCESSING
/////////////////////////////////////////////////////////////////////////////////
#ifdef GAINPROC_ASM
extern void gainProcessing(__memY DSPfract pIn[][BLOCK_SIZE], __memY DSPfract pOut[][BLOCK_SIZE]);
#else
void gainProcessing(__memY DSPfract pIn[][BLOCK_SIZE], __memY DSPfract pOut[][BLOCK_SIZE])
{

	__memY DSPfract* InLSamplePtr = *(pIn + LEFT_CH);
	__memY DSPfract* InRSamplePtr = *(pIn + RIGHT_CH);
	__memY DSPfract* OutLSamplePtr = *(pOut + LEFT_CH);
	__memY DSPfract* OutRSamplePtr = *(pOut + RIGHT_CH);
	__memY DSPfract* OutCSamplePtr = *(pOut + CENTER_CH);
	__memY DSPfract* OutLsSamplePtr = *(pOut + LEFT_S_CH);
	__memY DSPfract* OutRsSamplePtr = *(pOut + RIGHT_S_CH);

	DSPint j;
	for (j = 0; j < BLOCK_SIZE; j++)
	{

		(*OutCSamplePtr) = 0.0;
		(*OutLsSamplePtr) = 0.0;
		(*OutRsSamplePtr) = 0.0;
		
		// 1. InputGain for L and R
		(*InLSamplePtr) = (DSPfract)(*InLSamplePtr) * GlobalInputGain;
		(*InRSamplePtr) = (DSPfract)(*InRSamplePtr) * GlobalInputGain;

		// 2. Add L and R to C
		(*OutCSamplePtr) = saturation((DSPfract)(*InLSamplePtr) + (DSPfract)(*InRSamplePtr));
		
		// 3. HeadroomGain for C (END FOR C)
		(*OutCSamplePtr) = (DSPfract)(*OutCSamplePtr) * GlobalHeadroomGain;

		
		// 4. Inverter for Ls and Rs
		(*OutLsSamplePtr) = gst_audio_invert_transform(*InLSamplePtr);
		(*OutRsSamplePtr) = gst_audio_invert_transform(*InRSamplePtr);

		
		// 5. -6DB for L and R (END FOR L AND R)
		(*OutLSamplePtr) = (DSPfract)(*OutCSamplePtr) * MINUS_6DB;
		(*OutRSamplePtr) = (DSPfract)(*OutCSamplePtr) * MINUS_6DB;

		
		// 6. -2DB for Ls and Rs 
		(*OutLsSamplePtr) = (DSPfract)(*OutLsSamplePtr) * MINUS_2DB;
		(*OutRsSamplePtr) = (DSPfract)(*OutRsSamplePtr) * MINUS_2DB;

		
		// 7. Add L and R to Ls and Rs (END FOR Ls and Rs)
		(*OutLsSamplePtr) = saturation((DSPfract)(*OutLsSamplePtr) + (DSPfract)(*OutLSamplePtr));
		(*OutRsSamplePtr) = saturation((DSPfract)(*OutRsSamplePtr) + (DSPfract)(*OutRSamplePtr));

		// if the mode is 0_2_0 we put the Ls and Rs values to L and R
		if (!strcmp(OutputModeFlag, MODE0_2_0))
		{
			(*OutLSamplePtr) = (*OutLsSamplePtr);
			(*OutRSamplePtr) = (*OutRsSamplePtr);
		}

		InLSamplePtr++;
		InRSamplePtr++;
		OutLSamplePtr ++;
		OutRSamplePtr ++;
		OutCSamplePtr ++;
		OutLsSamplePtr ++;
		OutRsSamplePtr ++;
		
	}

}
#endif

/////////////////////////////////////////////////////////////////////////////////
// @Author	Milica Vojnovic RA 59-2020
//
// Function:	main
//
// @param   - argv[0] - Input file name
//			- argv[1] - Output file name
//			- argv[2] - Enable ON(1)/OFF(0) Disable, default ON(1)
//			- argv[3] - InputGain (from 0 to -infinity), default -6DB
//			- argv[4] - HeadroomGain (from 0 to -infinity), default -3DB
//			- argv[5] - Output Mode 2_0_0 or 0_2_0 or 3_2_0, default 2_0_0
// 
// @return - nothing
// Comment: main routine of a program
//
// E-mail:	milicav2001@gmail.com
//
/////////////////////////////////////////////////////////////////////////////////
int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    DSPint inChannels;
    DSPint outChannels;
    DSPint bitsPerSample;
    DSPint sampleRate;
    DSPint iNumSamples;
    DSPint i;
    DSPint j;

    DSPint EnableFlag = ENABLE_DEFAULT;
	DSPfract InputG = MINUS_6DB;
	DSPfract HeadroomG = MINUS_3DB;

	unsigned long long count1, count2, spent_cycles;

	// Init arg of comand line
	if(!strcmp(argv[2], "0"))
		EnableFlag = 0;

	if(!strcmp(argv[3], "0.999"))
		InputG = FRACT_NUM(0.999);
	else if(!strcmp(argv[3], "-0.999"))
		InputG = FRACT_NUM(-0.999);

	if(!strcmp(argv[4], "0.999"))
			HeadroomG = FRACT_NUM(0.999);
	else if(!strcmp(argv[4], "-0.999"))
		HeadroomG = FRACT_NUM(-0.999);



	// Init Data for the Inverter
	audio_invert_init(&GlobalInverterData);

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		for(j=0; j<BLOCK_SIZE; j++)
			sampleBuffer[i][j] = FRACT_NUM(0.0);

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	inChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------

	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	outChannels = OUTPUT_NUM_CHANNELS_2;

	if(!strcmp(argv[5], MODE0_2_0) && EnableFlag)
			ModeFlag = 1;

	if(!strcmp(argv[5], MODE3_2_0) && EnableFlag)
			outChannels = OUTPUT_NUM_CHANNELS_5;



	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, outChannels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Init gain processing values
	initGainProcessing(InputG, HeadroomG);


	// Processing loop
	//-------------------------------------------------
    {
		int i;
		int j;
		int k;
		int sample;

		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<inChannels; k++)
				{
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			if (EnableFlag) {

				count1 = cl_get_cycle_count();

				gainProcessing(sampleBuffer, sampleBuffer);

				count2 = cl_get_cycle_count();
				spent_cycles = count2 - count1;
				printf("Number of cycles: %llu\n", spent_cycles);
			}

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<outChannels; k++)
				{
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------

    return 0;
 }
