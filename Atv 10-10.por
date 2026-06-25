programa {
	funcao inicio() {
		inteiro vetorA[5] = {10, 20, 30, 40, 50}
		inteiro vetorB[5]
		
		copiarVetor(vetorA, vetorB)
	}

	funcao copiarVetor(inteiro A[], inteiro B[]) {
		para (inteiro i = 0; i < 5; i++) {
			B[i] = A[i]
		}
	}
}
