// Languages - TypeScript - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.

import * as readline from 'readline';

function decimalBinary(number: number): string {
    let num = Math.abs(number);
    let binary = "";
    while (num > 0) {
        binary = (num % 2) + binary;
        num = Math.floor(num / 2);
    }
    if (binary === "") {
        binary = "0";
    }
    return number < 0 ? "-" + binary : binary;
}

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Enter a decimal number: ", (userInput) => {
    const num = parseInt(userInput, 10);
    if (!isNaN(num)) {
        console.log("Binary representation:", decimalBinary(num));
    } else {
        console.log("Invalid input. Please enter a valid integer.");
    }
    rl.close();
});
