// Languages - Kotlin - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


fun removeDuplicates(input: String): String {
    if (input.isEmpty()) {
        return "Input cannot be empty."
    }
    val seen = mutableSetOf<Char>()
    val result = StringBuilder()
    for (char in input) {
        if (seen.add(char)) {
            result.append(char)
        }
    }
    return result.toString()
}

// Get user input and display the result
fun main() {
    println("Enter a string:")
    val input = readLine()?.trim() ?: ""
    if (input.isEmpty()) {
        println("Input cannot be empty.")
        return
    }
    val result = removeDuplicates(input)
    println("String after removing duplicates: $result")
}
