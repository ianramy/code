// Languages - Go - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


package main

import (
	"fmt"
	"strconv"
	"strings"
)

func decimalToBinary(n int) string {
	if n == 0 {
		return "0"
	}

	num := n
	if num < 0 {
		num = -num
	}

	var binaryParts []string
	for num > 0 {
		binaryParts = append([]string{strconv.Itoa(num % 2)}, binaryParts...)
		num /= 2
	}

	binary := strings.Join(binaryParts, "")
	if n < 0 {
		binary = "-" + binary
	}
	return binary
}

func main() {
	var input int
	fmt.Print("Enter a decimal number: ")
	_, err := fmt.Scan(&input)
	if err != nil {
		fmt.Println("Invalid input. Please enter an integer.")
		return
	}
	fmt.Printf("Binary representation: %s\n", decimalToBinary(input))
}
