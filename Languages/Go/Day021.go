// Languages - Go - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


package main

import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strconv"
    "strings"
)

// Function to calculate the Greatest Common Divisor (GCD)
func gcd(a, b int) int {
    a = int(math.Abs(float64(a)))
    b = int(math.Abs(float64(b)))

    if a == 0 && b == 0 {
        return -1
    }

    for b != 0 {
        a, b = b, a%b
    }
    return a
}

// Function to get validated integer input
func getInput(prompt string) (int, error) {
    reader := bufio.NewReader(os.Stdin)
    fmt.Print(prompt)
    input, _ := reader.ReadString('\n')
    input = strings.TrimSpace(input)
    return strconv.Atoi(input)
}

// Main function
func main() {
	// Get the first number
    num1, err1 := getInput("Enter the first number: ")
    if err1 != nil {
        fmt.Println("Invalid input. Please enter a valid integer.")
        return
    }

	// Get the second number
    num2, err2 := getInput("Enter the second number: ")
    if err2 != nil {
        fmt.Println("Invalid input. Please enter a valid integer.")
        return
    }

    result := gcd(num1, num2)
    if result == -1 {
		// GCD is undefined for inputs 0 and 0
        fmt.Println("GCD is undefined for inputs 0 and 0.")
    } else {
        fmt.Printf("The GCD of %d and %d is %d.\n", num1, num2, result)
    }
}
