// Languages - Swift - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


import Foundation

// Function to remove duplicates from a string while preserving the original order
func removeDuplicates(from input: String) -> String {
    if input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
        return "Input cannot be empty."
    }
    var seen = Set<Character>()
    let result = input.filter { seen.insert($0).inserted }
    return String(result)
}

// Get user input and display the result
print("Enter a string:")
if let input = readLine() {
    let trimmedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)
    
    if trimmedInput.isEmpty {
        print("Input cannot be empty.")
    } else {
        let result = removeDuplicates(from: trimmedInput)
        print("String after removing duplicates: \(result)")
    }
} else {
    print("Failed to read input.")
}
