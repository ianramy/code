// Languages - Swift - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


// Bubble Sort Function
func bubbleSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    let n = sortedArray.count
    for i in 0..<n {
        var swapped = false
        for j in 1..<n - i {
            if sortedArray[j] < sortedArray[j - 1] {
                sortedArray.swapAt(j, j - 1)
                swapped = true
            }
        }
        if !swapped {
            break
        }
    }
    return sortedArray
}

// Function to validate and get a valid integer input
func getValidInteger(prompt: String) -> Int {
    while true {
        print(prompt, terminator: " ")
        if let input = readLine(), let number = Int(input) {
            return number
        } else {
            print("Invalid input. Please enter a valid integer.")
        }
    }
}

// Function to collect elements individually
func getElements() -> [Int] {
    var array: [Int] = []

    // Get the number of elements
    var n = getValidInteger(prompt: "Enter the number of elements in the array:")
    while n <= 0 {
        print("Please enter a positive integer.")
        n = getValidInteger(prompt: "Enter the number of elements in the array:")
    }

    // Get each element individually
    for i in 1...n {
        let element = getValidInteger(prompt: "Enter element \(i):")
        array.append(element)
    }

    return array
}

// Main Execution
let array = getElements()

// Display the original array
print("\nOriginal array: \(array)")

// Sort the array using Bubble Sort
let sortedArray = bubbleSort(array)

// Display the sorted array
print("Sorted array: \(sortedArray)")
