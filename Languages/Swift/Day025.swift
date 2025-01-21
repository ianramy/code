// Languages - Swift - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.

func decimalToBinary(_ number: Int) -> String {
    if number == 0 {
        return "0"
    }
    
    var num = abs(number)
    var binary = ""
    repeat {
        binary = String(num % 2) + binary
        num /= 2
    } while num > 0
    
    return number < 0 ? "-\(binary)" : binary
}

print("Enter a decimal number:")
if let input = readLine(), let number = Int(input.trimmingCharacters(in: .whitespacesAndNewlines)) {
    let binary = decimalToBinary(number)
    print("Binary representation: \(binary)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
