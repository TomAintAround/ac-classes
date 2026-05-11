ex10_1: main_10_1.o soma.o
	gcc $^ -o $@
main_10_1.o: main_10_1.c
	gcc -c $<
soma.o: soma.s soma.h
	gcc -c $<
