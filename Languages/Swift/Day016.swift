// Languages - Swift - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

import Foundation

// Function to check if a number is an Armstrong Number
func isArmstrongNumber(_ number: Int) -> Bool {
    guard number >= 0 else {
        print("Please enter a positive integer.")
        return false
    }

    let numberString = String(number)
    let power = numberString.count
    var sum = 0

    for digit in numberString {
        if let digitInt = Int(String(digit)) {
            sum += Int(pow(Double(digitInt), Double(power)))
        } else {
            print("Invalid digit encountered.")
            return false
        }
    }

    return sum == number
}

// Function to prompt the user for input
func promptUserForNumber() {
    print("Enter a positive integer to check if it's an Armstrong Number:")

    if let input = readLine(), let number = Int(input), number >= 0 {
        let result = isArmstrongNumber(number)
        print("\(number) is\(result ? "" : " not") an Armstrong Number.")
    } else {
        print("Invalid input. Please enter a positive integer.")
    }
}

// Run the prompt
promptUserForNumber()
