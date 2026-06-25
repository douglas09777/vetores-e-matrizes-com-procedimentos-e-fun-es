programa {
	funcao inicio() {
		inteiro minhaMatriz[3][3]
		carregarMatriz(minhaMatriz)
	}

	funcao carregarMatriz(inteiro m[][]) {
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				escreva("Digite o valor para [", l, "][", c, "]: ")
				leia(m[l][c])
			}
		}
	}
}
