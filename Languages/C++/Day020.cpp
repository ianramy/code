// Languages - C++ - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


#include <iostream>
#include <vector>
#include <limits>

// Bubble Sort function
void bubbleSort(std::vector<int> &arr)
{
    int n = arr.size();
    for (int i = 0; i < n - 1; i++)
    {
        for (int j = 0; j < n - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                std::swap(arr[j], arr[j + 1]);
            }
        }
    }
}

// Function to print the array
void printArray(const std::vector<int> &arr)
{
    for (int num : arr)
    {
        std::cout << num << " ";
    }
    std::cout << std::endl;
}

// Function to validate integer input
int getValidatedInput()
{
    int value;
    while (true)
    {
        std::cin >> value;
        if (std::cin.fail())
        {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            std::cout << "Invalid input. Please enter a valid integer: ";
        }
        else
        {
            return value;
        }
    }
}

int main()
{
    int n;

    // Ask user for the number of elements
    std::cout << "Enter the number of elements in the array: ";
    n = getValidatedInput();
    while (n <= 0)
    {
        std::cout << "Please enter a positive integer: ";
        n = getValidatedInput();
    }

    std::vector<int> arr(n);

    // Get array elements from user
    std::cout << "Enter " << n << " integers:\n";
    for (int i = 0; i < n; i++)
    {
        std::cout << "Element " << i + 1 << ": ";
        arr[i] = getValidatedInput();
    }

    // Sorting the array
    bubbleSort(arr);

    // Display sorted array
    std::cout << "\nSorted array: ";
    printArray(arr);

    return 0;
}
