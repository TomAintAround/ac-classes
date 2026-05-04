ex9_2: main_9.2.o inverte_tabela.o manipula_tabela.o
	gcc $^ -o $@
main_9.2.o: main_9.2.c
	gcc -c $<
inverte_tabela.o: inverte_tabela.s
	gcc -c $<
manipula_tabela.o: manipula_tabela.s manipula_tabela.h
	gcc -c $<
