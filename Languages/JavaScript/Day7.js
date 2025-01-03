// Languages - JavaScript - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

const readline = require("readline-sync");

let numbers = [];
let sum = 0;
let average = 0;

while (true) {
	let input = readline.question('Enter a number or type "done" to finish: ');

	if (input.toLowerCase() === "done") {
		break;
	}

	let num = Number(input);
	if (isNaN(num)) {
		console.log("Invalid input. Please enter a valid number.");
		continue;
	}

	numbers.push(num);
	sum += num;
}

if (numbers.length === 0) {
	console.log("No numbers entered. Exiting program.");
} else {

	average = sum / numbers.length;

	console.log(`The sum of the numbers is ${sum}.`);
	console.log(`The average of the numbers is ${average.toFixed(2)}.`);

	if (average > 10) {
		console.log("Above average.");
	} else if (average < 10) {
		console.log("Below average.");
	} else {
		console.log("Average.");
	}
}
