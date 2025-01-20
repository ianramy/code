// Languages - C# - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


using System;
using System.Collections.Generic;

class Program
{
    static bool IsPrime(int num)
    {
        if (num < 2) return false;
        if (num == 2 || num == 3) return true;
        if (num % 2 == 0 || num % 3 == 0) return false;

        for (int i = 5; i * i <= num; i += 6)
        {
            if (num % i == 0 || num % (i + 2) == 0) return false;
        }
        return true;
    }

    static List<int> ListPrimes(int n)
    {
        List<int> primes = new List<int>();
        if (n < 2) return primes;

        for (int i = 2; i <= n; i++)
        {
            if (IsPrime(i))
            {
                primes.Add(i);
            }
        }
        return primes;
    }

    static void Main(string[] args)
    {
        Console.Write("Enter a number: ");
        string input = Console.ReadLine()?.Trim();

        if (string.IsNullOrEmpty(input) || !int.TryParse(input, out int n))
        {
            Console.WriteLine("Invalid input. Please enter a valid non-negative integer.");
            return;
        }

        if (n < 0)
        {
            Console.WriteLine("Please enter a non-negative number.");
            return;
        }

        List<int> primes = ListPrimes(n);
        if (primes.Count == 0)
        {
            Console.WriteLine($"No prime numbers found up to {n}.");
        }
        else
        {
            Console.WriteLine($"Prime numbers up to {n}: {string.Join(", ", primes)}");
        }
    }
}
