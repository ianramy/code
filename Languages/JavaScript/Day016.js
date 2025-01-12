// Languages - JavaScript - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

// Function to check if a number is an Armstrong Number
const isArmstrong = (num) => {
    if (!Number.isInteger(num) || num < 0) {
        console.log("Please enter a positive integer.");
        return false;
    }

    const numArr = num.toString().split("");
    const numLength = numArr.length;
    const sum = numArr.reduce((acc, digit) => acc + Math.pow(parseInt(digit), numLength), 0);

    return sum === num;
};

// Function to prompt user input
const promptUser = () => {
    const input = prompt("Enter a positive integer to check if it's an Armstrong Number:");
    const num = Number(input);

    if (Number.isInteger(num) && num >= 0) {
        if (isArmstrong(num)) {
            console.log(`${num} is an Armstrong Number.`);
        } else {
            console.log(`${num} is not an Armstrong Number.`);
        }
    } else {
        console.log("Invalid input. Please enter a positive integer.");
    }
};

// Run the prompt
promptUser();

// Test cases
console.log(isArmstrong(153));
console.log(isArmstrong(370));
console.log(isArmstrong(9474));
console.log(isArmstrong(9475));
