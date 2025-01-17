// Languages - Swift - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


func gcd(_ a: Int, _ b: Int) -> Int? {
    // Helper function to get the absolute value of a number
    var a = abs(a)
    var b = abs(b)

    // GCD is undefined for 0 and 0
    if a == 0 && b == 0 {
        return nil
    }

    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

// Function to get a valid integer input
func getIntegerInput(prompt: String) -> Int? {
    print(prompt)
    if let input = readLine(), let num = Int(input) {
        return num
    }
    return nil
}

// Input handling and GCD calculation
if let num1 = getIntegerInput(prompt: "Enter the first integer:"),
   let num2 = getIntegerInput(prompt: "Enter the second integer:") {
    
    if let result = gcd(num1, num2) {
        print("The GCD of \(num1) and \(num2) is \(result).")
    } else {
        print("GCD is undefined for inputs 0 and 0.")
    }
} else {
    print("Invalid input. Please enter valid integers.")
}
