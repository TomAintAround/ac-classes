ex9_1:  main_9.1.o abs.o distancia.o
	gcc $^ -o $@
main_9.1.o: main_9.1.c
	gcc -c $<
abs.o: abs.s abs.h
	gcc -c $<
distancia.o: distancia.s distancia.h
	gcc -c $<
