// Languages - Rust - Day 6
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that initializes an array of integers, iterates through it, and prints each element.

fn main() {
    let arr = [1, 2, 3, 4, 5];
    for i in arr.iter() {
        println!("{}", i);
    }
}
