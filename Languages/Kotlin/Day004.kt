// Languages - Kotlin - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

fun factorial(n: Int): Long {
    return if (n == 0) 1 else n * factorial(n - 1)
}

fun main() {
    print("Enter a number whose factorial you want to calculate: ")
    val input = readLine()
    val number = input?.toIntOrNull()

    when {
        number == null || number < 0 -> {
            println("Please enter a valid non-negative integer.")
        }
        number > 20 -> { 
            println("The input is too large to calculate the factorial using Long.")
        }
        else -> {
            val result = factorial(number)
            println("The factorial of $number is $result")
        }
    }
}
