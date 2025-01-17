// Languages - JavaScript - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


function gcd(a, b) {
    // Ensure that the inputs are positive integers
    a = Math.abs(a);
    b = Math.abs(b);

    if (a === 0 && b === 0) {
        return null;
    }

    while (b !== 0) {
        [a, b] = [b, a % b];
    }
    return a;
}

// Input validation and interactive output
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

// Function for input validation
function getIntegerInput(prompt, callback) {
    readline.question(prompt, input => {
        const num = Number(input);
        if (Number.isInteger(num)) {
            callback(num);
        } else {
            console.log('Invalid input. Please enter a valid integer.');
            readline.close();
        }
    });
}

// Input Handling
getIntegerInput('Enter the first number: ', num1 => {
    getIntegerInput('Enter the second number: ', num2 => {
        const result = gcd(num1, num2);
        if (result === null) {
            console.log('GCD is undefined for inputs 0 and 0.');
        } else {
            console.log(`The GCD of ${num1} and ${num2} is ${result}.`);
        }
        readline.close();
    });
});
