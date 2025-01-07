// Languages - Go - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	var number int

	for {
		fmt.Print("Enter a positive number: ")
		input, _ := reader.ReadString('\n')
		input = strings.TrimSpace(input)

		parsedNumber, err := strconv.Atoi(input)
		if err != nil {
			fmt.Println("Invalid input. Please enter a valid number.")
			continue
		}

		if parsedNumber > 0 {
			number = parsedNumber
			break
		} else {
			fmt.Println("The number must be positive. Please try again.")
		}
	}

	fmt.Println("The number is:", number)
}
