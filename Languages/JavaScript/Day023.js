// Languages - JavaScript - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


// Recursive function to calculate the power of a number
function power(base, exponent) {
	if (exponent === 0) {
		return 1;
	} else if (exponent < 0) {
		return 1 / power(base, -exponent);
	} else {
		return base * power(base, exponent - 1);
	}
}

// Get the base and exponent from the user
const baseInput = prompt("Enter the base number:").trim();
const base = parseFloat(baseInput);

if (!isNaN(base)) {
	const exponentInput = prompt("Enter the exponent:").trim();
	const exponent = parseInt(exponentInput);

	if (!isNaN(exponent)) {
		if (base === 0 && exponent === 0) {
			console.log("0^0 is undefined.");
		} else {
			const result = power(base, exponent);
			console.log(`${base}^${exponent} = ${result}`);
		}
	} else {
		console.log("Invalid input for exponent.");
	}
} else {
	console.log("Invalid input for base.");
}
