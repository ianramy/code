// Languages - Kotlin - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


import java.util.Scanner

// Bubble Sort function
fun bubbleSort(arr: IntArray): IntArray {
    val n = arr.size
    for (i in 0 until n - 1) {
        var swapped = false
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
                swapped = true
            }
        }
        if (!swapped) break
    }
    return arr
}

// Function to print the array
fun printArray(arr: IntArray) {
    println(arr.joinToString(" "))
}

// Function to validate integer input
fun getValidatedInput(scanner: Scanner): Int {
    while (true) {
        val input = scanner.nextLine()
        try {
            return input.toInt()
        } catch (e: NumberFormatException) {
            print("Invalid input. Please enter a valid integer: ")
        }
    }
}

fun main() {
    val scanner = Scanner(System.`in`)

    // Ask user for the number of elements
    print("Enter the number of elements in the array: ")
    var n = getValidatedInput(scanner)
    while (n <= 0) {
        print("Please enter a positive integer: ")
        n = getValidatedInput(scanner)
    }

    // Get array elements from the user
    val arr = IntArray(n)
    println("Enter $n integers:")
    for (i in 0 until n) {
        print("Element ${i + 1}: ")
        arr[i] = getValidatedInput(scanner)
    }

    // Display original array
    println("\nOriginal array:")
    printArray(arr)

    // Sort the array
    bubbleSort(arr)

    // Display sorted array
    println("Sorted array:")
    printArray(arr)
}
