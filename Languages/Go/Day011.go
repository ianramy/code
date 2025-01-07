// Languages - Go - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

package main

import (
	"fmt"
	"strconv"
)

// Function to multiply two numbers
func multiply(a int, b int) int {
	return a * b
}

// Function to get a valid integer from the user
func getValidNumber(prompt string) int {
	var input string
	for {
		fmt.Print(prompt)
		fmt.Scanln(&input)
		if num, err := strconv.Atoi(input); err == nil {
			return num
		} else {
			// If the input is not a valid integer, display an error message
			fmt.Println("Invalid input. Please enter a valid integer.")
		}
	}
}

func main() {
	// Get user inputs
	a := getValidNumber("Enter the first number: ")
	b := getValidNumber("Enter the second number: ")

	// Calculate and display the result
	result := multiply(a, b)
	fmt.Printf("The product of %d and %d is: %d\n", a, b, result)
}
