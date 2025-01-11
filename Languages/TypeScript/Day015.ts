// Languages - TypeScript - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

// Function to check if a string is a palindrome with input validation
function isPalindrome(str: string): boolean {
  if (typeof str !== "string" || str.trim().length === 0) {
    return false;
  }
  
  // Normalize the string: remove non-alphanumeric characters and make lowercase
  const normalizedStr = str.replace(/[^a-zA-Z0-9]/g, "").toLowerCase();
  return normalizedStr === normalizedStr.split("").reverse().join("");
}

// Ask user for input
const readline = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});

readline.question("Enter a string: ", (str: string) => {
  if (str.trim().length === 0) {
    console.log("Invalid input. Please enter a non-empty string.");
  } else {
    console.log(isPalindrome(str) ? "Palindrome" : "Not a palindrome");
  }
  readline.close();
});
