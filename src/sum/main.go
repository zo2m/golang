package main

import "fmt"

func soma(a int, b int) int {
	return a + b
}

func main() {
	res := soma(5, 5)

	fmt.Println("O resultado de 5+5 é", res)
}
