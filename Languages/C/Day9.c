// Languages - C - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

#include <stdio.h>

void calculateSumInRange(int start, int end)
{
    int sum = 0;
    for (int i = start; i <= end; i++)
    {
        printf("%d\n", i);
        sum += i;
    }
    printf("The sum of the numbers from %d to %d is: %d\n", start, end, sum);
}

int main()
{
    calculateSumInRange(1, 10);
    return 0;
}
