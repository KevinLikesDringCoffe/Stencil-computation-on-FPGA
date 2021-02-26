#include "fdtd.h"


void Kernel64x64(data_t array_buffer[SIZE][SIZE],
				data_t bondary_n_buffer[SIZE],
				data_t bondary_s_buffer[SIZE],
				data_t bondary_w_buffer[SIZE],
				data_t bondary_e_buffer[SIZE],
				data_t coef_tij,
				data_t coef_ti,
				data_t coef_tj,
				int iter)
{
#pragma HLS ARRAY_PARTITION variable=bondary_e_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=bondary_w_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=bondary_n_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=bondary_s_buffer cyclic factor=2 dim=1

#pragma HLS ARRAY_PARTITION variable=array_buffer cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=array_buffer cyclic factor=2 dim=1

	data_t array_buffer_tmp[SIZE][SIZE];
#pragma HLS ARRAY_PARTITION variable=array_buffer_tmp cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=array_buffer_tmp cyclic factor=2 dim=1


	for(int it=0; it<iter; it++)
	{
#pragma HLS LOOP_TRIPCOUNT max=1000
		for(int tile_i=0; tile_i<SIZE; tile_i+=TILE_SIZE)
		{
			for(int tile_j=0; tile_j<SIZE; tile_j+=TILE_SIZE)
			{
#pragma HLS PIPELINE
				for(int i=0; i<TILE_SIZE; i++)
				{
					for(int j=0; j<TILE_SIZE; j++)
					{
						int row = tile_i + i;
						int col = tile_j + j;
						if(col == 0 && row == 0)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												bondary_n_buffer[col], array_buffer[row+1][col],
												bondary_w_buffer[row], array_buffer[row][col+1],
												coef_tij, coef_ti, coef_tj);
						}
						else if(col == 0 && row == SIZE-1)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col], bondary_s_buffer[col],
												bondary_w_buffer[row], array_buffer[row][col+1],													coef_tij, coef_ti, coef_tj);
						}
						else if(col == SIZE-1 && row == 0)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												bondary_n_buffer[col], array_buffer[row+1][col],
												array_buffer[row][col-1], bondary_e_buffer[row],
												coef_tij, coef_ti, coef_tj);
						}
						else if(col == SIZE-1 && row == SIZE - 1)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col], bondary_s_buffer[col],
												array_buffer[row][col-1], bondary_e_buffer[row],
												coef_tij, coef_ti, coef_tj);
						}
						else if(col == 0)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col], array_buffer[row+1][col],
												bondary_w_buffer[row], array_buffer[row][col+1],
												coef_tij, coef_ti, coef_tj);
						}
						else if(col == SIZE-1)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col], array_buffer[row+1][col],
												array_buffer[row][col-1], bondary_e_buffer[row],
												coef_tij, coef_ti, coef_tj);
						}
						else if(row == 0)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												bondary_n_buffer[col], array_buffer[row+1][col],
												array_buffer[row][col-1], array_buffer[row][col+1],
												coef_tij, coef_ti, coef_tj);
						}
						else if(row == SIZE-1)
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col],bondary_s_buffer[col],
												array_buffer[row][col-1], array_buffer[row][col+1],
												coef_tij, coef_ti, coef_tj);

						}
						else
						{
							array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
												array_buffer[row-1][col], array_buffer[row+1][col],
												array_buffer[row][col-1], array_buffer[row][col+1],
												coef_tij, coef_ti, coef_tj);
						}
					}
				}
			}
		}

		for(int i=0; i<SIZE; i++)
		{
#pragma HLS UNROLL factor=2
			for(int j=0; j<SIZE; j++)
			{
#pragma HLS UNROLL factor=2
				array_buffer[i][j] = array_buffer_tmp[i][j];
			}
		}
	}
}
