#include <stdio.h>
#include <stdlib.h>
#include "ap_utils.h"

#include "BigIntegerLibrary.hh"

#define AP_INT_MAX_W 4096
#include "ap_int.h"

typedef ap_uint<2048>  uint2048;


//Chars are 2048 bit binary values.
void bigint_math(unsigned char number1[256], unsigned char number2[256]){
//
//	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=number1 bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=number2 bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=output bundle=PERIPH_BUS


	BigInteger a = 0;
	BigInteger b = 0;

	for(int i = 0; i < 256; i++){
			int val1(number1[i]);
			int val2(number2[i]);
			a = a + (val1 << 8*i);
			b = b + (val2 << 8*i);

	}

	BigInteger c = a+b;
}



//
////Chars are 2048 bit binary values.
//void bigint_math(unsigned char number1[256], unsigned char number2[256], uint2048* output){
//
//	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=number1 bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=number2 bundle=PERIPH_BUS
//	#pragma HLS INTERFACE s_axilite port=output bundle=PERIPH_BUS
//
//	uint2048 temp1 = 0;
//	uint2048 temp2 = 0;
//
//	for(int i = 0; i < 256; i++){
//		ap_uint<8> val1(number1[i]);
//		ap_uint<8> val2(number2[i]);
//		temp1 = temp1.concat(val1);
//		temp2 = temp2.concat(val2);
//	}
//
//	*output = temp1 * temp2;
//
//}
