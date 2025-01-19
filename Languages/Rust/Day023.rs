// Languages - Rust - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


use std::io;

// Recursive function to calculate the power of a number
fn power(base: f64, exponent: i32) -> f64 {
    if exponent == 0 {
        1.0
    } else if exponent < 0 {
        1.0 / power(base, -exponent)
    } else {
        base * power(base, exponent - 1)
    }
}

// Main function to take input and call the power function
fn main() {
    let mut base_input = String::new();
    let mut exponent_input = String::new();

    // Take input from the user
    println!("Enter the base number:");
    io::stdin().read_line(&mut base_input).expect("Failed to read line");
    let base: f64 = match base_input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input for base.");
            return;
        }
    };

    println!("Enter the exponent:");
    io::stdin().read_line(&mut exponent_input).expect("Failed to read line");
    let exponent: i32 = match exponent_input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input for exponent.");
            return;
        }
    };

    let result = power(base, exponent);
    println!("{}^{} = {}", base, exponent, result);
}
