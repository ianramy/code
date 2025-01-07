// Languages - JavaScript - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

const readline = require("readline").createInterface({
	input: process.stdin,
	output: process.stdout,
});

readline.question("What is your first name: ", (firstName) => {
	if (!firstName.trim()) {
		console.log("First name cannot be empty.");
		readline.close();
		return;
	}

	readline.question("What is your last name: ", (lastName) => {
		if (!lastName.trim()) {
			console.log("Last name cannot be empty.");
			readline.close();
			return;
		}

		const fullName = `${firstName.trim()} ${lastName.trim()}`;

		const firstInitial = firstName.trim()[0].toUpperCase();
		const lastInitial = lastName.trim()[0].toUpperCase();

		console.log(
			`Hello, ${fullName}! Your initials are ${firstInitial}.${lastInitial}.`
		);

		readline.close();
	});
});
