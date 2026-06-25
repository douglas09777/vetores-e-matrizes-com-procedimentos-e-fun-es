programa {
	funcao inicio() {
		real notas[4] = {7.5, 8.0, 6.0, 9.5}
		real mediaGeral = calcularMedia(notas)
		escreva("A média é: ", mediaGeral)
	}

	funcao real calcularMedia(real v[]) {
		real soma = 0.0
		para (inteiro i = 0; i < 4; i++) {
			soma = soma + v[i]
		}
		retorne soma / 4
	}
}