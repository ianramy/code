// Languages - Kotlin - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


fun power(base: Double, exponent: Int): Double {
    return when {
        exponent == 0 -> 1.0
        exponent < 0 -> 1.0 / power(base, -exponent)
        else -> base * power(base, exponent - 1)
    }
}

fun main() {
    println("Enter the base number:")
    val baseInput = readLine()?.trim()
    val base = baseInput?.toDoubleOrNull()
    if (base != null) {
        println("Enter the exponent:")
        val exponentInput = readLine()?.trim()
        val exponent = exponentInput?.toIntOrNull()
        if (exponent != null) {
            if (base == 0.0 && exponent == 0) {
                println("0^0 is undefined.")
            } else {
                val result = power(base, exponent)
                println("$base^$exponent = $result")
            }
        } else {
            println("Invalid input for exponent.")
        }
    } else {
        println("Invalid input for base.")
    }
}
