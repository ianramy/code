// Languages - Swift - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

import Foundation

func multiplyTwoNumbers(_ num1: Int, _ num2: Int) -> Int {
    // Calculate the product of the two numbers.
    return num1 * num2
}

print("Enter the first number: ", terminator: "")
if let input1 = readLine(), let num1 = Int(input1) {
    // Ask for the second number.
    print("Enter the second number: ", terminator: "")
    if let input2 = readLine(), let num2 = Int(input2) {
        let result = multiplyTwoNumbers(num1, num2)
        // Print the result of the product.
        print("The product of \(num1) and \(num2) is \(result)")
    } else {
        // If the second input is invalid, we don't need to calculate the product.
        print("Invalid input for the second number.")
    }
} else {
    // If the first input is invalid, we don't need to ask for the second input.
    print("Invalid input for the first number.")
}
