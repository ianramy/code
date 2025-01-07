// Languages - TypeScript - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

function calculateSumInRanges(start: number, end: number): void {
    let sumOfNumbers: number = 0;
    for (let i = start; i <= end; i++) {
        console.log(i);
        sumOfNumbers += i;
    }
    console.log(`The sum of the numbers from ${start} to ${end} is ${sumOfNumbers}`);
}

calculateSumInRanges(1, 10);
