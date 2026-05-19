.PHONY: c c0 c1 c2 c3 asm asmOpt

c: cCode
c0: cCode0
c1: cCode1
c2: cCode2
c3: cCode3
cs: cCodeS
asm: asmCode
asmOpt: asmCodeOpt

cCode: mainC.o bin_img_c.o
	gcc $^ -o $@
cCode0: mainC.o bin_img_c0.o
	gcc $^ -o $@
cCode1: mainC.o bin_img_c1.o
	gcc $^ -o $@
cCode2: mainC.o bin_img_c2.o
	gcc $^ -o $@
cCode3: mainC.o bin_img_c3.o
	gcc $^ -o $@
cCodeS: mainC.o bin_img_cS.o
	gcc $^ -o $@
asmCode: mainS.o bin_img_asm.o
	gcc $^ -o $@
asmCodeOpt: mainS.o bin_img_asm_opt.o
	gcc $^ -o $@

mainC.o: mainC.c
	gcc -c $< -o $@
mainS.o: mainS.c
	gcc -c $< -o $@

bin_img_c.o: bin_img_c.c
	gcc -c $< -o $@
bin_img_c0.o: bin_img_c.c
	gcc -O -c $< -o $@
bin_img_c1.o: bin_img_c.c
	gcc -O1 -c $< -o $@
bin_img_c2.o: bin_img_c.c
	gcc -O2 -c $< -o $@
bin_img_c3.o: bin_img_c.c
	gcc -O3 -c $< -o $@
bin_img_cS.o: bin_img_c.c
	gcc -Os -c $< -o $@

bin_img_asm.o: bin_img_asm.s
	gcc -c $< -o $@
bin_img_asm_opt.o: bin_img_asm_opt.s
	gcc -c $< -o $@
