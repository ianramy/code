// Languages - Kotlin - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


fun isPrime(num: Int): Boolean {
    if (num < 2) return false
    if (num == 2 || num == 3) return true
    if (num % 2 == 0 || num % 3 == 0) return false
    var i = 5
    while (i * i <= num) {
        if (num % i == 0 || num % (i + 2) == 0) return false
        i += 6
    }
    return true
}

fun listPrimes(n: Int): List<Int> {
    if (n < 2) return emptyList()
    return (2..n).filter { isPrime(it) }
}

fun main() {
    print("Enter a number: ")
    val input = readLine()?.trim()

    if (input.isNullOrEmpty()) {
        println("Invalid input. Input cannot be empty.")
        return
    }

    val n = input.toIntOrNull()
    if (n == null || n < 0) {
        println("Invalid input. Please enter a valid non-negative integer.")
    } else {
        val primes = listPrimes(n)
        if (primes.isEmpty()) {
            println("No prime numbers found up to $n.")
        } else {
            println("Prime numbers up to $n: ${primes.joinToString(", ")}")
        }
    }
}
