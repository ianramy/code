// Languages - Swift - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

func sumOfNumbers(from start: Int, to end: Int) {
    var sum = 0
    for i in start...end {
        print(i)
        sum += i
    }
    print("The sum of the numbers from \(start) to \(end) is: \(sum)")
}

sumOfNumbers(from: 1, to: 10)
