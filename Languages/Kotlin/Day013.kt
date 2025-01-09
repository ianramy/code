// Languages - Kotlin - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

fun sumOfElements(arr: List<Int>): Int {
    // Calculate the sum of the array elements
    var sum = 0
    for (num in arr) {
        sum += num
    }
    return sum
}

fun main() {
    // Ask the user for the number of elements
    println("Enter the number of elements in the array:")
    val n = readLine()?.toIntOrNull()

    if (n == null || n <= 0) {
        println("Please enter a valid positive integer for the number of elements.")
        return
    }

    // Read the elements of the array
    val arr = mutableListOf<Int>()
    for (i in 1..n) {
        println("Enter element $i:")
        val input = readLine()?.toIntOrNull()
        if (input != null) {
            arr.add(input)
        } else {
            println("Invalid input. Please enter a valid integer.")
            return
        }
    }

    // Calculate and display the sum of the array
    val result = sumOfElements(arr)
    println("The sum of the array elements is: $result")
}
