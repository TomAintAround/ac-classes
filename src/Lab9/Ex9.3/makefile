ex9_3: main_9.3.o bin_img.o
	gcc $^ -o $@
main_9.3.o: main_9.3.c
	gcc -c $<
bin_img.o: bin_img.s bin_img.h
	gcc -c $<
