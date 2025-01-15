// Languages - JavaScript - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


// Function to check if a number is a Perfect Number
function isPerfectNumber(num) {
    if (num <= 0 || !Number.isInteger(num)) {
        return false; // Perfect numbers must be positive integers
    }

    let sum = 0;
    // Loop only up to num / 2 for optimization
    for (let i = 1; i <= Math.floor(num / 2); i++) {
        if (num % i === 0) {
            sum += i;
        }
    }

    return sum === num;
}

// Function to validate user input
function getValidInput() {
    let input = prompt("Enter a positive integer to check if it's a Perfect Number:");
    let num = Number(input);

    if (!isNaN(num) && Number.isInteger(num) && num > 0) {
        return num;
    } else {
        alert("⚠️ Invalid input. Please enter a positive integer.");
        return null;
    }
}

// Main execution
let number = getValidInput();

if (number !== null) {
    if (isPerfectNumber(number)) {
        alert(`🎉 ${number} is a Perfect Number!`);
        console.log(`🎉 ${number} is a Perfect Number!`);
    } else {
        alert(`❌ ${number} is not a Perfect Number.`);
        console.log(`❌ ${number} is not a Perfect Number.`);
    }
}
