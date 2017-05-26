#include <stdio.h>
#include <gmp.h>
#include "bigint.h"
#include <time.h>

#define bitSize 256

int main(){	
	unsigned char a[bitSize];
	unsigned char b[bitSize];

	bigint_zero(a);
	bigint_zero(b);

	unsigned char buff[bitSize];
	unsigned int u;

	int i;
	
	mpz_t a1, b1, c1, d1, e1;

	mpz_init(c1);
	mpz_init(d1);
	mpz_init(e1);

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
	bigint_print(a);printf(" + ");
	bigint_print(b);printf(" = ");

	unsigned char sum[bitSize];
	bigint_add(sum, a, b);
	bigint_print(sum);printf("\n");

	printf("Subtraction Test: ");
	bigint_print(a);printf(" - ");
	bigint_print(b);printf(" = ");

	unsigned char diff[bitSize];
	bigint_sub(diff, a, b);
	bigint_print(diff);printf("\n\n");

	printf("bigint: Multiplication Test: ");
	bigint_print(a);printf(" * ");
	bigint_print(b);printf(" = ");

	unsigned char prod[bitSize];
	clock_t begin = clock();
	bigint_mul(prod, a, b);
	clock_t end = clock();
	printf("%f\n", (double)(end - begin) / CLOCKS_PER_SEC);

	bigint_print(prod);printf("\n\n");

	printf("GMP   : Multiplication Test: ");
	bigint_print(a);printf(" * ");
	bigint_print(b);printf(" = ");

	mpz_mul(c1, a1, b1);

	printf("%s\n\n", mpz_get_str(NULL, 16, c1));
	
	printf("bigint: Division and Mod Test: ");
	bigint_print(a);printf(" / ");
	bigint_print(b);printf(" = ");

	unsigned char quot[bitSize];
	unsigned char mod[bitSize];
	begin = clock();
	bigint_div(quot, mod, a, b);
	end = clock();
	printf("%f\n", (double)(end - begin) / CLOCKS_PER_SEC);
	bigint_print(quot);printf(" R ");bigint_print(mod);printf("\n");

	
	printf("GMP  : Division and Mod Test: ");
	bigint_print(a);printf(" / ");
	bigint_print(b);printf(" = ");
	mpz_tdiv_q(c1, a1, b1);

	printf("%s R ", mpz_get_str(NULL, 16, c1));

	mpz_tdiv_r(c1, a1, b1);

	printf("%s\n\n", mpz_get_str(NULL, 16, c1));

	printf("bigint: Modular Exponentiation: ");
	unsigned char c[bitSize];
	unsigned char d[bitSize];	
	bigint_zero(d);
	bigint_zero(c);

	d[bitSize-1] = 0x01;
	d[bitSize-2] = 0x00;
	d[bitSize-3] = 0x01;

	bigint_print(a);printf(" ^ ");
	bigint_print(d);printf(" mod ");
	bigint_print(b); printf(" = \n\n");

	begin = clock();
	bigint_modexp(c, a, d, b); 
	end = clock();
	printf("%f\n", (double)(end - begin) / CLOCKS_PER_SEC);
	bigint_print(c);printf("\n\n");

	unsigned char *qeee = "10001";
	
	printf("GMP   : Modular Exponentiation: ");
	mpz_init_set_str(d1,"145906768007583323230186939349070635292401872375357164399581871019873438799005358938369571402670149802121818086292467422828157022922076746906543401224889672472407926969987100581290103199317858753663710862357656510507883714297115637342788911463535102712032765166518411726859837988672111837205085526346618740053", 10);
	mpz_init_set_str(e1,qeee, 16);

	mpz_powm(c1, a1, e1, d1);
	printf("%s ^ %s mod %s = \n\n0x%s \n\n", mpz_get_str(NULL, 16, a1), mpz_get_str(NULL, 16, e1), mpz_get_str(NULL, 16, d1), mpz_get_str(NULL, 16, c1));

	// mpz_init_set_str(c1, "35052111338673026690212423937053328511880760811579981620642802346685810623109850235943049080973386241113784040794704193978215378499765413083646438784740952306932534945195080183861574225226218879827232453912820596886440377536082465681750074417459151485407445862511023472235560823053497791518928820272257787786", 10);
	// printf("0x%s\n", mpz_get_str(NULL, 16, c1));
	
	return 0;
	
}
