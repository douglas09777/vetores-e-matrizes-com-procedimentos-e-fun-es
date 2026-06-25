programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{1, 2, 3},
			{10, 20, 30}, // Linha indexada como 1 (segunda linha)
			{7, 8, 9}
		}
		somaLinhaEspecifica(minhaMatriz, 1)
	}

	funcao somaLinhaEspecifica(inteiro m[][], inteiro numLinha) {
		inteiro soma = 0
		para (inteiro c = 0; c < 3; c++) {
			soma = soma + m[numLinha][c]
		}
		escreva("Soma da linha ", numLinha, ": ", soma, "\n")
	}
}
