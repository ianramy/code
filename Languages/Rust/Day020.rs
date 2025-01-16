// Languages - Rust - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


use std::io;

// Bubble Sort Function
fn bubble_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n {
        let mut swapped = false;
        for j in 0..n - i - 1 {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
                swapped = true;
            }
        }
        if !swapped {
            break;
        }
    }
}

// Function to get a validated integer input
fn get_valid_input(prompt: &str) -> i32 {
    loop {
        println!("{}", prompt);
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();

        match input.trim().parse::<i32>() {
            Ok(num) => return num,
            Err(_) => println!("Invalid input. Please enter a valid integer."),
        }
    }
}

fn main() {
    // Ask the user for the number of elements
    let n = loop {
        let num = get_valid_input("Enter the number of elements in the array: ");
        if num > 0 {
            break num as usize;
        } else {
            println!("Please enter a positive integer.");
        }
    };

    // Collect elements individually with validation
    let mut arr: Vec<i32> = Vec::new();
    for i in 0..n {
        let element = get_valid_input(&format!("Enter element {}: ", i + 1));
        arr.push(element);
    }

    // Display original array
    println!("\nOriginal array: {:?}", arr);

    // Sort the array
    bubble_sort(&mut arr);

    // Display sorted array
    println!("Sorted array: {:?}", arr);
}
