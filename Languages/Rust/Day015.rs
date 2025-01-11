// Languages - Rust - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

use std::io;

// Function to check if a string is a palindrome with input validation
fn is_palindrome(s: &str) -> bool {
    // Normalize the string: remove non-alphanumeric characters and make lowercase
    let normalized: String = s
        .chars()
        .filter(|c| c.is_alphanumeric())
        .flat_map(|c| c.to_lowercase())
        .collect();

    // Check if the normalized string is equal to its reverse
    normalized == normalized.chars().rev().collect::<String>()
}

fn main() {
    // Ask the user for a string
    println!("Enter a string: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let input = input.trim();

    // Input validation
    if input.is_empty() {
        println!("Invalid input. Please enter a non-empty string.");
        return;
    }

    // Check if the string is a palindrome
    if is_palindrome(input) {
        println!("\"{}\" is a palindrome.", input);
    } else {
        println!("\"{}\" is not a palindrome.", input);
    }
}
