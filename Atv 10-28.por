programa {
	funcao inicio() {
		cadeia tabuleiro[3][3] = {
			{" ", " ", " "},
			{" ", " ", " "},
			{" ", " ", " "}
		}
		cadeia jogadorAtual = "X"
		inteiro totalJogadas = 0
		logico alguemGanhou = falso

		enquanto (totalJogadas < 9 e nao alguemGanhou) {
			exibirTabuleiro(tabuleiro)
			fazerJogada(tabuleiro, jogadorAtual)
			alguemGanhou = checarVitoria(tabuleiro)
			
			se (alguemGanhou) {
				exibirTabuleiro(tabuleiro)
				escreva("\nParabéns! O jogador ", jogadorAtual, " venceu!\n")
			} senao {
				totalJogadas++
				// Alterna o jogador
				se (jogadorAtual == "X") {
					jogadorAtual = "O"
				} senao {
					jogadorAtual = "X"
				}
			}
		}

		se (nao alguemGanhou) {
			exibirTabuleiro(tabuleiro)
			escreva("\nO jogo terminou em EMPATE (Velha)!\n")
		}
	}

	funcao exibirTabuleiro(cadeia t[][]) {
		escreva("\n  0   1   2\n")
		para (inteiro l = 0; l < 3; l++) {
			escreva(l, " ")
			para (inteiro c = 0; c < 3; c++) {
				escreva(t[l][c])
				se (c < 2) {
					escreva(" | ")
				}
			}
			escreva("\n")
			se (l < 2) {
				escreva("  ---------\n")
			}
		}
	}

	funcao fazerJogada(cadeia t[][], cadeia jogador) {
		inteiro linha, coluna
		logico jogadaValida = falso

		enquanto (nao jogadaValida) {
			escreva("\nJogador [", jogador, "], informe a linha (0-2) e coluna (0-2):\n")
			escreva("Linha: ")
			leia(linha)
			escreva("Coluna: ")
			leia(coluna)

			// Valida se os índices estão dentro dos limites do tabuleiro
			se (linha >= 0 e linha <= 2 e coluna >= 0 e coluna <= 2) {
				// Valida se a posição escolhida está livre
				se (t[linha][coluna] == " ") {
					t[linha][coluna] = jogador
					jogadaValida = verdadeiro
				} senao {
					escreva("Erro: Posição já ocupada! Tente novamente.\n")
				}
			} senao {
				escreva("Erro: Posição inválida! Digite valores entre 0 e 2.\n")
			}
		}
	}

	funcao logico checarVitoria(cadeia t[][]) {
		// 1. Checar as 3 linhas
		para (inteiro l = 0; l < 3; l++) {
			se (t[l][0] != " " e t[l][0] == t[l][1] e t[l][1] == t[l][2]) {
				retorne verdadeiro
			}
		}

		// 2. Checar as 3 colunas
		para (inteiro c = 0; c < 3; c++) {
			se (t[0][c] != " " e t[0][c] == t[1][c] e t[1][c] == t[2][c]) {
				retorne verdadeiro
			}
		}

		// 3. Checar Diagonal Principal
		se (t[0][0] != " " e t[0][0] == t[1][1] e t[1][1] == t[2][2]) {
			retorne verdadeiro
		}

		// 4. Checar Diagonal Secundária
		se (t[0][2] != " " e t[0][2] == t[1][1] e t[1][1] == t[2][0]) {
			retorne verdadeiro
		}

		retorne falso
	}
}