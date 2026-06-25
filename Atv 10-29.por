programa {
	funcao inicio() {
		// Matriz A (2 linhas por 3 colunas)
		inteiro A[2][3] = {
			{1, 2, 3},
			{4, 5, 6}
		}

		// Matriz B (3 linhas por 2 colunas)
		inteiro B[3][2] = {
			{7, 8},
			{9, 10},
			{11, 12}
		}

		// Matriz R que receberá o resultado (2 linhas por 2 colunas)
		inteiro R[2][2]

		multiplicarMatrizes(A, B, R)

		// Exibindo a matriz resultante R
		escreva("Matriz Resultante R (2x2):\n")
		para (inteiro l = 0; l < 2; l++) {
			para (inteiro c = 0; c < 2; c++) {
				escreva(R[l][c], "\t")
			}
			escreva("\n")
		}
	}

	funcao multiplicarMatrizes(inteiro A[][], inteiro B[][], inteiro R[][]) {
		// Laços aninhados para percorrer as dimensões de R e calcular a soma dos produtos
		para (inteiro l = 0; l < 2; l++) {
			para (inteiro c = 0; c < 2; c++) {
				// Aplica a lógica matemática descrita no enunciado utilizando o terceiro laço k
				R[l][c] = 0
				para (inteiro k = 0; k < 3; k++) {
					R[l][c] = R[l][c] + (A[l][k] * B[k][c])
				}
			}
		}
	}
}
