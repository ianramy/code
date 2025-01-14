// Languages - C# - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

using System;
using System.Collections.Generic;

class Day018
{
    static void Main()
    {
        Console.Write("Enter a string: ");
        string input = Console.ReadLine();

        if (string.IsNullOrWhiteSpace(input))
        {
            Console.WriteLine("Error: Input cannot be empty.");
            return;
        }

        Console.WriteLine("\nCharacter occurrence in the input string:");
        Console.WriteLine(CountCharacters(input));
    }

    static string CountCharacters(string str)
    {
        Dictionary<char, int> charCount = new Dictionary<char, int>();

        foreach (char c in str)
        {
            if (char.IsLetter(c))  // Ignore non-alphabetic characters
            {
                char lowerChar = char.ToLower(c);
                if (charCount.ContainsKey(lowerChar))
                    charCount[lowerChar]++;
                else
                    charCount[lowerChar] = 1;
            }
        }

        if (charCount.Count == 0)
            return "No alphabetic characters found.";

        string result = "";
        foreach (KeyValuePair<char, int> entry in charCount)
        {
            result += $"'{entry.Key}': {entry.Value}\n";
        }

        return result;
    }
}
