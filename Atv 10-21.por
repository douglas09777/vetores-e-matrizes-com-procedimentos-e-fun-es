programa {
	inclua biblioteca Texto --> t

	funcao inicio() {
		cadeia listaNomes[4] = {"Ana", "Carlos", "Mariana", "Bob"}
		cadeia maisLongo = nomeMaisLongo(listaNomes)
		escreva("O nome mais longo é: ", maisLongo)
	}

	funcao cadeia nomeMaisLongo(cadeia nomes[]) {
		cadeia longo = nomes[0]
		para (inteiro i = 1; i < 4; i++) {
			se (t.numero_caracteres(nomes[i]) > t.numero_caracteres(longo)) {
				longo = nomes[i]
			}
		}
		retorne longo
	}
}