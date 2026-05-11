#include <stdio.h>
#include "manipula.h"

#define DIM 6

int main() {
	unsigned char array[DIM] = { 201, 126, 137, 98, 150, 233 };
	int val = manipula(array, DIM);

	printf("Tabela manipulada:\n");
	int i;
	for (i = 0; i < DIM; i++) printf("indice i=%d valor: %d\n", i, array[i]);
	printf("Valor devolvido: %d\n", val);

	return 0;
}
