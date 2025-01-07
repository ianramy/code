// Languages - Kotlin - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

fun calculateSumInRange(start: Int, end: Int) {
    var sum = 0
    for (i in start..end) {
        println(i)
        sum += i
    }
    println("The sum of the numbers from $start to $end is: $sum")
}

fun main() {
    calculateSumInRange(1, 10)
    calculateSumInRange(5, 15)
}