// Languages - Rust - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

use std::io;

fn main() {
    loop {
        println!("Please enter a positive number:");

        let mut input = String::new();
        io::stdin()
            .read_line(&mut input)
            .expect("Failed to read line");

        let input: i32 = match input.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a valid number.");
                continue;
            }
        };

        if input <= 0 {
            println!("The number is non-positive. Please enter a positive number.");
            continue;
        }

        println!("You entered a valid positive number: {}", input);
        break;
    }
}
