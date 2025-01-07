// Languages - Go - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

package main

import (
	"fmt"
	"errors"
)

func factorial(n int) (int64, error) {
	if n < 0 {
		return 0, errors.New("factorial is not defined for negative numbers")
	}
	if n == 0 {
		return 1, nil
	}
	result, err := factorial(n - 1)
	if err != nil {
		return 0, err
	}
	return int64(n) * result, nil
}

func main() {
	var n int
	fmt.Print("Enter a number to calculate its factorial: ")
	_, err := fmt.Scan(&n)
	if err != nil {
		fmt.Println("Invalid input. Please enter an integer.")
		return
	}

	result, err := factorial(n)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Printf("Factorial of %d is %d\n", n, result)
	}
}
