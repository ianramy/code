// Languages - Rust - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

use std::io;

// Function to calculate the sum of an array of numbers
fn sum_of_array(arr: &[i32]) -> i32 {
    arr.iter().sum()
}

fn main() {
    println!("Enter the number of elements in the array:");

    // Read and validate the number of elements
    let n: usize = loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        match input.trim().parse() {
            Ok(num) if num > 0 => break num,
            _ => println!("Please enter a valid positive number."),
        }
    };

    // Read and validate the elements of the array
    let mut arr = Vec::new();
    for i in 1..=n {
        println!("Enter element {}:", i);
        let num: i32 = loop {
            let mut input = String::new();
            io::stdin().read_line(&mut input).expect("Failed to read line");
            match input.trim().parse() {
                Ok(num) => break num,
                _ => println!("Please enter a valid integer."),
            }
        };
        arr.push(num);
    }

    // Calculate and display the sum of the array
    let sum = sum_of_array(&arr);
    println!("The sum of the array is: {}", sum);
}
