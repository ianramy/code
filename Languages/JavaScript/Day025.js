// Languages - JavaScript - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


function decimalToBinary(number) {
	if (number === 0) {
		return "0";
	}

	let num = Math.abs(number);
	let binaryArray = [];

	while (num > 0) {
		binaryArray.unshift(num % 2);
		num = Math.floor(num / 2);
	}

	let binary = binaryArray.join("");

	return number < 0 ? "-" + binary : binary;
}

const input = prompt("Enter a decimal number:").trim();

if (/^-?\d+$/.test(input)) {
	const number = parseInt(input, 10);
	const binary = decimalToBinary(number);
	console.log("Binary representation:", binary);
} else {
	console.log("Invalid input. Please enter a valid integer.");
}
