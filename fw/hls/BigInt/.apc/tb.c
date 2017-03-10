#include <stdio.h>
#define bitSize 256

//Prints out in
void bigint_print(unsigned char in[]);

//Sets in to be 0
void bigint_zero(unsigned char in[]);

//Copies contents in from and copies to to
void bigint_copy(unsigned char to[], unsigned char from[]);

//Returns -1 if a < b. Returns 0 if a == b, Returns 1 if a > b
int bigint_compare(unsigned char a[], unsigned char b[]);

//Shifts a << shift and puts it in out
void bigint_leftshift(unsigned char *out, unsigned char a[], int shift);
//Shifts b >> shift and puts it in out
void bigint_rightshift(unsigned char out[], unsigned char a[], int shift);

//out = a + b
void bigint_add(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a - b
void bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a * b
void bigint_mul(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a / b, out1 = a % b
void bigint_div(unsigned char out[], unsigned char a[], unsigned char b[]);

//out = base ^ exp % mod
void bigint_modexp(unsigned char out[], unsigned char base[], unsigned char exp[], unsigned char mod[]);


void bigint_print(unsigned char in[]){
	int i;
	int leadingZeroFlag = 0;
	printf("0x");
	if(in[0] == 0){
		leadingZeroFlag = 1;
	}

	for(i = 0; i < bitSize; i++){
		if(in[i] != 0){
			leadingZeroFlag = 0;
		}

		if(!leadingZeroFlag){
			printf("%02x", in[i]);

		}
	}

	if(leadingZeroFlag == 1){
			printf("0");
	}
}

void bigint_copy(unsigned char to[], unsigned char from[]){
	int i;

	for(i = 0; i < bitSize; i++){
		to[i] = from[i];
	}


}

int bigint_compare(unsigned char a[], unsigned char b[]){
	int i;
	int j;
	int flag = 0;
	int size;

	int state[bitSize];
	size = bitSize;
	for(i = 0; i < bitSize; i++){
		if(a[i] > b[i]){
			state[i] = 1;
		}else if(a[i] < b[i]){
			state[i] = -1;
		}else if(a[i] == b[i]){
			state[i] = 0;
		}
	}

	if(state[0] != 0){
			return state[0];
	}

	for(i = 0; i < size; i++){
			if(state[i] == 0){
				flag = 1;
			}

			if(state[i] == 1 && flag == 1){
				return 1;
			}

			if(state[i] == -1 && flag == 1){
				return -1;
			}
	}

	return 0;

}

void bigint_zero(unsigned char in[]){
	int i;
	for(i = 0; i < bitSize; i++){
		in[i] = 0;
	}

}

void bigint_add(unsigned char out[], unsigned char a[], unsigned char b[]){
	//Local Var
	unsigned char sum;
	unsigned char carry;

	int i;

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	//Zeroing output and variables
	bigint_zero(tempA);
	bigint_zero(tempB);

	//Copying inputs to local variables
	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	bigint_zero(out);

	for(i = bitSize-1; i >= 0; i--){
		//Sum and Carry
		sum = tempA[i] + tempB[i];
		carry = (tempA[i] + tempB[i]) >> 8;

		//Overflow
		if(out[i] + sum > 0xFF){
			out[i-1] += ((out[i] + sum) >> 8);
		}
		out[i] += sum;

		//Overflow
		if(out[i-1] + carry > 0xFF){
			out[i-2] += ((out[i-1] + carry) >> 8);
		}
		out[i-1] += carry;
	}
}


void bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[]){

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	unsigned char carry[bitSize];

	bigint_zero(tempA);
	bigint_zero(tempB);

	bigint_zero(carry);

	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	bigint_zero(out);

	if(bigint_compare(tempA, tempB) == -1){
		return;
	}

	for(i = bitSize-1; i >= 0; i--){
		if(tempA[i] < tempB[i]){
			if(tempA[i-1] == 0){
				j = i-1;
				while(tempA[j] == 0){
					j--;
					if(j == -1){
						return;
					}
				}

				tempA[j] -= 1;
				j++;
				while(j != i-1){
					tempA[j] = 0xFF;
					j++;
				}

				tempA[i-1] = 0xFF;
				carry[i] += 1;

			}else{
				tempA[i-1] -= 1;
				carry[i] += 1;
			}
		}

		out[i] = ((carry[i] << 16) + tempA[i]) - tempB[i];
	}

}


void bigint_mul(unsigned char out[], unsigned char a[], unsigned char b[]){

	//Product and Carry
	unsigned char prod;
	unsigned char carry;

	//placeholder
	unsigned char sum[bitSize];

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;

	bigint_zero(tempA);
	bigint_zero(tempB);

	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	bigint_zero(out);
	bigint_zero(sum);

	//Iterate through the b term
	for(i = 0; i < bitSize; i++){

		//Iterate through the a term
		for(j = 0, k = bitSize - 1 - i; j < bitSize; j++, k--){

			//Find the product and the carry
			prod = tempB[bitSize-1-i]*tempA[bitSize-1-j];
			carry = (tempB[bitSize-1-i]*tempA[bitSize-1-j] >> 8);

			if(!(prod == 0x00 && carry == 0x00)){
				//If the product and the output overflows, add the overflow to the next output
				if(sum[k] + prod > 0xFF){
					sum[k-1] += ((sum[k]+prod) >> 8);
				}

				sum[k] += prod;

				//If the next value and the carry overflows, add the overflow to the next next output
				if(sum[k-1] + carry > 0xFF){
					sum[k-2] += ((sum[k-1]+carry) >> 8);
				}

				sum[k-1] += carry;
			}

		}

		bigint_add(out, out, sum);
		bigint_zero(sum);

	}
}

//a / b
void bigint_div(unsigned char out[], unsigned char a[], unsigned char b[]){

	//Counter to iterate through multiplication table
	int i = 0;

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	unsigned char carry[bitSize];
	unsigned char one[bitSize];
	bigint_zero(one);

	one[bitSize-1] = 0x01;

	bigint_zero(tempA);
	bigint_zero(tempB);

	bigint_zero(carry);

	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	carry[bitSize-1] = 0x1;
	bigint_zero(out);

	if(bigint_compare(tempB, out) == 0){
		return;
	}

	//bigint_zero(out1);

	//while tempA < carry
	while(i != -1){
		bigint_add(out, out, one);
		bigint_mul(carry, tempB, out);
		i = bigint_compare(tempA, carry);
	}

	//subtract once because tempA > carry
	bigint_sub(out, out ,one);
	bigint_sub(carry, carry, tempB);
	//bigint_sub(out1, tempA, carry);

}


//c = b^e (mod m)
void bigint_modexp(unsigned char out[], unsigned char base[], unsigned char exp[], unsigned char mod[]){
	unsigned char loopCount[bitSize];

	unsigned char one[bitSize];
	bigint_zero(one);

	bigint_zero(loopCount);
	bigint_zero(out);

	int i = 1;

	out[bitSize-1] = 0x01;

	//while(!(bigint_isEqual(loopCount, exp, expL, expL))){
	while(i != 0){
		//printf("Compare %d vs %d\n", bigint_isEqual(loopCount, exp, expL, expL), bigint_compare(loopCount, exp, expL, expL));
		//bigint_print()

		bigint_add(loopCount, one, loopCount);
		bigint_mul(out, out, base);
		i = bigint_compare(loopCount, exp);

	}

	//bigint_div(loopCount, out, out, mod);


}

void bigint_math(unsigned char a[bitSize], unsigned char b[bitSize], unsigned char c[bitSize]){
/*
	#pragma HLS INTERFACE s_axilite port=return bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=a bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=b bundle=PERIPH_BUS
	#pragma HLS INTERFACE s_axilite port=c bundle=PERIPH_BUS
*/
	//#pragma HLS INTERFACE s_axilite port=d bundle=PERIPH_BUS

	//bigint_mul(c, a, b, outBit, inBit, inBit);

	bigint_div(c, a, b);

}

int main(){

	unsigned char a[bitSize];
	unsigned char b[bitSize];
	unsigned char c[bitSize];

	int i;
	for(i = 0; i < bitSize; i++){
		a[i] = 0;
		b[i] = 0;
		c[i] = 0;

	}

	b[255] = 0x12;
	c[255] = 0x2;

	bigint_math(a,b,c);

	if(a[255] == 6){
		printf("GOOD");
	}

	return 0;
	}
}
