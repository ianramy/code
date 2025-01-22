// Languages - C++ - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number.

#include <iostream>
#include <unordered_set>
#include <limits>

using namespace std;

// Function to calculate the sum of squares of digits
int sumOfSquares(int num)
{
    int sum = 0;
    while (num > 0)
    {
        int digit = num % 10;
        sum += digit * digit;
        num /= 10;
    }
    return sum;
}

// Function to determine if a number is a Happy Number
bool isHappyNumber(int num)
{
    unordered_set<int> seen;
    while (num != 1 && seen.find(num) == seen.end())
    {
        seen.insert(num);
        num = sumOfSquares(num);
    }
    return num == 1;
}

int main()
{
    int num;
    char choice;

    do
    {
        cout << "Enter a number: ";
        while (!(cin >> num))
        {
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            cout << "Invalid input. Please enter an integer: ";
        }

        if (num < 0)
        {
            cout << "Negative numbers cannot be Happy Numbers." << endl;
        }
        else
        {
            if (isHappyNumber(num))
            {
                cout << num << " is a Happy Number." << endl;
            }
            else
            {
                cout << num << " is not a Happy Number." << endl;
            }
        }

        cout << "Would you like to try another number? (y/n): ";
        cin >> choice;
        cin.ignore(numeric_limits<streamsize>::max(), '\n');

    } while (choice == 'y' || choice == 'Y');

    cout << "Exiting program. Goodbye!" << endl;
    return 0;
}
