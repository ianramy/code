// Languages - C++ - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

#include <iostream>
#include <limits>
using namespace std;

int main()
{
    int num;

    while (true)
    {
        cout << "Enter a positive number: ";
        cin >> num;

        if (cin.fail())
        {
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            cout << "Invalid input. Please enter a valid number.\n";
            continue;
        }

        if (num > 0)
        {
            break;
        }
        else
        {
            cout << "The number must be positive. Please try again.\n";
        }
    }

    cout << "You entered: " << num << endl;
    return 0;
}
