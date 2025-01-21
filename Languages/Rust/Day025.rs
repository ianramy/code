// Languages - Rust - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.

use std::io;

fn decimal_to_binary(mut number: i32) -> String {
    if number == 0 {
        return "0".to_string();
    }

    let mut binary = String::new();
    let is_negative = number < 0;
    number = number.abs();

    while number > 0 {
        binary.push_str(&(number % 2).to_string());
        number /= 2;
    }

    let binary = binary.chars().rev().collect::<String>();
    
    if is_negative {
        format!("-{}", binary)
    } else {
        binary
    }
}

fn main() {
    println!("Enter a decimal number:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    match input.trim().parse::<i32>() {
        Ok(number) => {
            let binary = decimal_to_binary(number);
            println!("Binary representation: {}", binary);
        }
        Err(_) => println!("Invalid input. Please enter a valid integer."),
    }
}
