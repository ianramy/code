// Languages - TypeScript - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

import * as readline from "readline";

function productOfNum(num1: number, num2: number): number {
    // Calculate the product of the two numbers
  return num1 * num2;
}

// Create an interface for the readline module
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

// Prompt the user to enter two numbers
rl.question("Enter the first number: ", (answer1) => {
  const numb1 = parseInt(answer1);
  if (isNaN(numb1)) {
    // Print error message
    console.error("Invalid input for the first number.");
    rl.close();
    return;
  }

  rl.question("Enter the second number: ", (answer2) => {
    const numb2 = parseInt(answer2);
    if (isNaN(numb2)) {
        //  Print error message
      console.error("Invalid input for the second number.");
    } else {
      const result = productOfNum(numb1, numb2);
    //   Print the result
      console.log("The product of the two numbers is: " + result);
    }
    rl.close();

  });
});
