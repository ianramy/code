// Languages - JavaScript - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

// Function to find the larger of two numbers
function findLarger(num1, num2) {
  return num1 > num2 ? num1 : num2;
}

// Function to validate and get numeric input from the user
function getValidNumber(promptMessage) {
  let isValid = false;
  let number;

  while (!isValid) {
    let input = prompt(promptMessage);
    number = parseFloat(input);

    if (!isNaN(number)) {
      isValid = true;
    } else {
      alert("Invalid input. Please enter a valid number.");
    }
  }
  return number;
}

// Ask user for two valid numbers
let number1 = getValidNumber("Enter the first number:");
let number2 = getValidNumber("Enter the second number:");

// Call the function and print the result
let largerNumber = findLarger(number1, number2);
console.log("The larger number is: " + largerNumber);
