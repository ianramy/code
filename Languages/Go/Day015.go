// Languages - Go - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unicode"
)

// Function to check if a string is a palindrome
func isPalindrome(s string) bool {
	// Normalize the string: remove non-alphanumeric characters and convert to lowercase
	var normalized []rune
	for _, r := range s {
		if unicode.IsLetter(r) || unicode.IsDigit(r) {
			normalized = append(normalized, unicode.ToLower(r))
		}
	}

	// Input validation: check if normalized string is empty
	if len(normalized) == 0 {
		return false
	}

	// Compare characters from both ends
	for i := 0; i < len(normalized)/2; i++ {
		if normalized[i] != normalized[len(normalized)-1-i] {
			return false
		}
	}
	return true
}

func main() {
	// Ask user to enter a string
	fmt.Print("Enter a string: ")
	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)

	// Input validation
	if input == "" {
		fmt.Println("Invalid input. Please enter a non-empty string.")
		return
	}

	// Check if the string is a palindrome
	if isPalindrome(input) {
		fmt.Printf("\"%s\" is a palindrome.\n", input)
	} else {
		fmt.Printf("\"%s\" is not a palindrome.\n", input)
	}
}
