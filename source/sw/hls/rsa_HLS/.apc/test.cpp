#include "main.h"
#include <ap_cint.h>
#include<stdio.h>
#include<stdlib.h>
#include "ap_utils.h"
#include "ap_int.h"
typedef ap_uint<512>  uintMem;


int main (int argc, char** argv) {
	ap_uint<512> a = 1;
	ap_uint<512>* b;

    encrypt(a, &b);
    return 0;
}
