// Languages - Kotlin - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

fun main() {
    val numbers = mutableListOf<Int>()
    println("Enter numbers (type 'done' to finish):")

    while (true) {
        val input = readLine()
        if (input == "done") break
        val number = input?.toIntOrNull()
        if (number != null) {
            numbers.add(number)
        } else {
            println("Invalid input. Please enter a valid number.")
        }
    }

    if (numbers.isNotEmpty()) {
        val sum = numbers.sum()
        val average = numbers.average()
        println("Sum: $sum")
        println("Average: %.2f".format(average))

        when {
            average > 50 -> println("Above average")
            average < 50 -> println("Below average")
            else -> println("Average is exactly 50")
        }
    } else {
        println("No numbers were entered.")
    }
}
