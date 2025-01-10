// Languages - Kotlin - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

fun main() {
    var inputString: String

    // Input validation loop
    while (true) {
        print("Enter a non-empty string: ")
        inputString = readLine()?.trim() ?: ""

        if (inputString.isNotEmpty()) {
            break
        } else {
            println("Invalid input. Please enter a non-empty string.")
        }
    }

    // Call the function and print the reversed string
    println("Reversed string: ${reverseString(inputString)}")
}

// Function to reverse a string
fun reverseString(str: String): String {
    return str.reversed()
}
