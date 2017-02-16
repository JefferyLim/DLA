#include <stdio.h>
#include <stdlib.h>
#include "ap_utils.h"
//
//#include "BigIntegerLibrary.hh"
//
//#define AP_INT_MAX_W 4096
//#include "ap_int.h"
//
//typedef ap_uint<2048>  uint2048;
#define inBit 128
#define outBit 256

//Chars are 2048 bit binary values.
void bigint_math(unsigned char a[128], unsigned char b[128], unsigned char c[256]){
//
	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=a bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=b bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=c bundle=PERIPH_BUS

	unsigned char prod;
	unsigned char carry;
	int i = 0;
	int j = 0;
	int k = inBit * 2 - 1;

	for(i = 0; i < outBit; i++){
		c[i] = 0;
	}

	for(i = 0; i < inBit; i++){
		k = outBit - 1 - i;

		for(j = 0; j < inBit; j++){
			prod = b[inBit-1-i]*a[inBit-1-j];
			carry = (b[inBit-1-i]*a[inBit-1-j] >> 8);

			if(c[k] + prod >= 0x100){
				c[k-1] += ((c[k]+prod) >> 8);
			}

			c[k] += prod;

			if(c[k-1] + carry >= 0x100){
				c[k-2] += ((c[k-1]+carry) >> 8);
			}
			c[k-1] += carry;

			k--;
		}
	}

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
