programa {
	// Vetores paralelos globais para o menu acessar diretamente
	cadeia nomes[5]
	inteiro estoque[5]
	real precos[5]

	funcao inicio() {
		menu()
	}

	funcao menu() {
		inteiro opcao = 0

		enquanto (opcao != 4) {
			escreva("\n=== MENU DE ESTOQUE ===\n")
			escreva("1. Carregar Estoque\n")
			escreva("2. Consultar Produto\n")
			escreva("3. Relatório do Mais Caro\n")
			escreva("4. Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escreva("\n")

			se (opcao == 1) {
				carregarEstoque()
			} senao se (opcao == 2) {
				consultarProduto()
			} senao se (opcao == 3) {
				relatorioMaisCaro()
			} senao se (opcao == 4) {
				escreva("Saindo do sistema...\n")
			} senao {
				escreva("Opção inválida!\n")
			}
		}
	}

	funcao carregarEstoque() {
		para (inteiro i = 0; i < 5; i++) {
			escreva("Nome do produto ", i + 1, ": ")
			leia(nomes[i])
			escreva("Quantidade em estoque: ")
			leia(estoque[i])
			escreva("Preço: R$ ")
			leia(precos[i])
			escreva("-------------------------\n")
		}
		escreva("Estoque carregado com sucesso!\n")
	}

	funcao consultarProduto() {
		cadeia nomeProcurado
		logico encontrado = falso

		escreva("Digite o nome do produto para consultar: ")
		leia(nomeProcurado)

		para (inteiro i = 0; i < 5; i++) {
			se (nomes[i] == nomeProcurado) {
				escreva("\n--- Produto Encontrado ---\n")
				escreva("Nome: ", nomes[i], "\n")
				escreva("Estoque: ", estoque[i], " unidades\n")
				escreva("Preço: R$ ", precos[i], "\n")
				encontrado = verdadeiro
				pare
			}
		}

		se (nao encontrado) {
			escreva("Produto não cadastrado ou não encontrado.\n")
		}
	}

	funcao relatorioMaisCaro() {
		inteiro indiceMaisCaro = 0
		real maiorPreco = precos[0]

		para (inteiro i = 1; i < 5; i++) {
			se (precos[i] > maiorPreco) {
				maiorPreco = precos[i]
				indiceMaisCaro = i
			}
		}

		escreva("--- Produto Mais Caro ---\n")
		escreva("Nome: ", nomes[indiceMaisCaro], "\n")
		escreva("Estoque: ", estoque[indiceMaisCaro], " unidades\n")
		escreva("Preço: R$ ", precos[indiceMaisCaro], "\n")
	}
}
