// Languages - C# - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

using System;

namespace CSharp_Day4
{
    class Day4
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number to calculate its factorial:");

            if (!int.TryParse(Console.ReadLine(), out int num) || num < 0)
            {
                Console.WriteLine("Invalid input. Please enter a non-negative integer.");
                return;
            }

            if (num > 20)
            {
                Console.WriteLine("Input too large! Factorial exceeds the range of supported integers.");
                return;
            }

            Console.WriteLine($"Factorial of {num} is {Factorial(num)}");
        }

        static long Factorial(int num)
        {
            if (num == 0)
            {
                return 1;
            }
            return num * Factorial(num - 1);
        }
    }
}
