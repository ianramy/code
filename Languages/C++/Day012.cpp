// Languages - C++ - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

#include <iostream>
#include <limits>

using namespace std;

// Function to find the larger of two numbers
int larger(int a, int b)
{
    return (a > b) ? a : b;
}

// Function to get a valid integer from the user
int getValidNumber(const string &prompt)
{
    int num;
    while (true)
    {
        cout << prompt;
        cin >> num;
        if (cin.fail())
        {
            // Clear error flag and discard invalid input
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            cout << "Invalid input. Please enter a valid integer." << endl;
        }
        else
        {
            return num;
        }
    }
}

int main()
{
    // Get two valid integers from the user
    int num1 = getValidNumber("Enter the first number: ");
    int num2 = getValidNumber("Enter the second number: ");

    // Call the function and print the result
    int result = larger(num1, num2);
    cout << "The larger number is: " << result << endl;

    return 0;
}
