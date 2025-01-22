// Languages - Kotlin - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


fun isHappyNumber(num: Int): Boolean {
    val seenNumbers = mutableSetOf<Int>()
    var number = num
    while (number != 1 && seenNumbers.add(number)) {
        number = sumOfSquares(number)
    }
    return number == 1
}

fun sumOfSquares(num: Int): Int {
    return num.toString().map { it.digitToInt().let { it * it } }.sum()
}

fun main() {
    while (true) {
        print("Enter a number (or type 'q' to quit): ")
        val input = readLine()
        
        if (input.equals("q", ignoreCase = true)) {
            println("Exiting program. Goodbye!")
            break
        }

        val num = input?.toIntOrNull()
        if (num == null) {
            println("Invalid input. Please enter an integer.")
            continue
        }

        if (num < 0) {
            println("Negative numbers are not considered Happy Numbers.")
        } else {
            val result = isHappyNumber(num)
            println("The number $num is ${if (result) "a Happy Number" else "not a Happy Number"}.")
        }
    }
}
