// Languages - TypeScript - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


import * as readline from 'readline';

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

// Function to calculate the Greatest Common Divisor (GCD)
function gcd(a: number, b: number): number {
    if (!Number.isInteger(a) || !Number.isInteger(b)) {
        throw new Error("Both inputs must be valid integers.");
    }

    a = Math.abs(a);
    b = Math.abs(b);

    if (a === 0 && b === 0) {
        throw new Error("GCD is undefined for inputs 0 and 0.");
    }

    while (b !== 0) {
        [a, b] = [b, a % b];
    }
    return a;
}

// Function to validate and parse input
function getValidInteger(input: string): number {
    const num = Number(input);
    if (!Number.isInteger(num)) {
        throw new Error("Invalid input. Please enter a valid integer.");
    }
    return num;
}

function main() {
    rl.question("Enter the first integer: ", (num1) => {
        rl.question("Enter the second integer: ", (num2) => {
            try {
                const firstNum = getValidInteger(num1);
                const secondNum = getValidInteger(num2);
                const result = gcd(firstNum, secondNum);
                console.log(`The GCD of ${firstNum} and ${secondNum} is ${result}.`);
            } catch (error: any) {
                console.error(error.message);
            } finally {
                rl.close();
            }
        });
    });
}

main();
