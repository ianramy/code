// Languages - JavaScript - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

const readline = require("readline");

// Function to calculate the product of two numbers
function product(num1, num2) {
	return num1 * num2;
}

// Function to get a valid number input from the user
function getValidNumber(promptMessage, rl, callback) {
	rl.question(promptMessage, (input) => {
        // Check if the input is a valid number
		let number = parseFloat(input);
		if (!isNaN(number)) {
			callback(number);
		} else {
            // If the input is not a valid number, ask the user to enter a valid number
			console.log("Invalid input. Please enter a valid number.");
			getValidNumber(promptMessage, rl, callback);
		}
	});
}

// Create an interface to read input from the user
const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout,
});

// Get the two numbers from the user and calculate their product
getValidNumber("Enter the first number: ", rl, (num1) => {
	getValidNumber("Enter the second number: ", rl, (num2) => {
        // Print the product of the two numbers
		console.log("The product of the two numbers is: " + product(num1, num2));
		rl.close();
	});
});
