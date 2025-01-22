// Languages - Go - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Function to check if a number is a Happy Number
func isHappyNumber(num int) bool {
	seen := make(map[int]bool)
	for num != 1 && !seen[num] {
		seen[num] = true
		num = sumOfSquares(num)
	}
	return num == 1
}

// Function to calculate the sum of squares of digits
func sumOfSquares(num int) int {
	sum := 0
	for num > 0 {
		digit := num % 10
		sum += digit * digit
		num /= 10
	}
	return sum
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Print("Enter a number (or type 'exit' to quit): ")
		input, _ := reader.ReadString('\n')
		input = strings.TrimSpace(input)

		if strings.ToLower(input) == "exit" {
			fmt.Println("Exiting program. Goodbye!")
			break
		}

		num, err := strconv.Atoi(input)
		if err != nil {
			fmt.Println("Invalid input. Please enter an integer.")
			continue
		}

		if num < 0 {
			fmt.Println("Negative numbers cannot be Happy Numbers.")
		} else {
			if isHappyNumber(num) {
				fmt.Printf("%d is a Happy Number.\n", num)
			} else {
				fmt.Printf("%d is not a Happy Number.\n", num)
			}
		}
	}
}
