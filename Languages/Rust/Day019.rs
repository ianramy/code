// Languages - Rust - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


use std::io;

// Function to check if a number is a Perfect Number
fn is_perfect(n: u32) -> bool {
    if n == 0 {
        return false;
    }
    
    let mut sum = 0;
    for i in 1..=n / 2 {  // Optimize: check only up to n / 2
        if n % i == 0 {
            sum += i;
        }
    }
    sum == n
}

fn main() {
    println!("Enter a positive integer to check if it's a Perfect Number:");
    // Read input from user
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read input");
    // Parse input to u32
    match input.trim().parse::<u32>() {
        Ok(number) => {
            if is_perfect(number) {
                // Print result
                println!("🎉 {} is a Perfect Number!", number);
            } else {
                println!("❌ {} is not a Perfect Number.", number);
            }
        }
        Err(_) => {
            println!("⚠️ Invalid input. Please enter a positive integer.");
        }
    }
}
