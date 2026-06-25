programa {
	funcao inicio() {
		inteiro A[3][3] = {
			{1, 1, 1},
			{1, 1, 1},
			{1, 1, 1}
		}
		inteiro B[3][3] = {
			{2, 3, 4},
			{2, 3, 4},
			{2, 3, 4}
		}
		inteiro R[3][3] // Matriz que guardará o resultado
		
		somaDuasMatrizes(A, B, R)
	}

	funcao somaDuasMatrizes(inteiro A[][], inteiro B[][], inteiro R[][]) {
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				R[l][c] = A[l][c] + B[l][c]
			}
		}
		
		// Opcional: Apenas para mostrar o resultado gerado em R
		escreva("Matriz Resultado R:\n")
		para (inteiro l = 0; l < 3; l++) {
			para (inteiro c = 0; c < 3; c++) {
				escreva(R[l][c], "\t")
			}
			escreva("\n")
		}
	}
}
