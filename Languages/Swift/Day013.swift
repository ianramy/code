// Languages - Swift - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

// Define the function
func sumOfArray(_ numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

// Inform the user about the input format
print("Enter numbers separated by spaces (e.g., 1 2 3):")

// Read user input
if let input = readLine() {
    // Convert input to an array of integers
    let numbers = input.components(separatedBy: " ").compactMap { Int($0) }
    
    // Validate the input
    if numbers.isEmpty {
        print("Invalid input. Please enter a valid list of integers separated by spaces.")
    } else {
        // Call the function and print the result
        let result = sumOfArray(numbers)
        print("The sum of the array is: \(result)")
    }
} else {
    print("No input received. Please try again.")
}
