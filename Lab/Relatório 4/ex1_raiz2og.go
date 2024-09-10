package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	// Entrada de valores
	fmt.Print("Digite os valores de a, b e c: ")
	fmt.Scan(&a, &b, &c)

	// Calcula o discriminante
	discriminant := b*b - 4*a*c

	// Verifica as condições do discriminante e calcula as raízes
	if discriminant > 0 {
		x1 := (-b + math.Sqrt(discriminant)) / (2 * a)
		x2 := (-b - math.Sqrt(discriminant)) / (2 * a)
		fmt.Printf("Raízes: x1 = %.2f, x2 = %.2f\n", x1, x2)
	} else if discriminant == 0 {
		x := -b / (2 * a)
		fmt.Printf("Raiz única: x = %.2f\n", x)
	} else {
		fmt.Println("Não há raízes reais.")
	}
}
