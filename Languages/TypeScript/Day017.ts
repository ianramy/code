// Languages - TypeScript - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n.
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

function fibonacciSequence(n: number): number[] {
    if (n <= 0) return [];
    if (n === 1) return [0];
    let fib: number[] = [0, 1];
    let nextNum = fib[0] + fib[1];
    while (nextNum <= n) {
        fib.push(nextNum);
        nextNum = fib[fib.length - 1] + fib[fib.length - 2];
    }
    return fib;
}

// Ask the user for a number n and print the Fibonacci sequence up to that number.
let userInput: string | null = prompt("Enter a positive number: ");
let num: number = userInput !== null && !isNaN(parseInt(userInput)) ? parseInt(userInput) : 0;

if (num > 0) {
    console.log(`Fibonacci sequence up to ${num}:`, fibonacciSequence(num));
} else {
    console.log("Please enter a valid positive number.");
}
