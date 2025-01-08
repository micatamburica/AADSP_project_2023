
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"

// IO Buffers
static DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

// Processing related variables
static DSPfract GlobalInputGain;
static DSPfract GlobalHeadroomGain;
static DSPfract GlobalLimiterThreshold = 0.999;
static inverter_data_t GlobalInverterData;
static char OutputModeFlag[] = MODE2_0_0;

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
void gainProcessing(DSPfract pIn[][BLOCK_SIZE], DSPfract pOut[][BLOCK_SIZE])
{

	DSPfract* InLSamplePtr = *(pIn + LEFT_CH);
	DSPfract* InRSamplePtr = *(pIn + RIGHT_CH);
	DSPfract* OutLSamplePtr = *(pOut + LEFT_CH);
	DSPfract* OutRSamplePtr = *(pOut + RIGHT_CH);
	DSPfract* OutCSamplePtr = *(pOut + CENTER_CH);
	DSPfract* OutLsSamplePtr = *(pOut + LEFT_S_CH);
	DSPfract* OutRsSamplePtr = *(pOut + RIGHT_S_CH);

	for (DSPint j = 0; j < BLOCK_SIZE; j++)
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

/////////////////////////////////////////////////////////////////////////////////
// @Author	Milica Vojnovic RA 59-2020
//
// Function:	main
//
// @param   - argv[1] - Input file name
//			- argv[2] - Output file name
//			- argv[3] - Enable ON(1)/OFF(0) Disable, default ON(1)
//			- argv[4] - InputGain (from 0 to -infinity), default -6DB
//			- argv[5] - HeadroomGain (from 0 to -infinity), default -3DB
//			- argv[6] - Output Mode 2_0_0 or 0_2_0 or 3_2_0, default 2_0_0
// 
// @return - nothing
// Comment: main routine of a program
//
// E-mail:	milicav2001@gmail.com
//
/////////////////////////////////////////////////////////////////////////////////
int main(int argc, char* argv[])
{
	FILE* wav_in = NULL;
	FILE* wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;

	int EnableFlag = ENABLE_DEFAULT;
	DSPfract InputG = MINUS_6DB;
	DSPfract HeadroomG = MINUS_3DB;

	// Init arg of comand line
	EnableFlag = atoi(argv[3]);
	InputG = atof(argv[4]);
	HeadroomG = atof(argv[5]);
	strcpy(OutputModeFlag, argv[6]);

	// Init Data for the Inverter
	audio_invert_init(&GlobalInverterData);

	// Init channel buffers
	for (int i = 0; i < MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	//-------------------------------------------------

	// Read input wav header
	ReadWavHeader(wav_in, inputWAVhdr);

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = OUTPUT_NUM_CHANNELS_2; // change number of channels
	if(!strcmp(OutputModeFlag, MODE3_2_0) && EnableFlag)
		outputWAVhdr.fmt.NumChannels = OUTPUT_NUM_CHANNELS_5;

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign * outputWAVhdr.fmt.NumChannels;
	//-------------------------------------------------

	// Write output WAV header to file
	WriteWavHeader(wav_out, outputWAVhdr);

	// Init gain processing values
	initGainProcessing(InputG, HeadroomG);
	
	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels * inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (int i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			if (EnableFlag)
				gainProcessing(sampleBuffer, sampleBuffer);

			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j].toLong();	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}