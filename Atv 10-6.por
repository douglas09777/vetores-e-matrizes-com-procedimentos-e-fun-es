programa {
	funcao inicio() {
		inteiro meuVetor[5] = {12, 45, 7, 91, 23}
		inteiro menorValor = encontrarMenor(meuVetor)
		escreva("O menor é: ", menorValor)
	}

	funcao inteiro encontrarMenor(inteiro v[]) {
		inteiro menor = v[0]
		para (inteiro i = 1; i < 5; i++) {
			se (v[i] < menor) {
				menor = v[i]
			}
		}
		retorne menor
	}
}
