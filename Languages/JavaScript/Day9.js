// Languages - JavaScript - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

function calculateSumInRange(start, end) {
	let sum = 0;
	for (let i = start; i <= end; i++) {
		console.log(i);
		sum += i;
	}
	console.log(`The sum of the numbers from ${start} to ${end} is: ${sum}`);
}

calculateSumInRange(1, 10);
