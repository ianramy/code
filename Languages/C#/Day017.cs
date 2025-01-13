// Languages - C# - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n.
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

using System;

namespace Day017
{
    class Program
    {
        // Function to generate Fibonacci sequence up to n
        static void Fibonacci(int n)
        {
            if (n < 0)
            {
                Console.WriteLine("Please enter a positive integer.");
                return;
            }
            else if (n == 0)
            {
                Console.WriteLine("Fibonacci sequence up to 0: 0");
                return;
            }

            int a = 0, b = 1;

            Console.Write($"Fibonacci sequence up to {n}: {a}");

            if (n >= 1)
                Console.Write($", {b}");

            int c = a + b;
            while (c <= n)
            {
                Console.Write($", {c}");
                a = b;
                b = c;
                c = a + b;
            }

            Console.WriteLine(); // Move to the next line after printing the sequence
        }

        static void Main(string[] args)
        {
            Console.Write("Enter a positive number: ");
            string input = Console.ReadLine();

            // Input validation
            if (int.TryParse(input, out int n) && n >= 0)
            {
                Fibonacci(n);
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a positive integer.");
            }
        }
    }
}
