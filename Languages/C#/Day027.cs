// Languages - C# - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string


using System;
using System.Collections.Generic;

class Program
{
    // Function to count vowels in a given string
    static int CountVowels(string input)
    {
        HashSet<char> vowels = new HashSet<char> { 'a', 'e', 'i', 'o', 'u' };
        int count = 0;

        foreach (char ch in input.ToLower())
        {
            if (vowels.Contains(ch))
            {
                count++;
            }
        }
        return count;
    }

    static void Main()
    {
        while (true)
        {
            Console.WriteLine("Enter a string to count the number of vowels (or type 'exit' to quit):");
            string input = Console.ReadLine();

            if (string.IsNullOrEmpty(input))
            {
                Console.WriteLine("Invalid input. Please enter a non-empty string.");
                continue;
            }

            if (input.ToLower() == "exit")
            {
                Console.WriteLine("Exiting program. Goodbye!");
                break;
            }

            int vowelCount = CountVowels(input);
            Console.WriteLine($"The number of vowels in the given string is: {vowelCount}");
        }
    }
}
