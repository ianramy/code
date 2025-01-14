// Languages - JavaScript - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

// Function to count alphabetic characters
const charaCount = (str) => {
    let obj = {};
    str.split('').forEach((char) => {
        if (/[a-zA-Z]/.test(char)) {  // Only count letters
            char = char.toLowerCase();
            obj[char] = obj[char] ? obj[char] + 1 : 1;
        }
    });
    return obj;
};

// Ask user for input
let input = prompt('Enter a string:');

// Input validation
if (!input || input.trim() === "") {
    console.log("Error: Input cannot be empty.");
} else {
    const result = charaCount(input);

    if (Object.keys(result).length === 0) {
        console.log("No alphabetic characters found in the input.");
    } else {
        console.log("\nCharacter occurrence in the input string:");
        for (let [key, value] of Object.entries(result)) {
            console.log(`'${key}': ${value}`);
        }
    }
}
