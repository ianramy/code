// Languages - Rust - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


use std::io::{self, Write};

// Function to calculate the Greatest Common Divisor (GCD)
fn gcd(mut a: i32, mut b: i32) -> i32 {
    a = a.abs();
    b = b.abs();

    // GCD is undefined for 0 and 0
    if a == 0 && b == 0 {
        return 0;
    }

    // Euclidean Algorithm
    while b != 0 {
        let temp = b;
        b = a % b;
        a = temp;
    }
    a
}

fn main() {
    // Get user input
    let mut input1 = String::new();
    let mut input2 = String::new();
    // Get the first number
    print!("Enter the first number:\n");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut input1).expect("Failed to read line");
    let num1: i32 = match input1.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input. Please enter a valid integer.");
            return;
        }
    };
    // Get the second number
    print!("Enter the second number:\n");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut input2).expect("Failed to read line");
    let num2: i32 = match input2.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input. Please enter a valid integer.");
            return;
        }
    };
    // Calculate the GCD
    let result = gcd(num1, num2);
    if result == 0 {
        println!("GCD is undefined for inputs 0 and 0.");
    } else {
        // Print the result
        println!("The GCD of {} and {} is {}.", num1, num2, result);
    }
}
