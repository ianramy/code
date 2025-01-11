// Languages - JavaScript - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

// Function to check if a string is a palindrome with input validation
function isAPalindrome(str) {
    if (typeof str !== "string" || str.trim().length === 0) {
        return false;
    }

    // Normalize the string: remove non-alphanumeric characters and convert to lowercase
    let normalizedStr = str.replace(/[^a-zA-Z0-9]/g, '').toLowerCase();

    // Check if the normalized string is equal to its reverse
    return normalizedStr === normalizedStr.split('').reverse().join('');
}

// Ask the user for input
let userInput = prompt("Please enter a string:");

// Input validation
if (userInput === null || userInput.trim() === "") {
    console.log("Invalid input. Please enter a non-empty string.");
} else {
    // Call the function
    let result = isAPalindrome(userInput);

    // Print the result
    if (result) {
        console.log(`"${userInput}" is a palindrome.`);
    } else {
        console.log(`"${userInput}" is not a palindrome.`);
    }
}
