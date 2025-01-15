// Languages - Swift - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


import Foundation

// Function to check if a number is a Perfect Number
func isPerfectNumber(_ number: Int) -> Bool {
    if number <= 0 { return false }  // Perfect numbers must be positive integers
    
    var sum = 0
    for i in 1...number / 2 {  // Optimize: no need to check beyond half of the number
        if number % i == 0 {
            sum += i
        }
    }
    return sum == number
}

// Function to validate user input
func getValidInput() -> Int? {
    print("Enter a positive integer to check if it's a Perfect Number:")
    if let input = readLine(), let number = Int(input), number > 0 {
        return number
    } else {
        print("⚠️ Invalid input. Please enter a positive integer.")
        return nil
    }
}

// Main execution
if let number = getValidInput() {
    if isPerfectNumber(number) {
        print("🎉 \(number) is a Perfect Number!")
    } else {
        print("❌ \(number) is not a Perfect Number.")
    }
}
