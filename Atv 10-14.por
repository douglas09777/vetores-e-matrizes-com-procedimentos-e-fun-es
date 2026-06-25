programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{12, 5, 8},
			{4, 27, 14},
			{9, 11, 2}
		}
		inteiro maiorValor = encontrarMaiorMatriz(minhaMatriz)
		escreva("O maior valor na matriz é: ", maiorValor)
	}

	funcao inteiro encontrarMaiorMatriz(inteiro m[][]) {
		inteiro maior = m[0][0]
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				se (m[l][c] > maior) {
					maior = m[l][c]
				}
			}
		}
		retorne maior
	}
}
