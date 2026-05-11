ex10_2: main_10_2.o potencia.o
	gcc $^ -o $@
main_10_2.o: main_10_2.c
	gcc -c $<
potencia.o: potencia.s potencia.h
	gcc -c $<
