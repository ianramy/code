// Languages - Rust - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

use std::io;

fn main() {
    let mut numbers = Vec::new();
    let mut sum = 0;

    println!("Enter a series of numbers. Enter '0' to stop:");

    loop {
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

        if input == 0 {
            break;
        }

        numbers.push(input);
    }

    if numbers.is_empty() {
        println!("No numbers were entered.");
        return;
    }

    for number in &numbers {
        sum += number;
    }

    let average = sum as f64 / numbers.len() as f64;

    println!("Sum: {}", sum);
    println!("Average: {:.2}", average);

    if average > 50.0 {
        println!("Above average");
    } else if average < 50.0 {
        println!("Below average");
    } else {
        println!("Average is exactly 50");
    }
}
