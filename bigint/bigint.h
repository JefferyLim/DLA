#ifndef BIGINT
#define BIGINT

#include <stdio.h>

#define bitSize 256

//Prints out in
void bigint_print(unsigned char in[bitSize]);

//Sets in to be 0
void bigint_zero(unsigned char in[bitSize]);

//Copies contents in from and copies to to
void bigint_copy(unsigned char to[bitSize], unsigned char from[bitSize]);

//Returns -1 if a < b. Returns 0 if a == b, Returns 1 if a > b
int bigint_compare(unsigned char a[bitSize], unsigned char b[bitSize]);

//Shifts a << shift and puts it in out
void bigint_leftshift(unsigned char out[bitSize], unsigned char a[bitSize], int shift);
//Shifts b >> shift and puts it in out
void bigint_rightshift(unsigned char out[bitSize], unsigned char a[bitSize], int shift);

//out = a + b
void bigint_add(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]);
//out = a - b
void bigint_sub(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]);
//out = a * b
void bigint_mul(unsigned char out[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]);
//out = a / b, out1 = a % b
void bigint_div(unsigned char out[bitSize], unsigned char out1[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]);

void bigint_longdiv(unsigned char out[bitSize], unsigned char out1[bitSize], unsigned char a[bitSize], unsigned char b[bitSize]);
//out = base ^ exp % mod
void bigint_modexp(unsigned char out[bitSize], unsigned char base[bitSize], unsigned char exp[bitSize], unsigned char mod[bitSize]);


#endif
