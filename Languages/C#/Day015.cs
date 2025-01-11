// Languages - C# - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

using System;
using System.Text.RegularExpressions;

namespace Day015
{
    class Program
    {
        static void Main(string[] args)
        {
            // Ask the user for a string
            Console.WriteLine("Enter a string: ");
            string sampleString = Console.ReadLine()?.Trim();

            // Input validation
            if (string.IsNullOrEmpty(sampleString))
            {
                Console.WriteLine("Invalid input. Please enter a non-empty string.");
            }
            else
            {
                // Call the function and print the result
                if (IsPalindrome(sampleString))
                {
                    Console.WriteLine($"\"{sampleString}\" is a palindrome.");
                }
                else
                {
                    Console.WriteLine($"\"{sampleString}\" is not a palindrome.");
                }
            }
        }

        static bool IsPalindrome(string str)
        {
            // Normalize the string: remove non-alphanumeric characters and convert to lowercase
            string normalizedStr = Regex.Replace(str, @"[^a-zA-Z0-9]", "").ToLower();

            // Input validation after normalization
            if (string.IsNullOrEmpty(normalizedStr))
            {
                return false;
            }

            int i = 0;
            int j = normalizedStr.Length - 1;

            // Two-pointer technique to compare characters
            while (i < j)
            {
                if (normalizedStr[i] != normalizedStr[j])
                {
                    return false;
                }

                i++;
                j--;
            }

            return true;
        }
    }
}
