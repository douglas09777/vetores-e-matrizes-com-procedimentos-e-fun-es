programa {
	funcao inicio() {
		inteiro meuVetor[5] = {5, 1, 4, 2, 8}

		ordenarVetor(meuVetor)
		exibirVetor(meuVetor)
	}

	funcao ordenarVetor(inteiro vetor[]) {
		inteiro aux

		// Implementação do algoritmo Bubble Sort (laços aninhados)
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 4; j++) {
				se (vetor[j] > vetor[j + 1]) {
					// Troca os elementos de lugar
					aux = vetor[j]
					vetor[j] = vetor[j + 1]
					vetor[j + 1] = aux
				}
			}
		}
	}

	funcao exibirVetor(inteiro vetor[]) {
		escreva("Vetor ordenado: ")
		para (inteiro i = 0; i < 5; i++) {
			escreva(vetor[i], " ")
		}
		escreva("\n")
	}
}