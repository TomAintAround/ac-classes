m2: main.o mix_table.o
	gcc $^ -o $@
main.o: main.c
	gcc -c $<
mix_table.o: mix_table.s mix_table.h
	gcc -c $<
