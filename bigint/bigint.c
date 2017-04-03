#include "bigint.h"

#define bitSize 256

//Initalization of a bigint by zeroing its contents
void bigint_zero(unsigned char in[bitSize]){
	int i;	
	for(i = 0; i < bitSize; i++){

		in[i] = 0;
	}

}

//Print helper function. Doesn't print a new line
void bigint_print(unsigned char in[bitSize]){
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

//Copies components from to to
void bigint_copy(unsigned char to[bitSize], unsigned char from[bitSize]){
	int i;

	for(i = 0; i < bitSize; i++){
		to[i] = from[i];
	}


}

//Compares two values. 
//Returns 1 if a > b.
//Returns 0 if a == b
//Returns -1 if a < b
int bigint_compare(unsigned char a[bitSize], unsigned char b[bitSize]){
	int i;
	int flag = 0;

	int state[bitSize];
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

	for(i = 0; i < bitSize; i++){
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

//bitwise left shift by shift amount
void bigint_leftshift(unsigned char out[bitSize], unsigned char a[bitSize], int shift){
	int i, j, k;

	unsigned char b;

	unsigned char tempA[bitSize];
	bigint_zero(tempA);

	if(shift == 0){
		bigint_copy(out, a);
		return;
	}

	int start = shift/8;
	int bitStart = shift % 8;	
	int outputBit = 0;

	k = bitSize - 1 - start;
	bigint_zero(out);
	
	for(i = bitSize-1; i >= 0; i--){
		outputBit = bitStart;
		for(j = 0; j < 8; j++){
			b = ((a[i] & (1 << j)) >> j);

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

//bitwise right shift by shift amount
void bigint_rightshift(unsigned char out[bitSize], unsigned char a[bitSize], int shift){
	int i, j, k;
	unsigned char tempA[bitSize];
	unsigned char b;
	bigint_zero(tempA);

	if(shift == 0){
		bigint_copy(out, a);
		return;
	}

	int start = shift/8;
	int bitStart = shift % 8;	
	int outputBit = 0;

	k = start;
	bigint_zero(out);

	for(i = 0; i < bitSize; i++){
		outputBit = (7-bitStart);
		for(j = 7; j >= 0; j--){
			b = ((a[i] & (1 << j)) >> j);


			if(outputBit == -1){
				k++;
				outputBit = 8-bitStart;
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

void bigint_add(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]){
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


void bigint_sub(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]){
	
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
//					if(j == -1){
//						return;
//					}
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


void bigint_mul(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]){

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
void bigint_div(unsigned char out[bitSize], unsigned char out1[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]){

	//Counter to iterate through multiplication table
	int i = 1;

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	unsigned char carry[bitSize];
	unsigned char one[bitSize];
	bigint_zero(one);

	bigint_zero(tempA);
	bigint_zero(tempB);

	bigint_zero(carry);
	
	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	carry[bitSize-1] = 0x1;
	one[bitSize-1] = 0x01;
	
	bigint_zero(out);
	bigint_zero(out1);
	
	if(bigint_compare(tempB, out) == 0){
		return;
	}

	while(i == 1){
		bigint_add(out, out, one);
		bigint_mul(carry, tempB, out);
		i = bigint_compare(tempA, carry);
	}

	//subtract once because tempA > carry
	if(i == -1){
		bigint_sub(out, out ,one);
		bigint_sub(carry, carry, tempB);
		bigint_sub(out1, tempA, carry);
	}
	

}



//a / b
void bigint_longdiv(unsigned char out[bitSize], unsigned char out1[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]){

	//Counter to iterate through multiplication table
	int i = 1, j = 1;
	int flag = 0;

	unsigned char tempA[bitSize];
	unsigned char tempB[bitSize];

	unsigned char carry[bitSize];
	unsigned char one[bitSize];
	unsigned char zero[bitSize];
	bigint_zero(one);
	bigint_zero(zero);

	bigint_zero(tempA);
	bigint_zero(tempB);

	bigint_zero(carry);
	
	bigint_copy(tempA, a);
	bigint_copy(tempB, b);

	carry[bitSize-1] = 0x1;
	one[bitSize-1] = 0x01;
	
	bigint_zero(out);
	bigint_zero(out1);
	
	if(bigint_compare(tempB, zero) == 0){
		return;
	}

	if(bigint_compare(tempB, one) == 0){
		bigint_copy(out, tempA);
		bigint_copy(out1, zero);
		return;
	}


	i = bigint_compare(tempA, tempB);
	if(i == -1){
		bigint_copy(out1, tempA);
		bigint_copy(out, zero);
		return;
	}

	if(i == 0){
		out[bitSize-1] = 0x01;
		out1[bitSize-1] = 0x00;
		return;
	}

	int aMSB = 0;
	int bMSB = 0;

	for(i = 0; i < bitSize; i++){
		if(a[i] != 0){
			for(j = 0; j < 8; j++){
				if(((a[i] & (0x80 >> j)) >> (7-j)) == 1){
					flag = 1;
					break;
					
				} 
				aMSB++;
			}
		}

		if(flag == 1){
			break;
		}


		aMSB += 8;
	};

	flag = 0;


	for(i = 0; i < bitSize; i++){

		if(b[i] != 0){
			for(j = 0; j < 8; j++){
				if(((b[i] & (0x80 >> j)) >> (7-j)) == 1){
					flag = 1;
					break;
				} 
					bMSB++;	
			}
		}
		if(flag == 1){
			break;
		}
		bMSB += 8;
	}


	unsigned char temp[bitSize];
	unsigned char diff[bitSize];
	unsigned char q[bitSize];
	unsigned char d[bitSize];
	bigint_zero(q);
	bigint_zero(d);

	bigint_zero(temp);
	bigint_leftshift(d, tempB, bMSB-aMSB);

	unsigned char quot[bitSize];
	bigint_zero(quot);

	unsigned char bitPlace[bitSize];
	bigint_zero(bitPlace);

	bigint_leftshift(bitPlace, one, bMSB-aMSB);

	for(j = 0; j < bMSB-aMSB+1; j++){
		i = bigint_compare(tempA, d);

		if(i == 0 || i == 1){	
			bigint_add(temp, quot, bitPlace);
			bigint_copy(quot, temp);

			bigint_sub(temp, tempA, d);
			bigint_copy(tempA, temp);

			
		}

		bigint_rightshift(temp, bitPlace, 1);
		bigint_copy(bitPlace, temp);

		bigint_rightshift(temp, d, 1);
		bigint_copy(d, temp);

	}

	bigint_copy(out, quot);
	bigint_mul(temp, out, tempB);
	bigint_sub(out1, a, temp);


}




//c = b^e (mod m)
void bigint_modexp(unsigned char out[bitSize], unsigned char base[bitSize], unsigned char exp[bitSize], unsigned char mod[bitSize]){
	int i = 1;
	
	unsigned char zero[bitSize];
	unsigned char one[bitSize];
	unsigned char two[bitSize];

	unsigned char temp[bitSize];
	unsigned char temp1[bitSize];
	unsigned char temp2[bitSize];

	unsigned char tempBase[bitSize];
	unsigned char tempExp[bitSize];
	unsigned char tempMod[bitSize];

	bigint_zero(zero);
	bigint_zero(one);
	bigint_zero(two);

	bigint_zero(temp);
	bigint_zero(temp1);
	bigint_zero(temp2);

	bigint_zero(tempBase);
	bigint_zero(tempExp);
	bigint_zero(tempMod);

	bigint_copy(tempBase, base);
	bigint_copy(tempExp, exp);
	bigint_copy(tempMod, mod);

	temp[bitSize-1] = 0x01;
	one[bitSize-1] = 0x01;
	two[bitSize-1] = 0x02;

	bigint_zero(out);
	if(bigint_compare(mod, one) == 0){
		return;
	}

	unsigned char result[bitSize];
	bigint_zero(result); 	

	out[bitSize-1] = 0x01;
	result[bitSize-1] = 0x01;
	
	bigint_longdiv(temp, temp1, tempBase, tempMod);
	bigint_copy(tempBase, temp1); //Base = Base mod Mod

	while(bigint_compare(tempExp, zero) == 1){
		bigint_zero(temp);
		bigint_zero(temp1);
		bigint_longdiv(temp, temp1, tempExp, two); //if tempExp % 2 == 1

		if(bigint_compare(temp1, one) == 0){
			bigint_mul(temp, result, tempBase);

			bigint_zero(temp1);
			//bigint_zero(temp2);
			bigint_longdiv(temp1, result, temp, tempMod);
			//bigint_copy(result, temp2);
		}

		bigint_rightshift(temp, tempExp, 1);
		bigint_copy(tempExp, temp);

		bigint_zero(temp);
		bigint_mul(temp, tempBase, tempBase);

		bigint_zero(temp1);
		bigint_zero(temp2);
		bigint_longdiv(temp1, tempBase, temp, tempMod);
		//bigint_copy(tempBase, temp2);
		bigint_zero(zero);
		one[bitSize-1] = 0x01;
		two[bitSize-1] = 0x02;
	}

	bigint_copy(out, result);

}
