// Languages - JavaScript - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n. 
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

function fibonacci(n) {
	if (n < 0 || isNaN(n)) {
		return "Please enter a positive integer.";
	} else if (n === 0) {
		return [0];
	}

	let fib = [0, 1];
	while (true) {
		let nextNum = fib[fib.length - 1] + fib[fib.length - 2];
		if (nextNum > n) {
			break;
		}
		fib.push(nextNum);
	}
	return fib;
}

// Ask the user for a number and generate the Fibonacci sequence up to that number.
let input = prompt("Enter a positive number: ");
let n = parseInt(input);

if (!isNaN(n) && n >= 0) {
	console.log(`Fibonacci sequence up to ${n}:`, fibonacci(n).join(", "));
} else {
	console.log("Invalid input. Please enter a positive integer.");
}
