// Languages - Kotlin - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

import java.util.Scanner

// Function to find the larger of two numbers
fun findLarger(num1: Double, num2: Double): Double {
    return if (num1 > num2) num1 else num2
}

// Function to get a valid number from the user
fun getValidNumber(prompt: String): Double {
    val scanner = Scanner(System.`in`)
    while (true) {
        print(prompt)
        val input = scanner.nextLine()
        try {
            return input.toDouble()
        } catch (e: NumberFormatException) {
            println("Invalid input. Please enter a valid number.")
        }
    }
}

fun main() {
    // Get two valid numbers from the user
    val num1 = getValidNumber("Enter the first number: ")
    val num2 = getValidNumber("Enter the second number: ")

    // Call the function and print the result
    val largerNumber = findLarger(num1, num2)
    println("The larger number is: $largerNumber")
}
