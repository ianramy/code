// Languages - C++ - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

#include <iostream>
#include <vector>
#include <limits>

int sumArray(const std::vector<int> &arr)
{
    int sum = 0;
    for (int num : arr)
    {
        sum += num;
    }
    return sum;
}

int main()
{
    int n;

    // Prompt the user for the number of elements
    std::cout << "Enter the number of elements in the array: ";
    while (!(std::cin >> n) || n <= 0)
    {
        std::cout << "Please enter a valid positive integer: ";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    // Read the elements of the array
    std::vector<int> arr;
    std::cout << "Enter " << n << " integers:\n";
    for (int i = 0; i < n; i++)
    {
        int element;
        while (!(std::cin >> element))
        {
            std::cout << "Invalid input. Please enter an integer: ";
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
        arr.push_back(element);
    }

    // Calculate and display the sum of the array
    int result = sumArray(arr);
    std::cout << "The sum of the array is: " << result << std::endl;

    return 0;
}
