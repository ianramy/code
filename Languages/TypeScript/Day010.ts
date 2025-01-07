// Languages - TypeScript - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

const numPrompt = (): void => {
  let num: number = -1;

  while (num <= 0) {
    const input: string | null = prompt("Enter a positive number: ");

    if (input === null || isNaN(parseInt(input, 10))) {
      alert("Invalid input! Please enter a number instead of a string.");
      continue;
    }

    num = parseInt(input, 10);

    if (num <= 0) {
      alert("The number is negative or zero. Please enter a positive number.");
    }
  }

  console.log(`You entered a valid positive number: ${num}`);
}

numPrompt();
