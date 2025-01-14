// Languages - Kotlin - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

fun main() {
    print("Enter a string: ")
    val input = readLine()?.trim()

    if (input.isNullOrEmpty()) {
        println("Error: Input cannot be empty.")
        return
    }

    val charCount = countCharacters(input)

    if (charCount.isEmpty()) {
        println("No alphabetic characters found in the input.")
        return
    }

    println("\nCharacter occurrence in the input string:")
    for ((char, count) in charCount) {
        println("'$char': $count")
    }
}

// Function to count alphabetic characters
fun countCharacters(str: String): Map<Char, Int> {
    val charCount = mutableMapOf<Char, Int>()

    for (char in str) {
        if (char.isLetter()) {
            val lowerChar = char.lowercaseChar()
            charCount[lowerChar] = charCount.getOrDefault(lowerChar, 0) + 1
        }
    }

    return charCount
}
