programa {
	funcao inicio() {
		inteiro meuVetor[4] = {10, 20, 30, 40}

		rotacionarEsquerda(meuVetor)

		// Exibindo o vetor alterado para conferir
		para (inteiro i = 0; i < 4; i++) {
			escreva(meuVetor[i], " ")
		}
	}

	funcao rotacionarEsquerda(inteiro v[]) {
		inteiro primeiroElemento = v[0] // Salva o primeiro elemento antes de sobrescrever

		// Desloca todos os elementos uma posição para a esquerda
		para (inteiro i = 0; i < 3; i++) {
			v[i] = v[i + 1]
		}

		v[3] = primeiroElemento // Coloca o antigo primeiro elemento na última posição
	}
}
