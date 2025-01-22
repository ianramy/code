// Languages - TypeScript - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


function isHappyNum(num: number): boolean {
    const seen = new Set<number>();
    while (num !== 1 && !seen.has(num)) {
        seen.add(num);
        num = sumOfSquare(num);
    }
    return num === 1;
}

function sumOfSquare(num: number): number {
    return num.toString().split('').reduce((sum, digit) => sum + Math.pow(parseInt(digit), 2), 0);
}

// Use Node.js input handling
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question("Enter a number: ", (userInput: string) => {
    const inputNum = parseInt(userInput, 10);
    if (isNaN(inputNum)) {
        console.log("Invalid input. Please enter an integer.");
    } else if (inputNum < 0) {
        console.log("Negative numbers are not considered Happy Numbers.");
    } else {
        const result = isHappyNum(inputNum);
        console.log(`The number ${inputNum} is ${result ? "a Happy Number" : "not a Happy Number"}.`);
    }
    readline.close();
});
