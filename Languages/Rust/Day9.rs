// Languages - Rust - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

fn calculate_sum_in_range(start: i32, end: i32) {
    let mut sum = 0;
    for i in start..=end {
        println!("{}", i);
        sum += i;
    }
    println!("The sum of the numbers from {} to {} is: {}", start, end, sum);
}

fn main() {
    calculate_sum_in_range(1, 10);
}
