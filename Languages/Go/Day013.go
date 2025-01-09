// Languages - Go - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func sumOfArray(arr []int) int {
	sum := 0
	for _, num := range arr {
		sum += num
	}
	return sum
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	// Prompt the user for the number of elements
	fmt.Println("Enter the number of elements in the array:")
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)
	n, err := strconv.Atoi(input)
	if err != nil || n <= 0 {
		fmt.Println("Please enter a valid positive integer.")
		return
	}

	// Read the array elements
	arr := make([]int, n)
	fmt.Println("Enter the elements of the array separated by spaces:")
	input, _ = reader.ReadString('\n')
	input = strings.TrimSpace(input)
	elements := strings.Split(input, " ")

	if len(elements) != n {
		fmt.Println("The number of elements provided does not match the specified count.")
		return
	}

	for i, elem := range elements {
		num, err := strconv.Atoi(strings.TrimSpace(elem))
		if err != nil {
			fmt.Printf("Invalid input '%s'. Please enter only integers.\n", elem)
			return
		}
		arr[i] = num
	}

	// Calculate and display the sum
	result := sumOfArray(arr)
	fmt.Printf("The sum of the array is: %d\n", result)
}
