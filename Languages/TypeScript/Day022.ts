// Languages - TypeScript - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


// Function to remove duplicates from a string while preserving the original order
function removeDuplicate(input: string): string {
    if (!input.trim()) {
        return "Input cannot be empty.";
    }
    const seen = new Set<string>();
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
const userInput = prompt("Enter a string:")?.trim() || '';

if (userInput === '') {
    console.log("Input cannot be empty.");
} else {
    const output = removeDuplicate(userInput);
    console.log("String after removing duplicates:", output);
}
