m1: main.o manipula.o
	gcc $^ -o $@
main.o: main.c
	gcc -c $<
manipula.o: manipula.s manipula.h
	gcc -c $<
