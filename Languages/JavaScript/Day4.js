// Languages - JavaScript - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

function factorial(n) {
    if (n === 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('Enter a number to calculate its factorial: ', input => {
    const num = parseInt(input);

    if (isNaN(num) || num < 0) {
        console.log('Please enter a valid non-negative integer.');
    } else if (num > 170) {
        console.log('The input is too large to calculate the factorial accurately.');
    } else {
        console.log(`The factorial of ${num} is: ${factorial(num)}`);
    }

    readline.close();
});
