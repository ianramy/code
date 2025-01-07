// Languages - TypeScript - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

function factorial(n: number): number {
  if (n === 0 || n === 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

import readlineSync from "readline-sync";

const numInput = readlineSync.question("Enter a number to find the factorial: ");
const num = parseInt(numInput);

if (isNaN(num) || num < 0) {
  console.log("Please enter a valid non-negative integer.");
} else {
  console.log(`The factorial of ${num} is ${factorial(num)}.`);
}
