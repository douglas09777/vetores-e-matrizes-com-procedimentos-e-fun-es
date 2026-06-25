programa {
	funcao inicio() {
		inteiro A[3][4] = {
			{1, 2, 3, 4},
			{5, 6, 7, 8},
			{9, 10, 11, 12}
		}
		inteiro B[4][3] // Guardará a transposta

		transporMatriz(A, B)

		// Exibindo a matriz B (Transposta) para conferir
		para (inteiro l = 0; l < 4; l++) {
			para (inteiro c = 0; c < 3; c++) {
				escreva(B[l][c], "\t")
			}
			escreva("\n")
		}
	}

	funcao transporMatriz(inteiro A[][], inteiro B[][]) {
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 4; c++) {
				B[c][l] = A[l][c]
			}
		}
	}
}
