programa {
	inclua biblioteca Texto --> t

	funcao inicio() {
		// Matriz 5x5 com a palavra "SENAI" escondida na horizontal (linha 2)
		cadeia sopa[5][5] = {
			{"X", "Y", "Z", "W", "K"},
			{"A", "B", "C", "D", "E"},
			{"S", "E", "N", "A", "I"}, // "SENAI" aqui
			{"F", "G", "H", "I", "J"},
			{"L", "M", "N", "O", "P"}
		}
		
		cadeia palavraProcurada = "SENAI"

		se (buscarPalavra(sopa, palavraProcurada)) {
			escreva("Verdadeiro (A palavra '", palavraProcurada, "' foi encontrada!)")
		} senao {
			escreva("Falso (A palavra '", palavraProcurada, "' não foi encontrada.)")
		}
	}

	funcao logico buscarPalavra(cadeia matriz[][], cadeia palavra) {
		// 1. Busca Horizontal (Varre linha por linha)
		para (inteiro l = 0; l < 5; l++) {
			cadeia linhaTexto = ""
			para (inteiro c = 0; c < 5; c++) {
				linhaTexto = linhaTexto + matriz[l][c]
			}
			// Verifica se a palavra procurada está contida na linha montada
			se (t.posicao_texto(palavra, linhaTexto, 0) != -1) {
				retorne verdadeiro
			}
		}

		// 2. Busca Vertical - BÔNUS (Varre coluna por coluna)
		para (inteiro c = 0; c < 5; c++) {
			cadeia colunaTexto = ""
			para (inteiro l = 0; l < 5; l++) {
				colunaTexto = colunaTexto + matriz[l][c]
			}
			// Verifica se a palavra procurada está contida na coluna montada
			se (t.posicao_texto(palavra, colunaTexto, 0) != -1) {
				retorne verdadeiro
			}
		}

		retorne falso
	}
}
