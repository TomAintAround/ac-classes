#include "cycleCalc.h"
#include "printOctal.h"
#include "soma.h"
#include <stdio.h>

int main() {
  int a, b, c;

  printf("Enter the first number: ");
  scanf("%d", &a);
  printf("Enter the second number: ");
  scanf("%d", &b);

  c = soma(a, b);

  printf("The sum of %d with %d is %d \n", a, b, c);

  printf("Parcela 1 em octal: ");
  printOctal(a);
  printf("Parcela 2 em octal: ");
  printOctal(b);
  printf("Resultado em octal: ");
  printOctal(c);

  printf("Cálculo cíclico: %d\n", cycleCalc(a, b));
}
