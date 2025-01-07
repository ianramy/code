// Languages - C# - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

using System;

namespace Day9
{
    class Program
    {
        static void Main(string[] args)
        {
            CalculateSumInRange(1, 10);
        }

        static void CalculateSumInRange(int start, int end)
        {
            int sum = 0;
            for (int i = start; i <= end; i++)
            {
                Console.WriteLine(i);
                sum += i;
            }
            Console.WriteLine($"The sum of the numbers from {start} to {end} is: {sum}");
        }
    }
}
