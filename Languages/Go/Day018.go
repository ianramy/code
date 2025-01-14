// Languages - Go - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.


package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unicode"
)

// Function to count characters
func countCharacters(str string) map[rune]int {
	characters := make(map[rune]int)
	for _, char := range str {
		if unicode.IsLetter(char) {
			char = unicode.ToLower(char)
			characters[char]++
		}
	}
	return characters
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Enter a string: ")
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)

	if input == "" {
		fmt.Println("Error: Input cannot be empty.")
		return
	}

	charCount := countCharacters(input)

	if len(charCount) == 0 {
		fmt.Println("No alphabetic characters found in the input.")
		return
	}

	fmt.Println("\nCharacter occurrence in the input string:")
	for char, count := range charCount {
		fmt.Printf("'%c': %d\n", char, count)
	}
}
