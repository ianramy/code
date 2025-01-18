// Languages - Go - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// removeDuplicates removes duplicate characters from a string while preserving the original order.
func removeDuplicates(input string) string {
	seen := make(map[rune]bool)
	var result strings.Builder
	for _, char := range input {
		if !seen[char] {
			seen[char] = true
			result.WriteRune(char)
		}
	}
	return result.String()
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Println("Enter a string:")
	input, err := reader.ReadString('\n')
	if err != nil {
		fmt.Println("Error reading input.")
		return
	}
	input = strings.TrimSpace(input)
	if input == "" {
		fmt.Println("Input cannot be empty.")
		return
	}
	fmt.Println("String after removing duplicates:", removeDuplicates(input))
}
