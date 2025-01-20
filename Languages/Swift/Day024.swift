// Languages - Swift - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


func isPrime(_ num: Int) -> Bool {
    if num <= 1 { return false }
    if num <= 3 { return true }
    if num % 2 == 0 || num % 3 == 0 { return false }
    var i = 5
    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 { return false }
        i += 6
    }
    return true
}

func listPrimes(upTo n: Int) -> [Int] {
    guard n >= 0 else {
        print("Please enter a non-negative number.")
        return []
    }
    return (2...n).filter { isPrime($0) }
}

print("Enter a number:")
if let input = readLine(), let n = Int(input) {
    let primes = listPrimes(upTo: n)
    print("Prime numbers up to \(n): \(primes)")
} else {
    print("Invalid input. Please enter a valid number.")
}
