// Languages - JavaScript - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


function isPrime(num) {
	if (num < 2) return false;
	if (num === 2 || num === 3) return true;
	if (num % 2 === 0 || num % 3 === 0) return false;
	let i = 5;
	while (i * i <= num) {
		if (num % i === 0 || num % (i + 2) === 0) return false;
		i += 6;
	}
	return true;
}

function listPrimes(n) {
	if (n < 2) {
		return [];
	}
	return Array.from({ length: n - 1 }, (_, i) => i + 2).filter(isPrime);
}

const input = prompt("Enter a number:").trim();

if (input === "") {
	console.log("Invalid input. Input cannot be empty.");
} else {
	const n = parseInt(input, 10);
	if (Number.isInteger(n) && n >= 0) {
		const primes = listPrimes(n);
		if (primes.length > 0) {
			console.log(`Prime numbers up to ${n}: ${primes.join(", ")}`);
		} else {
			console.log(`No prime numbers found up to ${n}.`);
		}
	} else {
		console.log("Invalid input. Please enter a valid non-negative integer.");
	}
}
