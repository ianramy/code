// Languages - C++ - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

#include <iostream>

int main()
{
    int n;
    std::cout << "Enter the number of elements: ";
    std::cin >> n;

    if (n <= 0)
    {
        std::cout << "Invalid number of elements.\n";
        return 1;
    }

    int *arr = new int[n];

    int sum = 0;

    for (int i = 0; i < n; i++)
    {
        std::cout << "Enter element " << i + 1 << ": ";
        std::cin >> arr[i];
        sum += arr[i];
    }

    float avg = static_cast<float>(sum) / n;
    std::cout << "Sum: " << sum << std::endl;
    std::cout << "Average: " << avg << std::endl;

    if (avg > 50)
    {
        std::cout << "Above average\n";
    }
    else if (avg < 50)
    {
        std::cout << "Below average\n";
    }
    else
    {
        std::cout << "Average\n";
    }

    delete[] arr;
    return 0;
}
