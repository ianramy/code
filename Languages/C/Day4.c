// Languages - C - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

#include <stdio.h>

int factorial(int n)
{
    if (n == 0)
    {
        return 1;
    }
    return n * factorial(n - 1);
}

int main()
{
    int n;
    printf("Enter a non-negative integer: ");

    if (scanf("%d", &n) != 1 || n < 0)
    {
        printf("Invalid input. Please enter a non-negative integer.\n");
        return 1;
    }

    if (n > 12)
    {
        printf("Input too large! Factorial exceeds the range of supported integers.\n");
        return 1;
    }

    printf("Factorial of %d is %d\n", n, factorial(n));
    return 0;
}
