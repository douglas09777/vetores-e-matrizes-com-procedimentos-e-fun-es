programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{10, 2, 3},
			{4, 20, 6},
			{7, 8, 30}
		}
		inteiro resultado = somaDiagonalPrincipal(minhaMatriz)
		escreva("A soma da diagonal principal é: ", resultado)
	}

	funcao inteiro somaDiagonalPrincipal(inteiro m[][]) {
		inteiro soma = 0
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				se (l == c) {
					soma = soma + m[l][c]
				}
			}
		}
		retorne soma
	}
}
