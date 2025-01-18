// Languages - Rust - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


use std::collections::HashSet;
use std::io;

// Function to remove duplicates from a string while preserving the original order
fn remove_duplicates(input: &str) -> String {
    if input.trim().is_empty() {
        return String::from("Input cannot be empty.");
    }
    let mut seen = HashSet::new();
    input.chars().filter(|c| seen.insert(*c)).collect()
}

// Get user input and display the result
fn main() {
    println!("Enter a string:");
    let mut input = String::new();
    
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    
    let input = input.trim();
    
    if input.is_empty() {
        println!("Input cannot be empty.");
    } else {
        let result = remove_duplicates(input);
        println!("String after removing duplicates: {}", result);
    }
}
