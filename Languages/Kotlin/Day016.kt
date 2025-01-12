// Languages - Kotlin - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

import java.util.Scanner
import kotlin.math.pow

// Function to check if a number is an Armstrong Number
fun isArmstrongNumber(num: Int): Boolean {
    if (num < 0) {
        println("Please enter a positive integer.")
        return false
    }

    val numStr = num.toString()
    val numDigits = numStr.length
    var sum = 0

    for (digitChar in numStr) {
        val digit = digitChar.toString().toInt()
        sum += digit.toDouble().pow(numDigits).toInt()
    }

    return sum == num
}

// Function to prompt user input
fun promptUser() {
    val scanner = Scanner(System.`in`)
    print("Enter a positive integer to check if it's an Armstrong Number: ")

    if (scanner.hasNextInt()) {
        val num = scanner.nextInt()
        if (num < 0) {
            println("Invalid input. Please enter a positive integer.")
        } else {
            if (isArmstrongNumber(num)) {
                println("$num is an Armstrong Number.")
            } else {
                println("$num is not an Armstrong Number.")
            }
        }
    } else {
        println("Invalid input. Please enter a positive integer.")
    }
}

// Main function to run the program
fun main() {
    promptUser()
}
