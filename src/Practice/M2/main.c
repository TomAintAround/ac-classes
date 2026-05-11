#include <stdio.h>
#include "mix_table.h"

#define DIM 8

int main() {
	unsigned char tab1[DIM] = { 65, 190, 197, 122, 61, 78, 94, 115 };
	unsigned char tab2[DIM] = { 125, 70, 97, 221, 16, 239, 43, 212 };

	int val = mix_table(tab1, tab2, DIM);

	printf("Tabela Resultante:\n");
	int i;
	for (i = 0; i < DIM; i++) printf("indice i=%d valor: %d, ", i, tab1[i]);
	printf("\n\nNumero de valores alterados: %d\n", val);

	return 0;
}
