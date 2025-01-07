// Languages - Rust - Day 5
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks the user for their name and then prints a personalized greeting with their name.

use std::io;

fn main() {
    println!("What is your name?");
    let mut name = String::new();
    io::stdin().read_line(&mut name).expect("Failed to read line");
    println!("Happy New Year, {}", name);
}
