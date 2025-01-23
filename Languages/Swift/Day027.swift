// Languages - Swift - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


import Foundation

// Function to count vowels in a given string using a set for efficient lookup
func countVowels(in input: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return input.lowercased().filter { vowels.contains($0) }.count
}

while true {
    print("Enter a string to count vowels (or type 'exit' to quit):")
    if let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) {
        if input.lowercased() == "exit" {
            print("Exiting program. Goodbye!")
            break
        }

        if input.isEmpty {
            print("Input cannot be empty. Please enter a valid string.")
            continue
        }

        let vowelCount = countVowels(in: input)
        print("Number of vowels in the given string: \(vowelCount)")
    } else {
        print("Invalid input. Please try again.")
    }
}
