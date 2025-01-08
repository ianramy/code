// Languages - Swift - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

import Foundation

// Function to find the larger of two numbers
func findLargerNumber(num1: Int, num2: Int) -> Int {
    return num1 > num2 ? num1 : num2
}

// Function to safely get a valid integer input from the user
func getValidIntegerInput(prompt: String) -> Int {
    var validInput: Int?
    repeat {
        print(prompt)
        if let input = readLine(), let number = Int(input) {
            validInput = number
        } else {
            print("Invalid input. Please enter a valid integer.")
        }
    } while validInput == nil
    return validInput!
}

// Get two valid numbers from the user
let firstNumber = getValidIntegerInput(prompt: "Enter the first number:")
let secondNumber = getValidIntegerInput(prompt: "Enter the second number:")

// Call the function and print the result
let largerNumber = findLargerNumber(num1: firstNumber, num2: secondNumber)
print("The larger number is: \(largerNumber)")
