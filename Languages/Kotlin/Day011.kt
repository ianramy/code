// Languages - Kotlin - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

import java.util.Scanner

// Function to calculate the product of two numbers
fun product(num1: Double, num2: Double): Double {
    return num1 * num2
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
    // Get user input
    val num1 = getValidNumber("Enter the first number: ")
    val num2 = getValidNumber("Enter the second number: ")

    // Calculate and display the product
    val result = product(num1, num2)
    println("The product of $num1 and $num2 is: $result")
}
