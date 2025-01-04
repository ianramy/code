// Languages - Rust - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

use std::io;

fn main() {
    println!("Enter your first name:");
    let mut first_name = String::new();
    io::stdin().read_line(&mut first_name).expect("Failed to read input");
    let first_name = first_name.trim();

    if first_name.is_empty() {
        println!("First name cannot be empty.");
        return;
    }

    println!("Enter your last name:");
    let mut last_name = String::new();
    io::stdin().read_line(&mut last_name).expect("Failed to read input");
    let last_name = last_name.trim();

    if last_name.is_empty() {
        println!("Last name cannot be empty.");
        return;
    }

    let full_name = format!("{} {}", first_name, last_name);

    let first_initial = first_name.chars().next().unwrap_or(' ');
    let last_initial = last_name.chars().next().unwrap_or(' ');

    println!(
        "Hello, {}! Your initials are {}.{}.",
        full_name, first_initial, last_initial
    );
}
