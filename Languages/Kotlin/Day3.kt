// Languages - Kotlin - Day 3
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that checks if a number is positive, negative, or zero.

fun main() {
    val number = readLine()?.toIntOrNull() ?: 0

    when {
        number > 0 -> println("The number is positive.")
        number < 0 -> println("The number is negative.")
        else -> println("The number is zero.")
    }
}
