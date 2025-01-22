// Languages - JavaScript - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


function isHappyNumber(num) {
	const seen = new Set();
	while (num !== 1 && !seen.has(num)) {
		seen.add(num);
		num = sumOfSquares(num);
	}
	return num === 1;
}

function sumOfSquares(num) {
	let sum = 0;
	while (num > 0) {
		let digit = num % 10;
		sum += digit * digit;
		num = Math.floor(num / 10);
	}
	return sum;
}

function main() {
	while (true) {
		let input = prompt("Enter a number (or type 'q' to quit):");
		if (input.toLowerCase() === "q") {
			console.log("Exiting program. Goodbye!");
			break;
		}

		const num = Number(input);
		if (!Number.isInteger(num)) {
			console.log("Invalid input. Please enter an integer.");
			continue;
		}

		if (num < 0) {
			console.log("Negative numbers are not considered Happy Numbers.");
			continue;
		}

		const result = isHappyNumber(num);
		console.log(
			`The number ${num} is ${
				result ? "a Happy Number" : "not a Happy Number"
			}.`
		);
	}
}

main();
