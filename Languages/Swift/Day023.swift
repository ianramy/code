// Languages - Swift - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


import Foundation

// Recursive function to calculate the power of a number
func power(_ base: Double, _ exponent: Int) -> Double {
    if exponent == 0 {
        return 1
    } else if exponent < 0 {
        return 1.0 / power(base, -exponent)
    } else {
        return base * power(base, exponent - 1)
    }
}

// Get the base and exponent from the user
print("Enter the base number:")
if let baseInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines), let base = Double(baseInput) {
    print("Enter the exponent:")
    if let exponentInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines), let exponent = Int(exponentInput) {
        let result = power(base, exponent)
        print("\(base)^\(exponent) = \(result)")
    } else {
        print("Invalid input for exponent.")
    }
} else {
    print("Invalid input for base.")
}
