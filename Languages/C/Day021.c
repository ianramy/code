// Languages - C - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


#include <stdio.h>
#include <stdlib.h>

// Function to calculate GCD using Euclidean Algorithm
int gcd(int a, int b)
{
    a = abs(a);
    b = abs(b);

    if (a == 0 && b == 0)
    {
        return -1;
    }

    while (b != 0)
    {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

// Function to validate input
int getValidInteger(const char *prompt)
{
    int num;
    printf("%s", prompt);
    while (scanf("%d", &num) != 1)
    {
        printf("Invalid input. Please enter a valid integer: ");
        while (getchar() != '\n')
            ;
    }
    return num;
}

int main()
{
    int num1 = getValidInteger("Enter the first integer: ");
    int num2 = getValidInteger("Enter the second integer: ");

    int result = gcd(num1, num2);
    if (result == -1)
    {
        printf("GCD is undefined for inputs 0 and 0.\n");
    }
    else
    {
        printf("The GCD of %d and %d is %d\n", num1, num2, result);
    }

    return 0;
}
