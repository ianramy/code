// Languages - Rust - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n.
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

use std::io;

fn fibonacci(n: i32) {
    if n < 0 {
        println!("Please enter a positive number.");
        return;
    } else if n == 0 {
        println!("Fibonacci sequence up to 0: 0");
        return;
    }

    let mut a = 0;
    let mut b = 1;

    print!("Fibonacci sequence up to {}: {} ", n, a);

    while b <= n {
        print!("{} ", b);
        let c = a + b;
        a = b;
        b = c;
    }

    println!();
}

fn main() {
    // Ask the user for input
    println!("Enter a positive number: ");
    let mut input = String::new();

    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read input.");

    match input.trim().parse::<i32>() {
        Ok(number) if number >= 0 => fibonacci(number),
        _ => println!("Invalid input. Please enter a positive integer."),
    }
}
