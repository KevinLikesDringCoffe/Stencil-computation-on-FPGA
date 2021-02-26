#include "fdtd.h"

data_t jacobi_stencil(data_t central,
		data_t n, data_t s, data_t w,
		data_t e, data_t coef_tij,
		data_t coef_ti, data_t coef_tj)
{
#pragma HLS INLINE
	data_t prod1 = coef_tij * central;
	data_t prod2 = coef_tj * (n + s);
	data_t prod3 = coef_ti * (w + e);

	return prod1 + prod2 + prod3;
}
