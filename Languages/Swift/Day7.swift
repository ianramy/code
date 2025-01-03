// Languages - Swift - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

import Foundation

func getNumbers() -> [Int] {
    var numbers = [Int]()
    while true {
        print("Enter a number (or type 'done' to finish):")
        if let input = readLine() {
            if input.lowercased() == "done" {
                break
            }
            if let number = Int(input) {
                numbers.append(number)
            } else {
                print("Invalid input. Please enter a valid number.")
            }
        }
    }
    return numbers
}

func calculateSum(numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

func calculateAverage(numbers: [Int]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    return Double(calculateSum(numbers: numbers)) / Double(numbers.count)
}

func evaluateAverage(average: Double?) -> String {
    guard let average = average else {
        return "No numbers were entered."
    }
    if average > 50 {
        return "Above average"
    } else if average < 50 {
        return "Below average"
    } else {
        return "Average"
    }
}

func main() {
    let numbers = getNumbers()
    if numbers.isEmpty {
        print("No numbers were entered.")
        return
    }

    let sum = calculateSum(numbers: numbers)
    let average = calculateAverage(numbers: numbers)
    let evaluation = evaluateAverage(average: average)

    print("The sum of the numbers is \(sum).")
    if let average = average {
        print("The average of the numbers is \(String(format: "%.2f", average)).")
    }
    print(evaluation)
}

main()
