// Languages - Go - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Function to find the larger number
func largerNumber(num1 int, num2 int) int {
	if num1 > num2 {
		return num1
	}
	return num2
}

// Function to get a valid integer from the user
func getValidNumbers(prompt string) int {
	scanner := bufio.NewScanner(os.Stdin)
	for {
		fmt.Print(prompt)
		scanner.Scan()
		input := strings.TrimSpace(scanner.Text())
		number, err := strconv.Atoi(input)
		if err == nil {
			return number
		}
		fmt.Println("Invalid input. Please enter a valid integer.")
	}
}

func main() {
	// Get two valid numbers from the user
	num1 := getValidNumbers("Enter the first number: ")
	num2 := getValidNumbers("Enter the second number: ")

	// Call the function and print the result
	result := largerNumber(num1, num2)
	fmt.Printf("The larger number is: %d\n", result)
}
