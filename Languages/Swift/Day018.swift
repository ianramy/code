// Languages - Swift - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

import Foundation

// Function to count only alphabetic characters
func countCharacters(_ str: String) -> [Character: Int] {
    var characterCount = [Character: Int]()
    
    for char in str.lowercased() {
        if char.isLetter {  // Count only alphabetic characters
            characterCount[char, default: 0] += 1
        }
    }
    
    return characterCount
}

// Ask the user for a string
print("Enter a string:")
if let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines), !input.isEmpty {
    let result = countCharacters(input)
    
    if result.isEmpty {
        print("No alphabetic characters found in the input.")
    } else {
        print("\nCharacter occurrence in the input string:")
        for (char, count) in result.sorted(by: { $0.key < $1.key }) {
            print("'\(char)': \(count)")
        }
    }
} else {
    print("Error: Input cannot be empty.")
}
