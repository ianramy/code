// Languages - C - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n;
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    int *arr = (int *)malloc(n * sizeof(int));
    if (arr == NULL)
    {
        printf("Memory allocation failed\n");
        return 1;
    }

    int sum = 0;

    for (int i = 0; i < n; i++)
    {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
        sum += arr[i];
    }

    float avg = (float)sum / n;
    printf("Sum: %d\n", sum);
    printf("Average: %.2f\n", avg);

    if (avg > 0)
    {
        printf("Above average\n");
    }
    else if (avg < 0)
    {
        printf("Below average\n");
    }
    else
    {
        printf("Average is zero\n");
    }

    free(arr);
    return 0;
}
