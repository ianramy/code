// Languages - Go - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n. 
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

package main

import (
	"fmt"
)

func fibonacci(n int) []int {
	if n < 0 {
		return []int{}
	} else if n == 0 {
		return []int{0}
	}

	fib := []int{0, 1}
	for {
		nextNum := fib[len(fib)-1] + fib[len(fib)-2]
		if nextNum > n {
			break
		}
		fib = append(fib, nextNum)
	}
	return fib
}

func main() {
	var n int
	fmt.Print("Enter a positive number: ")
	_, err := fmt.Scan(&n)

	if err != nil || n < 0 {
		fmt.Println("Invalid input. Please enter a positive integer.")
		return
	}

	sequence := fibonacci(n)
	fmt.Printf("Fibonacci sequence up to %d: %v\n", n, sequence)
}
