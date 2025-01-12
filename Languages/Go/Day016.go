// Languages - Go - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

// Function to check if a number is an Armstrong Number
func isArmstrongNumber(num int) bool {
	if num < 0 {
		fmt.Println("Please enter a positive integer.")
		return false
	}

	numStr := strconv.Itoa(num)
	numDigits := len(numStr)
	sum := 0

	for _, digit := range numStr {
		digitInt, _ := strconv.Atoi(string(digit))
		sum += int(math.Pow(float64(digitInt), float64(numDigits)))
	}

	return sum == num
}

// Function to prompt user input
func promptUser() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter a positive integer to check if it's an Armstrong Number: ")
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)

	num, err := strconv.Atoi(input)
	if err != nil || num < 0 {
		fmt.Println("Invalid input. Please enter a valid positive integer.")
		return
	}

	if isArmstrongNumber(num) {
		fmt.Printf("%d is an Armstrong Number.\n", num)
	} else {
		fmt.Printf("%d is not an Armstrong Number.\n", num)
	}
}

func main() {
	promptUser()
}
