// Languages - Rust - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


use std::collections::HashSet;
use std::io;

// Function to check if a number is a Happy Number
fn is_happy_number(num: i32) -> bool {
    let mut seen = HashSet::new();
    let mut current = num;

    while current != 1 && !seen.contains(&current) {
        seen.insert(current);
        current = sum_of_squares(current);
    }
    current == 1
}

// Function to calculate the sum of squares of digits
fn sum_of_squares(num: i32) -> i32 {
    num.to_string()
        .chars()
        .map(|c| c.to_digit(10).unwrap() as i32)
        .map(|digit| digit * digit)
        .sum()
}

fn main() {
    loop {
        println!("Enter a number: ");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");

        let input = input.trim();
        
        // Parse input and handle errors
        match input.parse::<i32>() {
            Ok(num) if num >= 0 => {
                let result = is_happy_number(num);
                println!("The number {} is {}.", num, if result { "a Happy Number" } else { "not a Happy Number" });
                break;
            }
            Ok(_) => {
                println!("Negative numbers are not considered Happy Numbers.");
            }
            Err(_) => {
                println!("Invalid input. Please enter an integer.");
            }
        }
    }
}
