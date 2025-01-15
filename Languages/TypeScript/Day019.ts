// Languages - TypeScript - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


function isPerfect(num: number): boolean {
    if (num <= 0) return false;  // Perfect numbers are positive integers
    let sum = 0;
    for (let i = 1; i <= num / 2; i++) {  // Optimize by looping up to num / 2
        if (num % i === 0) {
            sum += i;
        }
    }
    return sum === num;
}

// Function to validate user input
function isValidNumber(value: string | null): boolean {
    if (value === null) return false;
    const num = Number(value);
    return !isNaN(num) && Number.isInteger(num) && num > 0;
}

// Get user input
let input: string | null = prompt("Enter a positive integer to check if it's a Perfect Number:");

if (isValidNumber(input)) {
    let num: number = parseInt(input!);
    if (isPerfect(num)) {
        console.log(`${num} is a Perfect Number! 🎉`);
    } else {
        console.log(`${num} is not a Perfect Number. ❌`);
    }
} else {
    console.log("Invalid input. Please enter a positive integer. ⚠️");
}
