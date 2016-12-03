#include <ap_cint.h>
#include<stdio.h>
#include<stdlib.h>
#include "ap_utils.h"

#include "BigInt.h"

uint512 encrypt(uint512 key, uint512 exponent){
	uint512 message = 100;

	uint512 cyper = message^exponent;

	return (cyper % key);

}

