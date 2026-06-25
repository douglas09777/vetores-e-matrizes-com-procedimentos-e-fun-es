programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		}
		exibirMatriz(minhaMatriz)
	}

	funcao exibirMatriz(inteiro m[][]) {
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				escreva(m[l][c], "\t")
			}
			escreva("\n")
		}
	}
}
