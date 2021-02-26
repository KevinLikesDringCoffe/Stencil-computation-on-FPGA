#include "fdtd.h"
#include "stdio.h"

data_t A[SIZE][SIZE];
data_t A_tmp[SIZE][SIZE];
data_t n[SIZE], s[SIZE], w[SIZE], e[SIZE];



void wrapper(data_t initial_array[SIZE][SIZE],
		data_t bondary_n[SIZE],
		data_t bondary_s[SIZE],
		data_t bondary_w[SIZE],
		data_t bondary_e[SIZE],
		data_t coef_tij,
		data_t coef_ti,
		data_t coef_tj,
		int iter
		);

int iter = 100;

void init()
{
	for(int i=0; i<SIZE; i++)
	{
		for(int j=0; j<SIZE; j++)
		{
			A[i][j] = 0;
			A_tmp[i][j] = 0;
		}
	}

	for(int i = 0; i < SIZE; i++)
	{
		n[i] = 100;
		s[i] = 0;
		w[i] = 0;
		e[i] = 0;
	}

}

int main(){

	data_t coef_tij = 1 - 2 * dt * BETA * (1/dx/dx + 1/dy/dy);
	data_t coef_ti  = dt * BETA /dx/dx;
	data_t coef_tj  = dt * BETA /dy/dy;

	init();
/*
	for(int it=0; it<iter; it++)
	{
		for(int i=1; i<SIZE-1; i++)
		{
			for(int j=1; j<SIZE-1; j++)
			{
				A[i][j] = coef_tij * A_tmp[i][j] + coef_ti * A_tmp[i+1][j] + coef_ti * A_tmp[i-1][j] + coef_tj * A_tmp[i][j+1] + coef_tj * A_tmp[i][j-1];
			}
		}

		for(int i=0; i<SIZE; i++)
		{
			for(int j=0; j<SIZE; j++)
			{
				A_tmp[i][j] = A[i][j];
			}
		}
	}
*/
	wrapper(A, n, s, w, e, coef_tij, coef_ti, coef_tj, 100);
	//Kernel64x64(A, n, s, w, e, coef_tij, coef_ti, coef_tj);
	for(int i=0; i<SIZE; i++)
	{
		for(int j=0; j<SIZE; j++)
		{
			printf("%f ",A[i][j]);
		}
		printf("\n");
	}

	return 0;

}
