programa {
	funcao inicio() {
		inteiro meuVetor[5] = {1, 2, 3, 2, 1}
		
		se (ehPalindromo(meuVetor)) {
			escreva("Verdadeiro (É um palíndromo)")
		} senao {
			escreva("Falso (Não é um palíndromo)")
		}
	}

	funcao logico ehPalindromo(inteiro v[]) {
		inteiro inicioVetor = 0
		inteiro fimVetor = 4 // Último índice para vetor de tamanho 5

		enquanto (inicioVetor < fimVetor) {
			se (v[inicioVetor] != v[fimVetor]) {
				retorne falso
			}
			inicioVetor++
			fimVetor--
		}
		retorne verdadeiro
	}
}