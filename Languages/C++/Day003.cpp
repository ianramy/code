// Languages - C++ - Day 3
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that checks if a number is positive, negative, or zero.

#include <iostream>

int main() {
    int num;
    std::cout << "Enter a number: ";
    std::cin >> num;

    if (num > 0) {
        std::cout << num << " is positive." << std::endl;
    } else if (num < 0) {
        std::cout << num << " is negative." << std::endl;
    } else {
        std::cout << num << " is zero." << std::endl;
    }

    return 0;
}
