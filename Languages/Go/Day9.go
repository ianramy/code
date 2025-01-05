// Languages - Go - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

package main

import "fmt"

func calculateSumInRange(start int, end int) {
	sum := 0
	for i := start; i <= end; i++ {
		fmt.Println(i)
		sum += i
	}
	fmt.Printf("The sum of the numbers from %d to %d is: %d\n", start, end, sum)
}

func main() {
	calculateSumInRange(1, 10)
}
