// Languages - Rust - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

use std::io;

// Function to reverse a string
fn reverse_string(input_string: &str) -> String {
    input_string.chars().rev().collect()
}

// Function to validate input
fn is_valid_input(input: &str) -> bool {
    !input.trim().is_empty()
}

// Ask the user to input a string with validation
fn main() {
    let input_string: String;

    loop {
        println!("Enter a non-empty string: ");
        let mut temp_input = String::new();

        io::stdin()
            .read_line(&mut temp_input)
            .expect("Failed to read line");

        // Trim whitespace and newline characters
        let trimmed_input = temp_input.trim();

        if is_valid_input(trimmed_input) {
            input_string = trimmed_input.to_string();
            break;
        } else {
            println!("Invalid input. Please enter a non-empty string.");
        }
    }

    // Call the reverse_string function and print the reversed string
    let reversed_string = reverse_string(&input_string);
    println!("Reversed string: {}", reversed_string);
}
