#include "fdtd.h"


void wrapper(data_t initial_array[SIZE][SIZE],
		data_t bondary_n[SIZE],
		data_t bondary_s[SIZE],
		data_t bondary_w[SIZE],
		data_t bondary_e[SIZE],
		data_t coef_tij,
		data_t coef_ti,
		data_t coef_tj,
		int iter
		)
{
#pragma HLS INTERFACE s_axilite port=iter
#pragma HLS INTERFACE s_axilite port=coef_tj
#pragma HLS INTERFACE s_axilite port=coef_ti
#pragma HLS INTERFACE s_axilite port=coef_tij
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=512 port=bondary_e offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=bondary_w offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=bondary_s offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=bondary_n offset=slave
#pragma HLS INTERFACE m_axi depth=16384 port=initial_array offset=slave

	data_t array_buffer[SIZE][SIZE];
	data_t bondary_n_buffer[SIZE];
	data_t bondary_s_buffer[SIZE];
	data_t bondary_w_buffer[SIZE];
	data_t bondary_e_buffer[SIZE];


	for(int i=0; i<SIZE; i++)
	{
		for(int j=0; j<SIZE; j++)
		{
#pragma HLS pipeline
			array_buffer[i][j] = initial_array[i][j];
		}
	}

	for(int i=0; i<SIZE; i++)
	{
#pragma HLS pipeline
		bondary_n_buffer[i] = bondary_n[i];
	}

	for(int i=0; i<SIZE; i++)
	{
#pragma HLS pipeline
		bondary_s_buffer[i] = bondary_s[i];
	}

	for(int i=0; i<SIZE; i++)
	{
#pragma HLS pipeline
		bondary_w_buffer[i] = bondary_w[i];
	}

	for(int i=0; i<SIZE; i++)
	{
#pragma HLS pipeline
		bondary_e_buffer[i] = bondary_e[i];
	}


	Kernel64x64(array_buffer,
			bondary_n_buffer,
			bondary_s_buffer,
			bondary_w_buffer,
			bondary_e_buffer,
			coef_tij,
			coef_ti,
			coef_tj,
			iter);


	for(int i=0; i<SIZE; i++)
	{
		for(int j=0; j<SIZE; j++)
		{
#pragma HLS pipeline
			initial_array[i][j] = array_buffer[i][j] ;
		}
	}
}
