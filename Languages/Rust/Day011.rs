// Languages - Rust - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

use std::io;

// Function to calculate the product of two numbers
fn product(num1: i32, num2: i32) -> i32 {
    num1 * num2
}

fn get_input(prompt: &str) -> i32 {
    // Loop until a valid number is entered
    loop {
        println!("{}", prompt);
        let mut input = String::new();
        // Read input from the user
        io::stdin().read_line(&mut input).expect("Failed to read input");
        match input.trim().parse::<i32>() {
            Ok(num) => return num,
            // Handle invalid input
            Err(_) => println!("Invalid input. Please enter a valid number."),
        }
    }
}

fn main() {
    // Get input from the user
    let num1 = get_input("Enter the first number: ");
    let num2 = get_input("Enter the second number: ");

    // Calculate the product of the two numbers
    let result = product(num1, num2);
    // Print the result
    println!("The product of {} and {} is: {}", num1, num2, result);
}
