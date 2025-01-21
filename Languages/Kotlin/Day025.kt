// Languages - Kotlin - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


import kotlin.math.abs

fun decimalToBinary(number: Int): String {
    if (number == 0) return "0"

    var num = abs(number)
    val binaryBuilder = StringBuilder()
    
    do {
        binaryBuilder.insert(0, num % 2)
        num /= 2
    } while (num > 0)

    return if (number < 0) "-${binaryBuilder.toString()}" else binaryBuilder.toString()
}

fun main() {
    print("Enter a decimal number: ")
    val input = readLine()?.trim()

    if (input?.toIntOrNull() != null) {
        val number = input.toInt()
        val binary = decimalToBinary(number)
        println("Binary representation: $binary")
    } else {
        println("Invalid input. Please enter a valid integer.")
    }
}
