#include <stdio.h>
#include <stdlib.h>

#include "ap_utils.h"
#include "ap_int.h"
typedef ap_uint<512>  uintMem;

void encrypt(uintMem key, uintMem* output){

#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=key bundle=PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=output bundle=PERIPH_BUS

//uint512 message = 100;
//uint512 cyper = message^exponent;

	*output = key + 5;

}

