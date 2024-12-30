// Languages - C# - Day 3
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that checks if a number is positive, negative, or zero.

using System;

namespace Day3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number: ");
            int number = Convert.ToInt32(Console.ReadLine());

            if (number > 0)
            {
                Console.WriteLine("The number is positive.");
            }
            else if (number < 0)
            {
                Console.WriteLine("The number is negative.");
            }
            else
            {
                Console.WriteLine("The number is zero.");
            }
        }
    }
}
