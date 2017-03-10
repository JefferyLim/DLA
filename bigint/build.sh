gcc -c bigint.c
gcc -c main.c
gcc -o test main.o bigint.o -lgmp

