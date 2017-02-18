#include <stdio.h>
#include <gmp.h>

#define inBit 128	
#define outBit 256

void bigint_print(unsigned char in[], int length);
void bigint_mul(unsigned char a[], unsigned char b[], unsigned char c[], int factorL,  int outputL);
void bigint_add(unsigned char a[], unsigned char b[], unsigned char c[], int length); //assumes the two numbers are equal sizes
void bigint_zero(unsigned char a[], int length);

int main(){
	//Testing a * b = c;	
	unsigned char a[inBit];
	unsigned char b[inBit];
	unsigned char c[outBit];
	
	//
	unsigned int u;
	unsigned char buff[outBit];
	int i;
	
	mpz_t a1, b1, c1;

	mpz_init(c1);

	bigint_zero(a, inBit);
	bigint_zero(b, inBit);
	bigint_zero(c, outBit);

	FILE *fp;

	fp = fopen("a.txt", "r");
	i=0;
	while(fscanf(fp, "%2x", &u) == 1){ 
		a[i] = u;		
		i++;
	}

	fseek(fp, 0, SEEK_SET);

	fscanf(fp, "%s", buff);
	mpz_init_set_str(a1,buff, 16);
	
	fclose(fp);

	fp = fopen("b.txt", "r");

	i=0;
	while(fscanf(fp, "%2x", &u) == 1){ 
		b[i] = u;
		i++;
	}

	fseek(fp, 0, SEEK_SET);

	fscanf(fp, "%s", buff);
	mpz_init_set_str(b1,buff, 16);
	fclose(fp);

	printf("Multiplying:\n");	
	bigint_print(a, inBit);
	bigint_print(b, inBit);

	mpz_mul(c1, a1, b1);

	printf("Library Result:\n%s\n\n", mpz_get_str(NULL, 16, c1));
	
	printf("BigInt Result:\n");
	bigint_mul(a,b,c, inBit, outBit);
	bigint_print(c, outBit);

	bigint_zero(c, outBit);
	
	bigint_mul(a,b,c, inBit, outBit);
	bigint_print(c, outBit);
	
}

void bigint_print(unsigned char in[], int length){

	int i;
	for(i = 0; i < length; i++){
		printf("%02x", in[i]);	
	}
	printf("\n\n");
}


//All unsigned char are assumed to be: 0 -> MSB and 127 -> LSB 
void bigint_mul(unsigned char a[], unsigned char b[], unsigned char c[], int factorL, int outputL){

	//Product and Carry
	unsigned char prod;	
	unsigned char carry;
	
	//placeholder
	unsigned char d[outputL];

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;

	
	bigint_zero(d, outputL);

	//Iterate through the b term 
	for(i = 0; i < factorL; i++){

		
		//Iterate through the a term
		for(j = 0, k = outputL - 1 - i; j < factorL; j++, k--){	

			//Find the product and the carry
			prod = b[factorL-1-i]*a[factorL-1-j];
			carry = (b[factorL-1-i]*a[factorL-1-j] >> 8);
			
			if(!(prod == 0x00 && carry == 0x00)){
				//If the product and the output overflows, add the overflow to the next output 
				if(d[k] + prod > 0xFF){
					d[k-1] += ((d[k]+prod) >> 8);			
				}

				d[k] += prod;

				//If the next value and the carry overflows, add the overflow to the next next output
				if(d[k-1] + carry > 0xFF){
					d[k-2] += ((d[k-1]+carry) >> 8);
				}

				d[k-1] += carry;
			}
			
		}
		
		//bigint_print(d, outputL);
		bigint_add(d, c, c, outputL);
		bigint_zero(d, outputL);
	
	}
}

void bigint_add(unsigned char a[], unsigned char b[], unsigned char c[], int length){
	
	unsigned char sum;
	unsigned char carry;

	//Counter to iterate through multiplication table
	int i = 0;
	int j = 0;

	//Keeps track of output array
	int k = 0;

	unsigned char temp1[length];
	unsigned char temp2[length];

	for(i = 0; i < length; i++){
		temp1[i] = a[i];
		temp2[i] = b[i];
	}

	bigint_zero(c, length);

	//bigint_print(temp1, length);
	//bigint_print(temp2, length);

	for(i = length-1; i >= 0; i--){
		sum = temp1[i] + temp2[i];
		carry = (temp1[i] + temp2[i]) >> 8;

		//printf("%02x + %02x = %02x%02x\n", temp1[i], temp2[i], carry, sum);

		if(c[i] + sum > 0xFF){
			c[i-1] += ((c[i] + sum) >> 8);
		}				
		c[i] += sum;		
		
		if(c[i-1] + carry > 0xFF){
			c[i-2] += ((c[i-1] + carry) >> 8);
		}		
		c[i-1] += carry;
	}

	//bigint_print(c, length);


}

void bigint_zero(unsigned char a[], int length){
	int i;	
	for(i = 0; i < length; i++){
		a[i] = 0;
	}

}
