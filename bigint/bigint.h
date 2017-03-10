#ifndef BIGINT
#define BIGINT

#include <stdio.h>

//Prints out in
void bigint_print(unsigned char in[]);

//Sets in to be 0
void bigint_zero(unsigned char in[]);

//Copies contents in from and copies to to
void bigint_copy(unsigned char to[], unsigned char from[]);

//Returns -1 if a < b. Returns 0 if a == b, Returns 1 if a > b
int bigint_compare(unsigned char a[], unsigned char b[]);

//Shifts a << shift and puts it in out
void bigint_leftshift(unsigned char out[], unsigned char a[], int shift);
//Shifts b >> shift and puts it in out
void bigint_rightshift(unsigned char out[], unsigned char a[], int shift);

//out = a + b
void bigint_add(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a - b
void bigint_sub(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a * b
void bigint_mul(unsigned char out[], unsigned char a[], unsigned char b[]);
//out = a / b, out1 = a % b
void bigint_div(unsigned char out[], unsigned char out1[], unsigned char a[], unsigned char b[]);

void bigint_longdiv(unsigned char out[], unsigned char out1[], unsigned char a[], unsigned char b[]);
//out = base ^ exp % mod
void bigint_modexp(unsigned char out[], unsigned char base[], unsigned char exp[], unsigned char mod[]);


#endif
