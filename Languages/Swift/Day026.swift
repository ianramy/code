// Languages - Swift - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


import Foundation

// Function to check if a number is a Happy Number
func isHappyNumber(_ num: Int) -> Bool {
    var seenNumbers = Set<Int>()
    var number = num
    
    while number != 1 && !seenNumbers.contains(number) {
        seenNumbers.insert(number)
        number = calculateSumOfSquares(of: number)
    }
    return number == 1
}

// Function to calculate the sum of squares of digits
func calculateSumOfSquares(of num: Int) -> Int {
    var sum = 0
    var number = num
    
    while number > 0 {
        let digit = number % 10
        sum += digit * digit
        number /= 10
    }
    return sum
}

// Read user input and validate
print("Enter a number: ", terminator: "")
if let input = readLine(), let number = Int(input) {
    if number < 0 {
        print("Negative numbers are not considered Happy Numbers.")
    } else {
        let result = isHappyNumber(number)
        print("The number \(number) is \(result ? "a Happy Number." : "not a Happy Number.")")
    }
} else {
    print("Invalid input. Please enter an integer.")
}
