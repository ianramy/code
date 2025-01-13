// Languages - Kotlin - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n.
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

fun fibonacci(n: Int): List<Int> {
    if (n < 0) {
        return emptyList()
    } else if (n == 0) {
        return listOf(0)
    }

    val fib = mutableListOf(0, 1)
    while (true) {
        val nextNum = fib[fib.size - 1] + fib[fib.size - 2]
        if (nextNum > n) {
            break
        }
        fib.add(nextNum)
    }
    return fib
}

fun main() {
    print("Enter a positive integer: ")
    val input = readLine()

    try {
        val number = input?.toInt() ?: throw NumberFormatException()
        if (number < 0) {
            println("Please enter a positive integer.")
        } else {
            val result = fibonacci(number)
            println("Fibonacci sequence up to $number: ${result.joinToString(", ")}")
        }
    } catch (e: NumberFormatException) {
        println("Invalid input. Please enter a positive integer.")
    }
}
