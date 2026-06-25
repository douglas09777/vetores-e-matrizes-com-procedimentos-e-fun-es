programa {
	funcao inicio() {
		inteiro meuVetor[5] = {1, 2, 3, 4, 5}
		imprimirInvertido(meuVetor)
	}

	funcao imprimirInvertido(inteiro v[]) {
		para (inteiro i = 4; i >= 0; i--) {
			escreva(v[i], " ")
		}
		escreva("\n")
	}
}