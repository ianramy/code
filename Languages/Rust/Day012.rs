// Languages - Rust - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

use std::io;

// Function to find the larger of two numbers
fn find_larger(a: i32, b: i32) -> i32 {
    if a > b {
        a
    } else {
        b
    }
}

// Function to get a valid integer input from the user
fn get_valid_integer(prompt: &str) -> i32 {
    loop {
        println!("{}", prompt);
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        match input.trim().parse::<i32>() {
            Ok(num) => return num,
            Err(_) => println!("Invalid input. Please enter a valid integer."),
        }
    }
}

fn main() {
    // Get two valid integers from the user
    let num1 = get_valid_integer("Enter the first number:");
    let num2 = get_valid_integer("Enter the second number:");

    // Call the function and print the result
    let larger = find_larger(num1, num2);
    println!("The larger number is: {}", larger);
}
