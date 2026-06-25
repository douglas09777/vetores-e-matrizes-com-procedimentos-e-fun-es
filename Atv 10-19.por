programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{1, 10, 3},
			{4, 20, 6},
			{7, 30, 9} // Coluna indexada como 1 (segunda coluna)
		}
		somaColunaEspecifica(minhaMatriz, 1)
	}

	funcao somaColunaEspecifica(inteiro m[][], inteiro numColuna) {
		inteiro soma = 0
		para (inteiro l = 0; l < 3; l++) {
			soma = soma + m[l][numColuna]
		}
		escreva("Soma da coluna ", numColuna, ": ", soma, "\n")
	}
}
