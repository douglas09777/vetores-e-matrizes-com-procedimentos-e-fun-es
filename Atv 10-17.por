programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{1, 2, 10},
			{4, 20, 6},
			{30, 8, 9}
		}
		inteiro resultado = somaDiagonalSecundaria(minhaMatriz)
		escreva("A soma da diagonal secundária é: ", resultado)
	}

	funcao inteiro somaDiagonalSecundaria(inteiro m[][]) {
		// Retorna a soma direta das posições pedidas: [0][2], [1][1] e [2][0]
		retorne m[0][2] + m[1][1] + m[2][0]
	}
}