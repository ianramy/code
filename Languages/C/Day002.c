// Languages - C - Day 2
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that declares an integer, a string, and a floating-point number, then prints these values.

#include <stdio.h>

int main() {
    int integer = 5;
    char str[] = "Hello, World!";
    float floating = 3.14;

    printf("Integer: %d\n", integer);
    printf("String: %s\n", str);
    printf("Floating-point: %f\n", floating);

    return 0;
}

// Output:
// Integer: 5
// String: Hello, World!
// Floating-point: 3.140000
// Note: The output of the floating-point number may vary slightly due to floating-point precision.
