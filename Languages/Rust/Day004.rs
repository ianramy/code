// Languages - Rust - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

fn factorial(n: u64) -> u64 {
    if n == 0 {
        return 1;
    }
    return n * factorial(n - 1);
}

fn main() {
    println!("Enter a number to calculate its factorial: ");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input).unwrap();
    let input: u64 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Please enter a valid number.");
            return;
        }
    };
    println!("Factorial of {} is {}", input, factorial(input));
}
