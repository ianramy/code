// Languages - Go - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


package main

import (
	"fmt"
	"math"
	"strings"
)

// Function to check if a number is prime
func isPrime(num int) bool {
	if num < 2 {
		return false
	}
	if num == 2 || num == 3 {
		return true
	}
	if num%2 == 0 || num%3 == 0 {
		return false
	}
	for i := 5; i*i <= num; i += 6 {
		if num%i == 0 || num%(i+2) == 0 {
			return false
		}
	}
	return true
}

// Function to generate a list of prime numbers up to n
func listPrimes(n int) []int {
	if n < 2 {
		return []int{}
	}
	primes := []int{}
	for i := 2; i <= n; i++ {
		if isPrime(i) {
			primes = append(primes, i)
		}
	}
	return primes
}

func main() {
	var n int
	fmt.Print("Enter a number: ")

	// Input handling
	_, err := fmt.Scan(&n)
	if err != nil {
		fmt.Println("Invalid input. Please enter an integer.")
		return
	}
	if n < 0 {
		fmt.Println("Please enter a non-negative number.")
		return
	}

	primes := listPrimes(n)
	if len(primes) == 0 {
		fmt.Printf("No prime numbers found up to %d.\n", n)
	} else {
		fmt.Printf("Prime numbers up to %d: %s\n", n, strings.Trim(strings.Join(strings.Fields(fmt.Sprint(primes)), ", "), "[]"))
	}
}
