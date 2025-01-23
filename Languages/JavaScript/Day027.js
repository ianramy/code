// Languages - JavaScript - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


function countVowels(input) {
	const vowels = new Set(["a", "e", "i", "o", "u"]);
	let count = 0;

	for (let char of input.toLowerCase()) {
		if (vowels.has(char)) {
			count++;
		}
	}
	return count;
}

while (true) {
	let input = prompt(
		"Enter a string to count vowels (or type 'exit' to quit):"
	);

	if (!input) {
		console.log("Input cannot be empty. Please enter a valid string.");
		continue;
	}

	if (input.toLowerCase() === "exit") {
		console.log("Exiting program. Goodbye!");
		break;
	}

	const vowelCount = countVowels(input);
	console.log(`The number of vowels in the given string: ${vowelCount}`);
}
