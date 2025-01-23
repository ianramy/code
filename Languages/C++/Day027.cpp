// Languages - C++ - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


#include <iostream>
#include <string>
#include <unordered_set>
#include <cctype>

using namespace std;

// Function to count vowels in a given string
int countVowels(const string &input)
{
    unordered_set<char> vowels = {'a', 'e', 'i', 'o', 'u'};
    int count = 0;
    for (char ch : input)
    {
        if (vowels.count(tolower(ch)))
        {
            count++;
        }
    }
    return count;
}

int main()
{
    string input;
    char choice;

    do
    {
        cout << "Enter a string to count the number of vowels: ";
        getline(cin, input);

        // Input validation
        if (input.empty())
        {
            cout << "Invalid input. Please enter a non-empty string." << endl;
            continue;
        }

        int vowelCount = countVowels(input);
        cout << "The number of vowels in the given string is: " << vowelCount << endl;

        cout << "Would you like to try another string? (y/n): ";
        cin >> choice;
        cin.ignore();

    } while (tolower(choice) == 'y');

    cout << "Exiting program. Goodbye!" << endl;
    return 0;
}
