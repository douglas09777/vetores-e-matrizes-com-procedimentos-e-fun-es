programa {
	funcao inicio() {
		inteiro meuVetor[5]
		carregarVetor(meuVetor)
	}

	funcao carregarVetor(inteiro v[]) {
		para (inteiro i = 0; i < 5; i++) {
			escreva("Digite o valor para a posição [", i, "]: ")
			leia(v[i])
		}
	}
}
