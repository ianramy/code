// Languages - Go - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


package main
import "fmt"

// Function to check if a number is a Perfect Number
func isPerfectNumber(num int) bool {
	if num <= 0 {
		return false // Perfect numbers must be positive integers
	}

	sum := 0
	// Loop only up to num / 2 for optimization
	for i := 1; i <= num/2; i++ {
		if num%i == 0 {
			sum += i
		}
	}
	return sum == num
}

// Function to validate user input
func getValidInput() int {
	var num int
	for {
		fmt.Print("Enter a positive integer to check if it's a Perfect Number: ")
		_, err := fmt.Scan(&num)
		if err != nil {
			fmt.Println("⚠️ Invalid input. Please enter a valid integer.")
			var discard string
			fmt.Scanln(&discard) // Clear invalid input
			continue
		}
		if num > 0 {
			return num
		}
		fmt.Println("⚠️ Please enter a positive integer.")
	}
}

func main() {
	num := getValidInput()

	if isPerfectNumber(num) { // Check if the number is a Perfect Number
		fmt.Printf("🎉 %d is a Perfect Number!\n", num)
	} else {
		fmt.Printf("❌ %d is not a Perfect Number.\n", num)
	}
}
