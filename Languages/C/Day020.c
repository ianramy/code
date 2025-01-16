// Languages - C - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


#include <stdio.h>
#include <stdlib.h>

// Bubble Sort function
void bubbleSort(int arr[], int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        for (int j = 0; j < n - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main()
{
    int n;

    // Ask user for the number of elements
    printf("Enter the number of elements in the array: ");
    while (scanf("%d", &n) != 1 || n <= 0)
    {
        printf("Invalid input. Please enter a positive integer: ");
        while (getchar() != '\n')
            ;
    }

    // Allocate memory for the array
    int *arr = (int *)malloc(n * sizeof(int));
    if (arr == NULL)
    {
        printf("Memory allocation failed\n");
        return 1;
    }

    // Get array elements from user
    printf("Enter %d integers:\n", n);
    for (int i = 0; i < n; i++)
    {
        printf("Element %d: ", i + 1);
        while (scanf("%d", &arr[i]) != 1)
        {
            printf("Invalid input. Please enter an integer for element %d: ", i + 1);
            while (getchar() != '\n')
                ;
        }
    }

    // Sorting the array
    bubbleSort(arr, n);

    // Display sorted array
    printf("\nSorted array: ");
    for (int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");

    // Free allocated memory
    free(arr);
    return 0;
}
