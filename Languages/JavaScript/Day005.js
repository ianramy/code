// Languages - JavaScript - Day 5
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks the user for their name and then prints a personalized greeting with their name.

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('What is your name? ', name => {
    console.log(`Happy New Year ${name}!`);
    readline.close();
}
);
