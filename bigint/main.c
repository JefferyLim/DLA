#include <stdio.h>
#include <gmp.h>

#define inBit 128	
#define outBit 256

void bigint_print(unsigned char in[], int inL);
void bigint_zero(unsigned char in[], int inL);
void bigint_copy(unsigned char to[], unsigned char from[], int toL, int fromL);
void bigint_add(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL);
int bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL);
void bigint_mul(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL);
void bigint_div(unsigned char out[], unsigned char out1[], unsigned char a[], unsigned char b[], int outL, int out1L, int aL, int bL);
void bigint_modexp(unsigned char out[], unsigned char base[], unsigned char exp[], unsigned char mod[], int outL, int baseL, int expL, int modL );
int bigint_compare(unsigned char a[], unsigned char b[], int aL, int bL);

int main(){	
	unsigned char a[inBit];
	unsigned char b[inBit];

	bigint_zero(a, inBit);
	bigint_zero(b, inBit);

	unsigned char buff[outBit];
	unsigned int u;

	int i;
	
	mpz_t a1, b1, c1, d1;

	mpz_init(c1);
	mpz_init(d1);

	FILE *fp;

	fp = fopen("a.txt", "r");
	i=0;
	while(fscanf(fp, "%2x", &u) == 1){ //bigint library, insert A 
		a[i] = u;		
		i++;
	}

	//gmp library, insert A
	fseek(fp, 0, SEEK_SET);
	fscanf(fp, "%s", buff);
	mpz_init_set_str(a1,buff, 16);
	
	fclose(fp);

	fp = fopen("b.txt", "r");
	i=0;
	while(fscanf(fp, "%2x", &u) == 1){ //bigint library, insert B
		b[i] = u;
		i++;
	}

	//gmp library, insert B
	fseek(fp, 0, SEEK_SET);
	fscanf(fp, "%s", buff);
	mpz_init_set_str(b1,buff, 16);
	fclose(fp);

	

	printf("Addition Test: ");
	bigint_print(a, inBit);printf(" + ");
	bigint_print(b, inBit);printf(" = ");

	unsigned char sum[outBit];
	bigint_add(sum, a, b, outBit, inBit, inBit);
	bigint_print(sum, outBit);printf("\n");

	printf("Subtraction Test: ");
	bigint_print(a, inBit);printf(" - ");
	bigint_print(b, inBit);printf(" = ");

	unsigned char diff[outBit];
	bigint_sub(diff, a, b, outBit, inBit, inBit);
	bigint_print(diff, outBit);printf("\n\n");

	printf("bigint: Multiplication Test: ");
	bigint_print(a, inBit);printf(" * ");
	bigint_print(b, inBit);printf(" = ");

	unsigned char prod[outBit];
	bigint_mul(prod, a, b, outBit, inBit, inBit);
	bigint_print(prod, outBit);printf("\n\n");

	printf("GMP   : Multiplication Test: ");
	bigint_print(a, inBit);printf(" * ");
	bigint_print(b, inBit);printf(" = ");

	mpz_mul(c1, a1, b1);

	printf("%s\n\n", mpz_get_str(NULL, 16, c1));
	
	printf("bigint: Division and Mod Test: ");
	bigint_print(a, inBit);printf(" / ");
	bigint_print(b, inBit);printf(" = ");

	unsigned char quot[outBit];
	unsigned char mod[outBit];
	bigint_div(quot, mod, a, b, outBit, outBit, inBit, inBit);
	bigint_print(quot, outBit);printf(" R ");bigint_print(mod, outBit);printf("\n");

	printf("GMP   : Division and Mod Test: ");
	bigint_print(a, inBit);printf(" / ");
	bigint_print(b, inBit);printf(" = ");

	mpz_tdiv_q(c1, a1, b1);
	mpz_mod(d1, a1, b1);

	printf("%s R %s\n\n", mpz_get_str(NULL, 16, c1), mpz_get_str(NULL, 16, d1));


	printf("bigint: Modular Exponentiation: ");
	unsigned char c[outBit];
	unsigned char m[1];	
	unsigned char d[1];	
	bigint_zero(c, outBit);

	m[0] = 0x15;
	mpz_init_set_str(d1,"15", 16);
	d[0] = 0x2;

	bigint_print(a, inBit);printf(" ^ ");
	bigint_print(d, 1);printf(" mod ");
	bigint_print(m, 1); printf(" = ");


	bigint_modexp(c, a, d, m,  outBit, inBit, 1, 1); 
	bigint_print(c,outBit);printf("\n");
	
	printf("GMP   : Modular Exponentiation: ");
	bigint_print(a, inBit);printf(" ^ ");
	bigint_print(d, 1);printf(" mod ");
	bigint_print(m, 1); printf(" = ");

	mpz_powm_ui(c1, a1, d[0], d1);
	
	printf("%s\n\n", mpz_get_str(NULL, 16, c1));



	return 0;

	
}

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


int bigint_isEqual(unsigned char a[], unsigned char b[], int aL, int bL){
	int i;

	if (aL > bL){
		for(i = 0; i < (aL - bL); i++){
			if(a[i] != 0){
				return 0;
			}
		}

		for(i = 0; i < bL; i++){
			if(a[i] != b[i]){
				return 0;
			}
		}
	}else if(aL < bL){
		for(i = 0; i < (bL - aL); i++){
			if(b[i] != 0){
				return 0;
			}
		}

		for(i = 0; i < aL; i++){
			if(a[i] != b[i]){
				return 0;
			}
		}
	}else{

		for(i = 0; i < aL; i++){
			if(a[i] != b[i]){
				return 0;
			}
		}
	}

	return 1;

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
	for(i = (outL-aL); i < outL; i++){
		tempA[i] = a[i - (outL-aL)];
	}

	for(i = (outL-bL); i < outL; i++){
		tempB[i] = b[i - (outL-bL)];
	}


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


int bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[], int outL, int aL, int bL){
	
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

	for(i = (outL-aL); i < outL; i++){
		tempA[i] = a[i - (outL-aL)];
	}

	for(i = (outL-bL); i < outL; i++){
		tempB[i] = b[i - (outL-bL)];
	}


	bigint_zero(out, outL);

	for(i = outL-1; i >= 0; i--){
		if(tempA[i] < tempB[i]){
			if(tempA[i-1] == 0){
				j = i-1;
				while(tempA[j] == 0){
					j--;
					if(j == -1){
						return -1;
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

	return 1;
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

	
	for(i = 0; i < aL; i++){
		tempA[i] = a[i];
	}

	for(i = 0; i < bL; i++){
		tempB[i] = b[i];
	}


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
	
	for(i = (outL-aL); i < outL; i++){
		tempA[i] = a[i - (outL-aL)];
	}

	for(i = (outL-bL); i < outL; i++){
		tempB[i] = b[i - (outL-bL)];
	}

	bigint_zero(out, outL);
	bigint_zero(out1, outL);

	while(k != -1){
		j++;
		bigint_add(out, out, one, outL, outL, 1);	
		bigint_sub(tempA, tempA, tempB, outL, outL, outL);
		k = bigint_compare(tempA, tempB, outL, outL);
	}

	
	for(i = (outL-aL); i < outL; i++){
		tempA[i] = a[i - (outL-aL)];
	}

	for(i = 0; i < j; i++){
		bigint_sub(tempA, tempA, tempB, outL, outL, outL);
	}


	for(i = 0; i < outL; i++){
		out1[i] = tempA[i];	
	
	}
	
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

	
	bigint_div(quotient, mod1, out, mod, outL, outL, outL, modL);

	for(i = 0; i < outL; i++){
		out[i] = mod1[i];
	}

}