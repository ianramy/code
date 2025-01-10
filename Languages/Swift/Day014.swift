// Languages - Swift - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

// Function to reverse a string
func reverseString(_ str: String) -> String {
    return String(str.reversed())
}

// Function to validate input
func isValidInput(_ input: String) -> Bool {
    return !input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
}

// Ask the user to enter a string with validation
var inputString: String = ""
repeat {
    print("Enter a non-empty string:")
    if let userInput = readLine(), isValidInput(userInput) {
        inputString = userInput
    } else {
        print("Invalid input. Please enter a non-empty string.")
    }
} while inputString.isEmpty

// Call the function and print the reversed string
print("Reversed string: \(reverseString(inputString))")
