// Languages - Rust - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


fn is_prime(num: u32) -> bool {
    if num < 2 {
        return false;
    }
    if num == 2 || num == 3 {
        return true;
    }
    if num % 2 == 0 || num % 3 == 0 {
        return false;
    }
    let mut i = 5;
    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 {
            return false;
        }
        i += 6;
    }
    true
}

fn list_primes(n: u32) -> Vec<u32> {
    (2..=n).filter(|&x| is_prime(x)).collect()
}

fn main() {
    use std::io::{self, Write};

    print!("Enter a number: ");
    io::stdout().flush().unwrap();

    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let n: i32 = match input.trim().parse() {
        Ok(num) if num >= 0 => num,
        _ => {
            println!("Invalid input. Please enter a non-negative integer.");
            return;
        }
    };

    let primes = list_primes(n as u32);
    println!("Prime numbers up to {}: {:?}", n, primes);
}
