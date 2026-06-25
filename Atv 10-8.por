programa {
	funcao inicio() {
		inteiro meuVetor[5] = {10, 20, 30, 40, 50}
		inteiro alvo = 30
		
		se (procurarValor(meuVetor, alvo)) {
			escreva("Verdadeiro")
		} senao {
			escreva("Falso")
		}
	}

	funcao logico procurarValor(inteiro v[], inteiro numero) {
		para (inteiro i = 0; i < 5; i++) {
			se (v[i] == numero) {
				retorne verdadeiro
			}
		}
		retorne falso
	}
}
