ex9_4: main_9.4.o bin_img.o calcular_limiar.o
	gcc $^ -o $@
main_9.4.o: main_9.4.c
	gcc -c $<
bin_img.o: bin_img.s bin_img.h
	gcc -c $<
calcular_limiar.o: calcular_limiar.s calcular_limiar.h
	gcc -c $<
