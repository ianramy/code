// Languages - Swift - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

func factorial(_ number: Int) -> Int {
    if number == 0 {
        return 1
    }
    return number * factorial(number - 1)
}

print("Enter a number to calculate its factorial: ")
if let input = readLine(), let number = Int(input) {
    print("Factorial of \(number) is \(factorial(number))")
} else {
    print("Invalid input. Please enter a valid number.")
}
