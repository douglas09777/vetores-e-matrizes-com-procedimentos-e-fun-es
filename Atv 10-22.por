programa {
	funcao inicio() {
		real notas[4][3] = {
			{7.0, 8.0, 9.0}, // Aluno 0 -> média 8.0
			{5.0, 6.0, 7.0}, // Aluno 1 -> média 6.0
			{10.0, 9.0, 8.0},// Aluno 2 -> média 9.0
			{4.0, 5.0, 3.0}  // Aluno 3 -> média 4.0
		}
		real listaMedias[4]

		calcularMediasTurma(notas, listaMedias)

		// Exibindo o vetor gerado
		para(inteiro i = 0; i < 4; i++) {
			escreva("Média do aluno ", i, ": ", listaMedias[i], "\n")
		}
	}

	funcao calcularMediasTurma(real notas[][], real medias[]) {
		para (inteiro l = 0; l < 4; l++) {
			real soma = 0.0
			para (inteiro c = 0; c < 3; c++) {
				soma = soma + notas[l][c]
			}
			medias[l] = soma / 3
		}
	}
}
