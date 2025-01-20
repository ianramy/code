// Languages - C++ - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


#include <iostream>
#include <vector>
#include <limits>
using namespace std;

bool isPrime(int num)
{
    if (num < 2)
        return false;
    if (num == 2 || num == 3)
        return true;
    if (num % 2 == 0 || num % 3 == 0)
        return false;
    for (int i = 5; i * i <= num; i += 6)
    {
        if (num % i == 0 || num % (i + 2) == 0)
            return false;
    }
    return true;
}

vector<int> listPrimes(int n)
{
    vector<int> primes;
    if (n < 2)
    {
        return primes;
    }
    for (int i = 2; i <= n; i++)
    {
        if (isPrime(i))
        {
            primes.push_back(i);
        }
    }
    return primes;
}

int main()
{
    int n;
    cout << "Enter a number: ";

    // Handle non-integer input
    while (!(cin >> n))
    {
        cout << "Invalid input. Please enter a valid non-negative integer: ";
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
    }

    if (n < 0)
    {
        cout << "Please enter a non-negative number." << endl;
    }
    else
    {
        vector<int> primes = listPrimes(n);
        if (primes.empty())
        {
            cout << "No prime numbers found up to " << n << "." << endl;
        }
        else
        {
            cout << "Prime numbers up to " << n << ": ";
            for (size_t i = 0; i < primes.size(); i++)
            {
                cout << primes[i];
                if (i < primes.size() - 1)
                    cout << ", ";
            }
            cout << endl;
        }
    }
    return 0;
}
