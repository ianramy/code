// Languages - Kotlin - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

fun isPalindrome(input: String): Boolean {
    // Normalize the input: remove non-alphanumeric characters and convert to lowercase
    val normalized = input.filter { it.isLetterOrDigit() }.lowercase()

    // Return false if the normalized string is empty
    if (normalized.isEmpty()) return false

    // Check if the normalized string is equal to its reverse
    return normalized == normalized.reversed()
}

fun main() {
    // Ask the user for a string
    print("Enter a string: ")
    val input = readLine()?.trim() ?: ""

    // Input validation
    if (input.isEmpty()) {
        println("Invalid input. Please enter a non-empty string.")
    } else {
        // Check if the input string is a palindrome
        if (isPalindrome(input)) {
            println("\"$input\" is a palindrome.")
        } else {
            println("\"$input\" is not a palindrome.")
        }
    }
}
