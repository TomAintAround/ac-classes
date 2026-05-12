#include <stdio.h>

#define DIM 6

extern int codifica_nibbles(unsigned char* tab, int dim, int limiar);

int main() {
        unsigned char tab[DIM] = { 0x6B, 0xDD, 0xC0, 0x6E, 0x3E, 0x87 };
        int limiar = 7;

        int val = codifica_nibbles(tab, DIM, limiar);
        
        printf("Tabela Resultante:\n");
        int i;
        for (i = 0; i < DIM; i++) printf("índice i=%d valor: 0x%02X, ", i, tab[i]);
        printf("\nForam alterados %d elementos\n", val);

        return 0;
}
