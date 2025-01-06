// Languages - JavaScript - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

const prompt = require("prompt-sync")();

let number;

while (true) {
	const input = prompt("Enter a positive number: ");

	number = Number(input);
	if (isNaN(number)) {
		console.log("Invalid input. Please enter a valid number.");
		continue;
	}

	if (number > 0) {
		break;
	} else {
		console.log("The number must be positive. Please try again.");
	}
}

console.log(`You entered: ${number}`);
