// Languages - Rust - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

use std::io;

// Function to check if a number is an Armstrong Number
fn is_armstrong_number(num: i32) -> bool {
    if num < 0 {
        println!("Please enter a positive integer.");
        return false;
    }

    let num_str = num.to_string();
    let num_len = num_str.len() as u32;
    let mut sum = 0;

    for c in num_str.chars() {
        if let Some(digit) = c.to_digit(10) {
            sum += digit.pow(num_len);
        } else {
            println!("Invalid character encountered.");
            return false;
        }
    }

    sum == num as u32
}

fn main() {
    println!("Enter a positive integer to check if it's an Armstrong Number:");

    let mut input = String::new();

    match io::stdin().read_line(&mut input) {
        Ok(_) => {
            let input = input.trim();

            match input.parse::<i32>() {
                Ok(num) if num >= 0 => {
                    if is_armstrong_number(num) {
                        println!("{} is an Armstrong Number", num);
                    } else {
                        println!("{} is not an Armstrong Number", num);
                    }
                }
                _ => println!("Invalid input. Please enter a positive integer."),
            }
        }
        Err(_) => println!("Failed to read input."),
    }
}
