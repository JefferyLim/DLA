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
	bigint_modexp(a,b ,c, d);
}

//
//int main(){
//	setvbuf(stdout,NULL,_IONBF,0);
//	unsigned char a[bitSize];
//	unsigned char b[bitSize];
//	unsigned char c[bitSize];
//	unsigned char d[bitSize];
//
//	int i;
//	for(i = 0; i < bitSize; i++){
//		a[i] = 0;
//		b[i] = 0;
//		c[i] = 0;
//		d[i] = 0;
//
//	}
//
//	FILE *fp;
//
//	unsigned char u;
//
//	fp = fopen("a.txt", "r");
//		i=0;
//		while(fscanf(fp, "%2x", &u) == 1){ //bigint library, insert A
//			b[i] = u;
//			i++;
//
//		}
//		fclose(fp);
//
//		fp = fopen("b.txt", "r");
//		i=0;
//		while(fscanf(fp, "%2x", &u) == 1){ //bigint library, insert B
//			d[i] = u;
//			i++;
//		}
//		fclose(fp);
//
//		c[255] = 0x01;
//		//c[254] = 0x00;
//		//c[253] = 0x01;
//
//
//	bigint_math(a,b, c,d);
//
//	bigint_print(a);printf("\n");
//	return 0;
//
//}

//Attempt to only use the ap_uint library that HLS provides.
//Takes way too much utilization and cannot be implemented on an FPGA
//
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
