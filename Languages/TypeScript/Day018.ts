// Languages - TypeScript - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

function charCount(str: string): Record<string, number> {
  const charCount: Record<string, number> = {};

  for (let char of str.toLowerCase()) {
    if (/[a-z]/.test(char)) {  // Count only alphabetic characters
      charCount[char] = (charCount[char] || 0) + 1;
    }
  }

  return charCount;
}

// Ask the user for input
const userInput: string | null = prompt("Enter a string:");

// Input validation
if (!userInput || userInput.trim() === "") {
  console.log("Error: Input cannot be empty.");
} else {
  const result = charCount(userInput);

  if (Object.keys(result).length === 0) {
    console.log("No alphabetic characters found in the string.");
  } else {
    console.log("\nCharacter occurrence in the string:");
    Object.entries(result)
      .sort()
      .forEach(([char, count]) => {
        console.log(`'${char}': ${count}`);
      });
  }
}
