// Languages - Go - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Print("Enter the number of elements: ")
	fmt.Scan(&n)

	if n <= 0 {
		fmt.Println("Invalid number of elements. Please enter a positive integer.")
		return
	}

	numbers := make([]int, n)
	sum := 0

	for i := 0; i < n; i++ {
		fmt.Printf("Enter number %d: ", i+1)
		fmt.Scan(&numbers[i])
		sum += numbers[i]
	}

	average := float64(sum) / float64(n)
	fmt.Printf("Sum: %d\n", sum)
	fmt.Printf("Average: %.2f\n", average)

	if average > 50 {
		fmt.Println("Above average")
	} else {
		fmt.Println("Below average")
	}
}
