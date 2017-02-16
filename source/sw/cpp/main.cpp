#include <stdio.h>

#define inBit 128
#define outBit 256

void printNum(unsigned char in[], int length);

int main(){
	
	unsigned char a[inBit];
	unsigned char b[inBit];
	unsigned char c[outBit];

	unsigned char prod;	
	unsigned char carry;
	int i = 0;
	int j = 0;
	int k = inBit * 2 - 1;

	for(i = 0; i < inBit; i++){
		a[i] = 0;
		b[i] = 0;
	}
	
	for(i = 0; i < outBit; i++){
		c[i] = 0;
	}
	
	a[122] = 0x11;
	a[123] = 0x11;
	a[124] = 0xde;
	a[125] = 0xad;
	a[126] = 0xbe;
	a[127] = 0xef;

	b[122] = 0x11;
	b[123] = 0x11;
	b[124] = 0xde;
	b[125] = 0xad;
	b[126] = 0xbe;
	b[127] = 0xef;
	
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

	printNum(c, outBit);	
}

void printNum(unsigned char in[], int length){

	int i;
	for(i = 0; i < length; i++){
		printf("%02x", in[i]);
	}
	printf("\n");

}

