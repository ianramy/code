// Languages - Go - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// Function to reverse a string
func reverseString(s string) string {
	var reversed strings.Builder
	for i := len(s) - 1; i >= 0; i-- {
		reversed.WriteByte(s[i])
	}
	return reversed.String()
}

// Function to validate input
func isValidInput(input string) bool {
	return strings.TrimSpace(input) != ""
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	var input string

	// Input validation loop
	for {
		fmt.Print("Enter a non-empty string: ")
		input, _ = reader.ReadString('\n')
		input = strings.TrimSpace(input)

		if isValidInput(input) {
			break
		} else {
			fmt.Println("Invalid input. Please enter a non-empty string.")
		}
	}

	// Call the reverseString function and print the result
	fmt.Println("Reversed string:", reverseString(input))
}
