// Languages - C# - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

using System;

namespace Day014
{
    class Program
    {
        // Function to reverse a string
        static string ReverseString(string str)
        {
            char[] charArray = str.ToCharArray();
            Array.Reverse(charArray);
            return new string(charArray);
        }

        // Function to validate input
        static bool IsValidInput(string input)
        {
            return !string.IsNullOrWhiteSpace(input);
        }

        static void Main(string[] args)
        {
            string str;

            // Input validation loop
            do
            {
                Console.Write("Enter a non-empty string: ");
                str = Console.ReadLine();

                if (!IsValidInput(str))
                {
                    Console.WriteLine("Invalid input. Please enter a non-empty string.");
                }

            } while (!IsValidInput(str));

            // Call the ReverseString function and print the result
            Console.WriteLine("Reversed string: " + ReverseString(str));
        }
    }
}
