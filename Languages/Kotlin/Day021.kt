// Languages - Kotlin - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


import kotlin.math.abs

// Function to calculate the Greatest Common Divisor (GCD)
fun gcd(a: Int, b: Int): Int {
    var a = abs(a)
    var b = abs(b)

    if (a == 0 && b == 0) {
        return 0
    }

    while (b != 0) {
        val temp = b
        b = a % b
        a = temp
    }
    return a
}

// Input validation and interactive output
fun main() {
    fun getIntInput(prompt: String): Int? {
        println(prompt)
        return readLine()?.toIntOrNull()
    }

    val num1 = getIntInput("Enter the first number:")
    val num2 = getIntInput("Enter the second number:")

    if (num1 != null && num2 != null) {
        val result = gcd(num1, num2)
        if (result == 0) {
            println("GCD is undefined for inputs 0 and 0.")
        } else {
            println("The GCD of $num1 and $num2 is $result.")
        }
    } else {
        println("Invalid input. Please enter valid integers.")
    }
}
