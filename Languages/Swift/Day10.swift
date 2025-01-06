// Languages - Swift - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

func getPositiveNumber() {
    var number = 0
    
    while number <= 0 {
        print("Enter a positive number: ", terminator: "")
        
        if let input = readLine() {
            if let inputAsInt = Int(input) {
                if inputAsInt > 0 {
                    number = inputAsInt
                } else {
                    print("The number is non-positive. Please enter a positive number.")
                }
            } else {
                print("Invalid input! Please enter a valid number.")
            }
        } else {
            print("Input could not be read. Please try again.")
        }
    }
    
    print("You entered a valid positive number: \(number)")
}

getPositiveNumber()
