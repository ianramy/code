// Languages - Rust - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

use std::io::{self, Write};
use std::collections::HashMap;

fn count_characters(s: &str) -> HashMap<char, u32> {
    let mut char_count = HashMap::new();

    for c in s.chars() {
        if c.is_alphabetic() {
            let lower_c = c.to_ascii_lowercase();
            *char_count.entry(lower_c).or_insert(0) += 1;
        }
    }

    char_count
}

fn main() {
    // Prompt the user for input
    print!("Enter a string: ");
    io::stdout().flush().unwrap();

    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let input = input.trim();

    // Input validation
    if input.is_empty() {
        println!("Error: Input cannot be empty.");
        return;
    }

    // Count characters
    let char_count = count_characters(input);

    // Display results
    if char_count.is_empty() {
        println!("No alphabetic characters found in the input.");
    } else {
        println!("\nCharacter occurrence in the input string:");
        let mut sorted_chars: Vec<_> = char_count.iter().collect();
        sorted_chars.sort_by_key(|&(c, _)| *c);
        for (c, count) in sorted_chars {
            println!("'{}': {}", c, count);
        }
    }
}
