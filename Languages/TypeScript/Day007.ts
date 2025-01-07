// Languages - TypeScript - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

import * as readline from 'readline';

let numbers: number[] = [];
let sum: number = 0;

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

function getNumbers(): void {
    rl.question('Enter a number (or type "done" to finish): ', (answer) => {
        if (answer.toLowerCase() === 'done') {
            if (numbers.length === 0) {
                console.log('No numbers were entered.');
                rl.close();
                return;
            }
            calculateAndPrintResults();
            rl.close();
            return;
        }

        const number = parseFloat(answer);
        if (isNaN(number)) {
            console.log('Invalid input. Please enter a valid number.');
        } else {
            numbers.push(number);
        }
        getNumbers();
    });
}

function calculateAndPrintResults(): void {
    sum = numbers.reduce((acc, num) => acc + num, 0);
    const average = sum / numbers.length;

    const aboveAverage = numbers.filter((num) => num > average).length;
    const belowAverage = numbers.filter((num) => num < average).length;

    console.log(`Numbers: ${numbers}`);
    console.log(`Sum: ${sum}`);
    console.log(`Average: ${average.toFixed(2)}`);
    console.log(`Above average: ${aboveAverage}`);
    console.log(`Below average: ${belowAverage}`);
}

getNumbers();
