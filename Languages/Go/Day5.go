// Languages - Go - Day 5
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks the user for their name and then prints a personalized greeting with their name.

package main

import "fmt"

func main() {

	var name string

	fmt.Print("Enter your name: ")
	fmt.Scan(&name)

	fmt.Println("Happy New Year", name)
}
