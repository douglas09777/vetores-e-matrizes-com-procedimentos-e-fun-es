programa {
	funcao inicio() {
		inteiro meuVetor[5] = {5, 10, 15, 20, 25}
		inteiro resultado = somarElementos(meuVetor)
		escreva("A soma é: ", resultado)
	}

	funcao inteiro somarElementos(inteiro v[]) {
		inteiro soma = 0
		para (inteiro i = 0; i < 5; i++) {
			soma = soma + v[i]
		}
		retorne soma
	}
}
