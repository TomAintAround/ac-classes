miniTeste: main.o codifica_nibbles.o
	gcc $^ -o $@
main.o: main.c
	gcc -c $<
codifica_nibbles.o: codifica_nibbles.s
	gcc -c $<
