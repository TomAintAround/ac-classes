#include "cycleCalc.h"

int cycleCalc(int a, int b) {
	int i;
	int part1 = 1;
	int part2 = 1;

	for (i = 0; i < b; i++) part1 *= b - a;
	for (i = 0; i < a; i++) part2 *= b + a;

	return part1 + part2;
}
