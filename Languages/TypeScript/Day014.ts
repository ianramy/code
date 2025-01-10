// Languages - TypeScript - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.
import * as readline from 'readline-sync';

// Function to reverse a string
function stringReverse(str: string): string {
    return str.split("").reverse().join("");
}

// Function to validate input
function isValidInput(input: string): boolean {
    return input.trim().length > 0;
}

// Ask user to enter a string with validation
let str: string;
do {
    str = readline.question("Enter a non-empty string: ");
    if (!isValidInput(str)) {
        console.log("Invalid input. Please enter a non-empty string.");
    }
} while (!isValidInput(str));

// Call the function and print the reversed string
console.log(`Reversed string: ${stringReverse(str)}`);
