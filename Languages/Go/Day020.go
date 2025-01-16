// Languages - Go - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Bubble Sort function
func bubbleSort(arr []int) []int {
	for i := 0; i < len(arr); i++ {
		for j := 0; j < len(arr)-i-1; j++ {
			if arr[j] > arr[j+1] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
			}
		}
	}
	return arr
}

// Function to read and validate integer input
func getValidatedInput(prompt string) int {
	reader := bufio.NewReader(os.Stdin)
	for {
		fmt.Print(prompt)
		input, _ := reader.ReadString('\n')
		input = strings.TrimSpace(input)
		number, err := strconv.Atoi(input)
		if err != nil {
			fmt.Println("Invalid input. Please enter a valid integer.")
			continue
		}
		return number
	}
}

func main() {
	// Get the number of elements from the user
	n := getValidatedInput("Enter the number of elements in the array: ")
	for n <= 0 {
		fmt.Println("Please enter a positive integer.")
		n = getValidatedInput("Enter the number of elements in the array: ")
	}

	// Get array elements from the user
	arr := make([]int, n)
	fmt.Println("Enter", n, "integers:")
	for i := 0; i < n; i++ {
		arr[i] = getValidatedInput(fmt.Sprintf("Element %d: ", i+1))
	}

	// Sort the array
	sortedArr := bubbleSort(arr)

	// Display the sorted array
	fmt.Println("\nSorted array is:", sortedArr)
}
