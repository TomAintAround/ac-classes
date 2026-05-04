#include <stdio.h>
#include "dot_product.h"

int main() {
	int i, size = 0;
	printf("Tamanho dos vetores: ");
	scanf("%d", &size);

	int v1[size], v2[size];

	printf("Vetor 1\n");
	for (i = 0; i < size; i++) {
		printf("Posição %d: ", i + 1);
		scanf("%d", &v1[i]);
	}

	printf("\nVetor 2\n");
	for (i = 0; i < size; i++) {
		printf("Posição %d: ", i + 1);
		scanf("%d", &v2[i]);
	}

	printf("O produto interno dos vetores é %d.\n", dot_product(v1, v2, size));

	return 0;
}
