// Languages - C - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


#include <stdio.h>

// Recursive function to compute power
double power(double x, int n)
{
    if (n == 0)
    {
        return 1;
    }
    else if (n < 0)
    {
        return 1 / power(x, -n);
    }
    else
    {
        return x * power(x, n - 1);
    }
}

int main()
{
    double base;
    int exponent;

    // Get the base number and exponent from the user
    printf("Enter the base number: ");
    if (scanf("%lf", &base) != 1)
    {
        printf("Invalid input for base number. Please enter a numeric value.\n");
        return 1;
    }

    printf("Enter the exponent: ");
    if (scanf("%d", &exponent) != 1)
    {
        printf("Invalid input for exponent. Please enter an integer value.\n");
        return 1;
    }

    // Handle the special case of 0^0
    if (base == 0 && exponent == 0)
    {
        printf("0^0 is undefined.\n");
        return 1;
    }

    double result = power(base, exponent);
    printf("%.2f^%d = %.6f\n", base, exponent, result);

    return 0;
}
