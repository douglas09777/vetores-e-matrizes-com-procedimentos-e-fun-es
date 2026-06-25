programa {
	funcao inicio() {
		inteiro meuVetor[5] = {12, 45, 7, 91, 23}
		inteiro maiorValor = encontrarMaior(meuVetor)
		escreva("O maior é: ", maiorValor)
	}

	funcao inteiro encontrarMaior(inteiro v[]) {
		inteiro maior = v[0]
		para (inteiro i = 1; i < 5; i++) {
			se (v[i] > maior) {
				maior = v[i]
			}
		}
		retorne maior
	}
}
