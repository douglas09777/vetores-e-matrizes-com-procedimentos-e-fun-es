programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{1, 1, 1},
			{2, 2, 2},
			{3, 3, 3}
		}
		inteiro resultado = somarTodosElementos(minhaMatriz)
		escreva("A soma de todos os elementos é: ", resultado)
	}

	funcao inteiro somarTodosElementos(inteiro m[][]) {
		inteiro soma = 0
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				soma = soma + m[l][c]
			}
		}
		retorne soma
	}
}
