// Languages - TypeScript - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

import * as readline from 'readline';

// Function to check if a number is an Armstrong Number
function isArmstrongNumber(num: number): boolean {
    if (!Number.isInteger(num) || num < 0) {
        console.log("Please enter a positive integer.");
        return false;
    }
    let numStr = num.toString();
    let numLength = numStr.length;
    let sum = 0;
    for (let i = 0; i < numLength; i++) {
        sum += Math.pow(parseInt(numStr[i]), numLength);
    }
    return sum === num;
}

// Function to prompt user for input
function promptUserForNumber() {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    rl.question("Enter a positive integer to check if it's an Armstrong Number: ", (input) => {
        const num = Number(input);

        if (isNaN(num) || !Number.isInteger(num) || num < 0) {
            console.log("Invalid input. Please enter a positive integer.");
        } else {
            const result = isArmstrongNumber(num);
            console.log(`${num} is${result ? '' : ' not'} an Armstrong Number.`);
        }
        rl.close();
    });
}

// Run the prompt
promptUserForNumber();
