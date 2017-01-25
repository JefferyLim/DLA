#include <stdio.h>
#include <stdlib.h>

#include "ap_utils.h"

#define AP_INT_MAX_W 4096
#include "ap_int.h"

typedef ap_uint<2048>  uintMem;

void bigint_math(uintMem number1, uintMem number2, uintMem* output){

	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=number1 bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=number2 bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=output bundle=PERIPH_BUS

	*output = number1 ^ number2;

}

