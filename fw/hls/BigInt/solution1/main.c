#include <stdio.h>
#include <stdlib.h>
#include "bigint.h"

#define bitSize 256

void bigint_math(unsigned char a[bitSize], unsigned char b[bitSize], unsigned char c[bitSize], unsigned char d[bitSize]){
	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=a bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=b bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=c bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=d bundle=PERIPH_BUS

	bigint_zero(a);
	bigint_modexp(a, b, c, d);
}


int main(){
	unsigned char a[bitSize];
	unsigned char b[bitSize];
	unsigned char c[bitSize];
	unsigned char d[bitSize];

	int i;
	for(i = 0; i < bitSize; i++){
		a[i] = 0;
		b[i] = 0;
		c[i] = 0;
		d[i] = 0;

	}

	b[255] = 0x4;
	c[255] = 0x2;
	d[255] = 0x3;

	bigint_math(a,b, c,d);

	if(a[255] == 9){
		return 1;
	}
	return 0;

}

//Attempt to only use the ap_uint library that HLS provides.
//Takes way too much utilization and cannot be implemented on an FPGA

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
