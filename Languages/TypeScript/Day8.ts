// Languages - TypeScript - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

import readlineSync from "readline-sync";

function greetingMessage(firstName: string, lastName: string): string {
  if (!firstName || !lastName) {
    return "Invalid input. Both first and last name must be provided.";
  }
  const initials = firstName.charAt(0).toUpperCase() + "." + lastName.charAt(0).toUpperCase();
  const fullName = firstName + " " + lastName;
  const greeting = `Hello, ${fullName}! Your initials are ${initials}.`;
  return greeting;
}

const firstName = readlineSync.question("Enter your first name: ").trim();
const lastName = readlineSync.question("Enter your last name: ").trim();

console.log(greetingMessage(firstName, lastName));
