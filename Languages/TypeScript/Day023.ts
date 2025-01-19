// Languages - TypeScript - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Powers of a number (x^n) without using built-in powers functions.


// Function to compute the powers of a number, including handling negative exponents
function powers(base: number, exponent: number): number {
    if (exponent === 0) {
        return 1;
    } else if (exponent < 0) {
        return 1 / powers(base, -exponent);
    } else {
        return base * powers(base, exponent - 1);
    }
}

// Prompt user for input
const basesInput = prompt("Enter the base number:")?.trim() || "0";
const baseNumber = parseFloat(basesInput);

if (!isNaN(baseNumber)) {
    const exponentInput = prompt("Enter the exponent:")?.trim() || "0";
    const exponent = parseInt(exponentInput);

    if (!isNaN(exponent)) {
        const result = powers(baseNumber, exponent);
        console.log(`${baseNumber}^${exponent} = ${result}`);
    } else {
        console.log("Invalid input for exponent.");
    }
} else {
    console.log("Invalid input for base.");
}
