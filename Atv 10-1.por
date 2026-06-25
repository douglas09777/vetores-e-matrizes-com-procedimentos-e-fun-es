programa {
	funcao inicio() {
		inteiro meuVetor[5] = {10, 20, 30, 40, 50}
		exibirVetor(meuVetor)
	}

	
	funcao exibirVetor(inteiro v[]) {
		para (inteiro i = 0; i < 5; i++) {
			escreva(v[i], " ")
		}
		escreva("\n")
	}
}