#include <stdio.h>
#include "contachar.h"

int main ()
{
	unsigned char str[50], car;
  int num;
 
	printf ("Introduza a String:\n");
	fgets(str, 50, stdin); // Lê a string (No Máximo 50 caracteres)
	printf ("Indique o caracter a procurar:\n");
	scanf ("%c", &car);
	num = conta_char(str, car);
	printf ("O caracter '%c' aparece %d vezes na String!\n",car,num);
	return 0;
}
