// Languages - C - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

#include <stdio.h>
#include <stdlib.h>

// Function to calculate the sum of an array
int sumArray(int arr[], int size)
{
    int sum = 0;
    for (int i = 0; i < size; i++)
    {
        sum += arr[i];
    }
    return sum;
}

int main()
{
    int size;

    // Prompt the user for the size of the array
    printf("Enter the number of elements in the array: ");
    if (scanf("%d", &size) != 1 || size <= 0)
    {
        printf("Invalid input. Please enter a positive integer.\n");
        return 1;
    }

    // Allocate memory for the array
    int *arr = (int *)malloc(size * sizeof(int));
    if (arr == NULL)
    {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Prompt the user for the array elements
    printf("Enter %d integers:\n", size);
    for (int i = 0; i < size; i++)
    {
        if (scanf("%d", &arr[i]) != 1)
        {
            printf("Invalid input. Please enter an integer.\n");
            free(arr);
            return 1;
        }
    }

    // Calculate the sum and display the result
    int result = sumArray(arr, size);
    printf("The sum of the array elements is: %d\n", result);

    // Free allocated memory
    free(arr);
    return 0;
}
