programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3] = {
			{5, 2, 5},
			{4, 5, 6},
			{5, 8, 9}
		}
		inteiro numeroAlvo = 5
		inteiro total = contarOcorrencias(minhaMatriz, numeroAlvo)
		escreva("O número ", numeroAlvo, " aparece ", total, " vezes.")
	}

	funcao inteiro contarOcorrencias(inteiro m[][], inteiro numero) {
		inteiro contador = 0
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				se (m[l][c] == numero) {
					contador++
				}
			}
		}
		retorne contador
	}
}
