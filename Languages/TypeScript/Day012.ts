// Languages - TypeScript - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

// Function to find the larger of two numbers
function findLargerNumber(num1: number, num2: number): number {
    return num1 > num2 ? num1 : num2;
}

// Function to validate and get a numeric input from the user
function getValidNumberInput(promptMessage: string): number {
    let isValid = false;
    let input: number;
    do {
        const userInput = prompt(promptMessage);
        input = parseFloat(userInput ?? "");
        if (!isNaN(input)) {
            isValid = true;
        } else {
            alert("Invalid input. Please enter a valid number.");
        }
    } while (!isValid);
    return input;
}

// Get two valid numbers from the user
const num1 = getValidNumberInput("Enter the first number:");
const num2 = getValidNumberInput("Enter the second number:");

// Call the function and print the result
const theLargerNumber = findLargerNumber(num1, num2);
console.log(`The larger number is: ${theLargerNumber}`);
