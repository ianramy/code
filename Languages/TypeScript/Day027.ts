// Languages - TypeScript - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


// Function to count vowels in a given string using a set for efficient lookup
function countAllVowels(input: string): number {
    const vowels = new Set(['a', 'e', 'i', 'o', 'u']);
    return input.toLowerCase().split('').filter(char => vowels.has(char)).length;
}

while (true) {
    const input = prompt("Enter a string to count vowels (or type 'exit' to quit):");

    if (input === null || input.trim().toLowerCase() === 'exit') {
        console.log("Exiting program. Goodbye!");
        break;
    }

    if (input.trim() === "") {
        console.log("Input cannot be empty. Please enter a valid string.");
        continue;
    }

    const vowelCount = countAllVowels(input);
    alert(`Number of vowels in the given string: ${vowelCount}`);
}
