// Languages - Rust - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


use std::collections::HashSet;
use std::io::{self, Write};

// Function to count vowels in a given string using HashSet for efficient lookup
fn count_vowels(input: &str) -> usize {
    let vowels: HashSet<char> = ['a', 'e', 'i', 'o', 'u'].iter().cloned().collect();
    input.to_lowercase().chars().filter(|c| vowels.contains(c)).count()
}

fn main() {
    loop {
        let mut input = String::new();
        print!("Enter a string to count vowels (or type 'exit' to quit): ");
        io::stdout().flush().unwrap();
        io::stdin().read_line(&mut input).expect("Failed to read line");

        let input = input.trim().to_string();

        if input.eq_ignore_ascii_case("exit") {
            println!("Exiting program. Goodbye!");
            break;
        }

        if input.is_empty() {
            println!("Input cannot be empty. Please enter a valid string.");
            continue;
        }

        let vowel_count = count_vowels(&input);
        println!("Number of vowels in the given string: {}", vowel_count);
    }
}
