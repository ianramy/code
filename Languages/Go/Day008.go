// Languages - Go - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Enter your first name: ")
	firstName, _ := reader.ReadString('\n')
	firstName = strings.TrimSpace(firstName)

	if firstName == "" {
		fmt.Println("First name cannot be empty.")
		return
	}

	fmt.Print("Enter your last name: ")
	lastName, _ := reader.ReadString('\n')
	lastName = strings.TrimSpace(lastName)

	if lastName == "" {
		fmt.Println("Last name cannot be empty.")
		return
	}

	fullName := firstName + " " + lastName

	firstInitial := strings.ToUpper(string(firstName[0]))
	lastInitial := strings.ToUpper(string(lastName[0]))

	greeting := fmt.Sprintf("Hello, %s! Your initials are %s.%s.", fullName, firstInitial, lastInitial)
	fmt.Println(greeting)
}
