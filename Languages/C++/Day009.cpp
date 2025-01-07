// Languages - C++ - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

#include <iostream>

void calculateSumInRange(int start, int end)
{
    int sum = 0;
    for (int i = start; i <= end; i++)
    {
        std::cout << i << std::endl;
        sum += i;
    }
    std::cout << "The sum of the numbers from " << start << " to " << end << " is: " << sum << std::endl;
}

int main()
{
    calculateSumInRange(1, 10);
}
