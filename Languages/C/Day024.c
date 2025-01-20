// Languages - C - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


#include <stdio.h>
#include <stdbool.h>

bool isPrime(int num)
{
    if (num < 2)
        return false;
    if (num == 2 || num == 3)
        return true;
    if (num % 2 == 0 || num % 3 == 0)
        return false;

    for (int i = 5; i * i <= num; i += 6)
    {
        if (num % i == 0 || num % (i + 2) == 0)
            return false;
    }
    return true;
}

void listPrimes(int n)
{
    if (n < 0)
    {
        printf("Please enter a non-negative number.\n");
        return;
    }

    int found = 0;
    printf("Prime numbers up to %d: ", n);
    for (int i = 2; i <= n; i++)
    {
        if (isPrime(i))
        {
            if (found > 0)
            {
                printf(", ");
            }
            printf("%d", i);
            found++;
        }
    }
    if (found == 0)
    {
        printf("No prime numbers found.");
    }
    printf("\n");
}

int main()
{
    int n;
    printf("Enter a number: ");

    if (scanf("%d", &n) != 1)
    {
        printf("Invalid input. Please enter a valid integer.\n");
        while (getchar() != '\n')
            ; // Clear input buffer
        return 1;
    }

    if (n < 0)
    {
        printf("Please enter a non-negative number.\n");
    }
    else
    {
        listPrimes(n);
    }

    return 0;
}
