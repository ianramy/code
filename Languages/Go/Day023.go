// Languages - Go - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


package main

import (
	"fmt"
)

// Recursive function to compute power of a number
func power(x float64, n int) float64 {
	if n == 0 {
		return 1
	} else if n < 0 {
		return 1 / power(x, -n)
	} else {
		return x * power(x, n-1)
	}
}

func main() {
	var base float64
	var exponent int

	// Read the base number and exponent from the user
	fmt.Print("Enter the base number: ")
	_, err := fmt.Scanf("%f", &base)
	if err != nil {
		fmt.Println("Invalid input for base number. Please enter a valid number.")
		return
	}

	fmt.Print("Enter the exponent: ")
	_, err = fmt.Scanf("%d", &exponent)
	if err != nil {
		fmt.Println("Invalid input for exponent. Please enter a valid integer.")
		return
	}

	// Handle the special case of 0^0
	if base == 0 && exponent == 0 {
		fmt.Println("0^0 is undefined.")
		return
	}

	result := power(base, exponent)
	fmt.Printf("%.2f^%d = %.6f\n", base, exponent, result)
}
