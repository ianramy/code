// Languages - Kotlin - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


fun countVowels(input: String): Int {
    val vowels = setOf('a', 'e', 'i', 'o', 'u')
    return input.lowercase().count { it in vowels }
}

fun main() {
    while (true) {
        print("Enter a string to count vowels (or type 'exit' to quit): ")
        val input = readLine()?.trim()

        if (input.isNullOrEmpty()) {
            println("Input cannot be empty. Please enter a valid string.")
            continue
        }

        if (input.equals("exit", ignoreCase = true)) {
            println("Exiting program. Goodbye!")
            break
        }

        val vowelCount = countVowels(input)
        println("Number of vowels in the given string: $vowelCount")
    }
}
