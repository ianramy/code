// Languages - JavaScript - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


// Function to remove duplicates from a string
function removeDuplicates(input) {
    if (!input) {
        return "Input cannot be empty.";
    }
    const seen = new Set();
    let result = '';
    for (const char of input) {
        if (!seen.has(char)) {
            seen.add(char);
            result += char;
        }
    }
    return result;
}

// Get user input and display the result
const input = prompt("Enter a string:");
if (input === null || input.trim() === "") {
    console.log("Input cannot be empty.");
} else {
    const result = removeDuplicates(input);
    console.log("String after removing duplicates:", result);
}
