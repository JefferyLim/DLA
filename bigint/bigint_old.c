#include "bigint.h"

void bigint_print(unsigned char in[], int inL){
	int i;
	int leadingZeroFlag = 0;
	printf("0x");
	if(in[0] == 0){
		leadingZeroFlag = 1;
	}
	
	for(i = 0; i < inL; i++){
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


void bigint_copy(unsigned char to[], unsigned char from[], int toL, int fromL){
	int i,j;

	if(toL > fromL){
		for(j = 0; j < (toL - fromL); j++){
			to[j] = 0;
		}
	
	}else if(toL == fromL){
		j = 0;
	}

	for(i = 0; i < fromL; i++){
		to[j+i] = from[i];
	}


}

int bigint_compare(unsigned char a[], unsigned char b[], int aL, int bL){
	int i;
	int j;
	int flag = 0;
	int size;

	int state[aL+bL];

	if (aL > bL){
		size = bL;
		for(j = 0; j < (aL - bL); j++){
			if(a[j] != 0){
				return 1;
			}
		}

		for(i = 0; i < bL; i++){
			if(a[j+i] > b[i]){
				state[i] = 1;
			}else if(a[j+i] < b[i]){
				state[i] = -1;
			}else if(a[j+i] == b[i]){
				state[i] = 0;
			}
		}		

	}else if(aL < bL){
		size = aL;
		for(i = 0; i < (bL - aL); i++){
			if(b[i] != 0){
				return -1;
			}
		}

		for(i = 0; i < bL; i++){
			if(a[i] > b[j+i]){
				state[i] = 1;
			}else if(a[i] < b[j+i]){
				state[i] = -1;
			}else if(a[i] == b[j+i]){
				state[i] = 0;
			}
		}
	}else{	
		size = aL;
		for(i = 0; i < bL; i++){
			if(a[i] > b[i]){
				state[i] = 1;
			}else if(a[i] < b[i]){
				state[i] = -1;
			}else if(a[i] == b[i]){
				state[i] = 0;
			}
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

void bigint_zero(unsigned char in[], int inL){
	int i;	
	for(i = 0; i < inL; i++){
		in[i] = 0;
	}

}

// 00001111 10101100 00100010  by 1
// 00011111 01011000 01000100


void bigint_leftshift(unsigned char out[], unsigned char a[], int outL, int aL, int shift){
	int i, j, k;
	unsigned char tempA[outL];
	unsigned char b;
	bigint_zero(tempA, outL);

	int start = shift/8;
	int bitStart = shift % 8;	
	int outputBit = 0;

	k = outL - 1 - start;
	bigint_zero(out, outL);

	for(i = 0; i < aL; i++){
		tempA[i] = a[i];
	}
	
	for(i = aL-1; i >= 0; i--){
		outputBit = bitStart;
		for(j = 0; j < 8; j++){
			b = ((tempA[i] & (1 << j)) >> j);

			if(outputBit == 8){
				k--;
				outputBit = 0;
				out[k] += b << outputBit;
			}else{
				out[k] += b << outputBit;
			}		

			outputBit++;	

		}

		if(outputBit == 8){
			k--;
		}

	}

}

void bigint_rightshift(unsigned char out[], unsigned char a[], int outL, int aL, int shift){
	int i, j, k;
	unsigned char tempA[outL];
	unsigned char b;
	bigint_zero(tempA, outL);

	int start = shift/8;
	int bitStart = shift % 8;	
	int outputBit = 0;

	k = start;
	bigint_zero(out, outL);

	for(i = 0; i < aL; i++){
		outputBit = (8-bitStart);
		for(j = 7; j >= 0; j--){
			b = ((a[i] & (1 <<j)) >> j);

			if(outputBit == 0){
				k++;
				outputBit = 7;
				out[k] += b << outputBit;
			}else{
				out[k] += b << outputBit;
			}		

			outputBit--;	

		}

		if(outputBit == 0){
			k++;
		}

	}
}


void bigint_add(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL){
	//Local Var
	unsigned char sum;
	unsigned char carry;

	int i = 0;
	
	unsigned char tempA[outL];
	unsigned char tempB[outL];
	
	//Zeroing output and variables
	bigint_zero(tempA, outL);
	bigint_zero(tempB, outL);
	
	//Copying inputs to local variables
	bigint_copy(tempA, a, outL, aL);
	bigint_copy(tempB, b, outL, bL);

	bigint_zero(out, outL);

	for(i = outL-1; i >= 0; i--){
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


void bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL){
	
	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;

	unsigned char tempA[outL];
	unsigned char tempB[outL];

	unsigned char carry[outL];
	
	bigint_zero(tempA, outL);
	bigint_zero(tempB, outL);

	bigint_zero(carry, outL);
	
	bigint_copy(tempA, a, outL, aL);
	bigint_copy(tempB, b, outL, bL);

	bigint_zero(out, outL);

	if(bigint_compare(tempA, tempB, outL, outL) == -1){
		return;
	}

	for(i = outL-1; i >= 0; i--){
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


void bigint_mul(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL){

	//Product and Carry
	unsigned char prod;	
	unsigned char carry;
	
	//placeholder
	unsigned char sum[outL];

	unsigned char tempA[aL];
	unsigned char tempB[bL];

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;
	
	bigint_zero(tempA, aL);
	bigint_zero(tempB, bL);
	
	bigint_copy(tempA, a, aL, aL);
	bigint_copy(tempB, b, bL, bL);

	bigint_zero(out, outL);
	bigint_zero(sum, outL);

	//Iterate through the b term 
	for(i = 0; i < bL; i++){

		//Iterate through the a term
		for(j = 0, k = outL - 1 - i; j < aL; j++, k--){	

			//Find the product and the carry
			prod = tempB[bL-1-i]*tempA[aL-1-j];
			carry = (tempB[bL-1-i]*tempA[aL-1-j] >> 8);
		
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
		
		bigint_add(out, out, sum, outL, outL, outL);	
		bigint_zero(sum, outL);

	}
}

//a / b
void bigint_div(unsigned char out[], unsigned char out1[], unsigned char a[], unsigned char b[], int outL, int out1L, int aL, int bL){

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;

	unsigned char tempA[outL];
	unsigned char tempB[outL];

	unsigned char carry[outL];
	unsigned char one[1];
	bigint_zero(one, 1);

	one[0] = 0x01;
	
	bigint_zero(tempA, outL);
	bigint_zero(tempB, outL);

	bigint_zero(carry, outL);
	
	bigint_copy(tempA, a, outL, aL);
	bigint_copy(tempB, b, outL, bL);

	carry[0] = 0x1;
	bigint_zero(out, outL);
	bigint_zero(out1, out1L);


	//while tempA < carry
	while(k != -1){
		j++;
		bigint_add(out, out, one, outL, outL, 1);	
		bigint_mul(carry, tempB, out, outL, outL, outL);
		k = bigint_compare(tempA, carry, outL, outL);
		
	}

	//subtract once because tempA > carry
	bigint_sub(out, out ,one, outL, outL, 1);
	bigint_sub(carry, carry, tempB, outL, outL, outL);
	bigint_sub(out1, tempA, carry, outL, outL, outL);
	
}



//c = b^e (mod m)
void bigint_modexp(unsigned char out[], unsigned char base[], unsigned char exp[], unsigned char mod[], int outL, int baseL, int expL, int modL){
	unsigned char loopCount[expL];
	unsigned char quotient[outL];
	unsigned char mod1[outL];
	bigint_zero(quotient, outL);
	bigint_zero(mod1, outL);


	unsigned char one[1];
	bigint_zero(one, 1);

	one[0] = 0x01;

	bigint_zero(loopCount, expL);
	bigint_zero(out, outL);

	int i;

	
	out[outL-1] = 0x01;

	//while(!(bigint_isEqual(loopCount, exp, expL, expL))){
	while(i != 0){
		//printf("Compare %d vs %d\n", bigint_isEqual(loopCount, exp, expL, expL), bigint_compare(loopCount, exp, expL, expL));
		//bigint_print()
		
		bigint_add(loopCount, one, loopCount, expL, 1, expL);
		bigint_mul(out, out, base, outL, outL, baseL);
		i = bigint_compare(loopCount, exp, expL, expL);
		
	}

	bigint_div(quotient, out, out, mod, outL, outL, outL, modL);


}
