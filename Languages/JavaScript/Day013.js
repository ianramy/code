// Languages - JavaScript - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

const readline = require("readline").createInterface({
	input: process.stdin,
	output: process.stdout,
});

// Function to calculate the sum of an array
function sumOfArray(arr) {
	return arr.reduce((sum, num) => sum + num, 0);
}

// Prompt the user for input
readline.question(
	"Enter the array of numbers separated by commas (e.g., 1,2,3): ",
	(input) => {
		// Convert input to an array and validate
		try {
			let arr = input.split(",").map((item) => {
				if (isNaN(item.trim())) {
					throw new Error(
						"Invalid input. Please enter only numbers separated by commas."
					);
				}
				return parseInt(item.trim(), 10);
			});

			// Calculate the sum and display the result
			const result = sumOfArray(arr);
			console.log(`The sum of the array is: ${result}`);
		} catch (error) {
			console.error(error.message);
		} finally {
			readline.close();
		}
	}
);
