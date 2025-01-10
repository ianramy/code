// Languages - JavaScript - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

// Function to reverse a string
function reverseString(str) {
    return str.split("").reverse().join("");
}

// Function to validate input
function isValidInput(input) {
    return input !== null && input.trim().length > 0;
}

// Ask the user for input with validation
let userInput;
do {
    userInput = prompt("Please enter a non-empty string:");
    if (!isValidInput(userInput)) {
        alert("Invalid input. Please enter a non-empty string.");
    }
} while (!isValidInput(userInput));

// Call the function and print the reversed string
console.log(`Reversed string: ${reverseString(userInput)}`);
alert(`Reversed string: ${reverseString(userInput)}`);
