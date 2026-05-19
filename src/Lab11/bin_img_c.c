void bin_img_c(unsigned char* ptr, int w, int h) {
	int size = w * h;
	int limiar = 0;
	int i;
	unsigned char curr;

	for (i = 0; i < size; ++i) limiar += ptr[i];
	limiar /= size;

	for (i = 0; i < size; ++i) {
		curr = ptr[i];

		if (curr < limiar)
			curr = 0;
		else
			curr = 255;

		ptr[i] = curr;
	}
}
