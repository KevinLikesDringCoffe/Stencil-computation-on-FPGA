#define TILE_SIZE 2
#define SIZE 64

typedef float data_t;

data_t jacobi_stencil(data_t central,
		data_t n, data_t s, data_t w,
		data_t e, data_t coef_tij,
		data_t coef_ti, data_t coef_tj);

void Kernel64x64(data_t array_buffer[SIZE][SIZE],
				data_t bondary_n_buffer[SIZE],
				data_t bondary_s_buffer[SIZE],
				data_t bondary_w_buffer[SIZE],
				data_t bondary_e_buffer[SIZE],
				data_t coef_tij,
			    data_t coef_ti,
				data_t coef_tj,
				int iter);



