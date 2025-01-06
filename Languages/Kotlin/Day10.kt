// Languages - Kotlin - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

fun main() {
    var number: Int

    while (true) {
        print("Enter a positive number: ")
        val input = readLine()

        number = input?.toIntOrNull() ?: run {
            println("Invalid input. Please enter a valid number.")
            continue
        }

        if (number > 0) {
            println("You entered: $number")
            break
        } else {
            println("The number must be positive. Please try again.")
        }
    }
}
