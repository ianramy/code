// Languages - C++ - Day 6
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that initializes an array of integers, iterates through it, and prints each element.

#include <iostream>

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++) {
        std::cout << arr[i] << std::endl;
    }
    return 0;
}
