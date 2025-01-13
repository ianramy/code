// Languages - C - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n. 
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

#include <stdio.h>

// Function to generate Fibonacci sequence up to n
void fibonacci(int n)
{
    if (n < 0)
    {
        printf("Please enter a positive integer.\n");
        return;
    }
    else if (n == 0)
    {
        printf("Fibonacci sequence up to 0: 0\n");
        return;
    }

    int a = 0, b = 1, c;

    printf("Fibonacci sequence up to %d: %d", n, a);

    if (n >= 1)
    {
        printf(", %d", b);
    }

    c = a + b;
    while (c <= n)
    {
        printf(", %d", c);
        a = b;
        b = c;
        c = a + b;
    }

    printf("\n"); // Clean output formatting
}

int main()
{
    int n;
    printf("Enter a positive number: ");

    // Input validation
    if (scanf("%d", &n) != 1 || n < 0)
    {
        printf("Invalid input. Please enter a positive integer.\n");
        return 1;
    }

    fibonacci(n);
    return 0;
}
