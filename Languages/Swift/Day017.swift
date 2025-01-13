// Languages - Swift - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n. 
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

func fibonacci(_ n: Int) -> [Int] {
    if n < 0 {
        return []
    } else if n == 0 {
        return [0]
    }

    var sequence = [0, 1]
    while true {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        if nextNumber > n {
            break
        }
        sequence.append(nextNumber)
    }
    return sequence
}

// Ask the user for a number and print the Fibonacci sequence up to that number.
print("Enter a number:")
if let input = readLine(), let number = Int(input), number >= 0 {
    print("Fibonacci sequence up to \(number): \(fibonacci(number))")
} else {
    print("Invalid input. Please enter a positive integer.")
}
