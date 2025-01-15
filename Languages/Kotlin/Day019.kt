// Languages - Kotlin - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


import java.util.Scanner

// Function to check if a number is a Perfect Number
fun isPerfectNumber(number: Int): Boolean {
    if (number <= 0) return false  // Perfect numbers must be positive

    var sum = 0
    // Loop only up to half the number for efficiency
    for (i in 1..number / 2) {
        if (number % i == 0) {
            sum += i
        }
    }
    return sum == number
}

// Function to validate user input
fun getValidInput(scanner: Scanner): Int? {
    print("Enter a positive integer to check if it's a Perfect Number: ")
    return try {
        val input = scanner.nextInt()
        if (input > 0) input else {
            println("⚠️ Please enter a positive integer.")
            null
        }
    } catch (e: Exception) {
        println("⚠️ Invalid input. Please enter a valid integer.")
        null
    }
}

// Main function
fun main() {
    val scanner = Scanner(System.`in`)
    val number = getValidInput(scanner)

    if (number != null) {
        if (isPerfectNumber(number)) {
            println("🎉 $number is a Perfect Number!")
        } else {
            println("❌ $number is not a Perfect Number.")
        }
    }
}
