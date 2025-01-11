// Languages - Swift - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

// Function to check if a string is a palindrome with input validation
func isPalindrome(_ str: String) -> Bool {
    // Check if input is empty after trimming whitespaces
    let trimmedStr = str.trimmingCharacters(in: .whitespacesAndNewlines)
    if trimmedStr.isEmpty {
        return false
    }

    // Normalize the string: remove non-alphanumeric characters and convert to lowercase
    let normalizedStr = trimmedStr.lowercased().filter { $0.isLetter || $0.isNumber }
    
    return normalizedStr == String(normalizedStr.reversed())
}

// Ask the user for a string input
print("Enter a string:")
if let input = readLine() {
    if isPalindrome(input) {
        print("\"\(input)\" is a palindrome.")
    } else {
        print("\"\(input)\" is not a palindrome.")
    }
} else {
    print("Invalid input. Please enter a valid string.")
}
