// Languages - Go - Day 3
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that checks if a number is positive, negative, or zero.

package main
import "fmt"

func checkNumber() { 
	var number int
	fmt.Print("Enter a number: ")
	fmt.Scan(&number)

	if number > 0 {
		fmt.Println("The number is positive.")
	} else if number < 0 {
		fmt.Println("The number is negative.")
	} else {
		fmt.Println("The number is zero.")
	}
}
