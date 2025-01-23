// Languages - Go - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unicode"
)

// Function to count vowels in a given string using map for faster lookup
func countVowels(input string) int {
	vowels := map[rune]bool{'a': true, 'e': true, 'i': true, 'o': true, 'u': true}
	count := 0

	for _, char := range input {
		if vowels[unicode.ToLower(char)] {
			count++
		}
	}
	return count
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Println("Enter a string to count the number of vowels (or type 'exit' to quit):")
		input, _ := reader.ReadString('\n')
		input = strings.TrimSpace(input)

		if strings.ToLower(input) == "exit" {
			fmt.Println("Exiting program. Goodbye!")
			break
		}

		// Input validation
		if input == "" {
			fmt.Println("Invalid input. Please enter a non-empty string.")
			continue
		}

		vowelCount := countVowels(input)
		fmt.Printf("The number of vowels in the given string is: %d\n", vowelCount)
	}
}
