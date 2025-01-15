// Languages - C++ - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


#include <iostream>
#include <limits>
using namespace std;

// Function to check if a number is a Perfect Number
bool isPerfect(int num)
{
    if (num <= 0)
        return false; // Perfect numbers must be positive integers

    int sum = 0;
    // Loop only up to num / 2 for optimization
    for (int i = 1; i <= num / 2; ++i)
    {
        if (num % i == 0)
        {
            sum += i;
        }
    }
    return sum == num;
}

// Function to validate user input
int getValidInput()
{
    int num;
    while (true)
    {
        cout << "Enter a positive integer to check if it's a Perfect Number: ";
        cin >> num;

        if (cin.fail() || num <= 0)
        {
            cout << "⚠️ Invalid input. Please enter a positive integer." << endl;
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
        }
        else
        {
            return num;
        }
    }
}

int main()
{
    int num = getValidInput();

    if (isPerfect(num))
    {
        cout << "🎉 " << num << " is a Perfect Number!" << endl;
    }
    else
    {
        cout << "❌ " << num << " is not a Perfect Number." << endl;
    }

    return 0;
}
