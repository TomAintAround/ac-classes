#include <stdio.h>
#include "Funcoes.h"

int main ()
{
	int table[4];
	int vMax,vMin;
	
	printf ("Introduza o primeiro valor:\n");
	scanf ("%d", &table[0]);
	printf ("Introduza o segundo valor:\n");
	scanf ("%d", &table[1]);
	printf ("Introduza o terceiro valor:\n");
	scanf ("%d", &table[2]);
	printf ("Introduza o quarto valor:\n");
	scanf ("%d", &table[3]);
	
	vMax = max (table, 4);
	vMin = min (table, 4);
	
	printf ("O valor maximo: %d\n",vMax);
	printf ("O valor minimo: %d\n",vMin);
	
	return 0;
}
