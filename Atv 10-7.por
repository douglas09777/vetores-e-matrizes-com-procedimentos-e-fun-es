programa {
	funcao inicio() {
		inteiro meuVetor[6] = {1, 2, 3, 4, 5, 6}
		contarPares(meuVetor)
	}

	funcao contarPares(inteiro v[]) {
		inteiro qtdPares = 0
		para (inteiro i = 0; i < 6; i++) {
			se (v[i] % 2 == 0) {
				qtdPares++
			}
		}
		escreva("Quantidade de pares: ", qtdPares, "\n")
	}
}
