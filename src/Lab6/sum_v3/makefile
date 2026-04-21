sum3: sum_v3.o soma.o printOctal.o cycleCalc.o
	gcc $^ -o $@
sum_v3.o: sum_v3.c
	gcc -c $<
soma.o: soma.c soma.h
	gcc -c $<
printOctal.o: printOctal.c printOctal.h
	gcc -c $<
cycleCalc.o: cycleCalc.c cycleCalc.h
	gcc -c $<
