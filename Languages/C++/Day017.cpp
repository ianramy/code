// Languages - C++ - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n.
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

#include <iostream>
#include <limits>

void fibonacci(int n)
{
    if (n < 0)
    {
        std::cout << "Please enter a positive integer.\n";
        return;
    }
    else if (n == 0)
    {
        std::cout << "Fibonacci sequence up to 0: 0\n";
        return;
    }

    int a = 0, b = 1, c;
    std::cout << "Fibonacci sequence up to " << n << ": " << a;

    if (n >= 1)
    {
        std::cout << ", " << b;
    }

    c = a + b;
    while (c <= n)
    {
        std::cout << ", " << c;
        a = b;
        b = c;
        c = a + b;
    }
    std::cout << std::endl;
}

int main()
{
    int n;
    std::cout << "Enter a positive number: ";

    // Input Validation
    if (!(std::cin >> n))
    {
        std::cout << "Invalid input. Please enter a positive integer.\n";
        return 1;
    }

    fibonacci(n);
    return 0;
}
