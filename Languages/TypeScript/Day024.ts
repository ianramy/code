// Languages - TypeScript - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


// Function to check if a number is prime using an optimized approach
function isPrimeNum(num: number): boolean {
    if (num <= 1) return false; 
    if (num <= 3) return true; 
    if (num % 2 === 0 || num % 3 === 0) return false;

    let i = 5;
    while (i * i <= num) { 
        if (num % i === 0 || num % (i + 2) === 0) return false;
        i += 6;
    }
    return true;
}

// Function to generate a list of prime numbers up to 'n'
function listPrimesNum(n: number): number[] {
    if (n < 0) {
        console.log("Please enter a non-negative number.");
        return [];
    }
    const primes: number[] = [];
    for (let i = 2; i <= n; i++) {
        if (isPrimeNum(i)) {
            primes.push(i);
        }
    }
    return primes;
}

// Get user input from prompt, convert to number, and validate
const userInput = prompt("Enter a number:") || "0";
const num = parseInt(userInput);

if (!isNaN(num)) {
    const primes = listPrimesNum(num);
    console.log(`Prime numbers up to ${num}: ${primes}`);
} else {
    console.log("Invalid input. Please enter a valid number.");
}
