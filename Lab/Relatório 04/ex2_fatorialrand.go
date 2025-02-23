package main

import (
	"fmt"
	"math/rand"
	"time"
)

// Função para calcular o fatorial de um número
func factorial(n int) int {
	if n == 0 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {
	// Semente para gerar números aleatórios diferentes a cada execução
	rand.Seed(time.Now().UnixNano())

	// Gera um número aleatório entre 0 e 9
	num := rand.Intn(10)

	// Calcula o fatorial do número gerado
	fact := factorial(num)

	fmt.Printf("Número aleatório: %d\n", num)
	fmt.Printf("Fatorial de %d é %d\n", num, fact)
}
