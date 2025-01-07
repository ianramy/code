// Languages - Go - Day 6
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that initializes an array of integers, iterates through it, and prints each element.

package main

import "fmt"

func main() {
	numbers := [5]int{1, 2, 3, 4, 5}

	for i := 0; i < len(numbers); i++ {
		fmt.Println(numbers[i])
	}
}
