// Languages - C# - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


using System;
using System.Collections.Generic;
using System.Text;

// removeDuplicates removes duplicate characters from a string while preserving the original order.
static string removeDuplicates(string input) {
    HashSet<char> seen = new HashSet<char>();
    StringBuilder result = new StringBuilder();
    foreach (char ch in input) {
        if (!seen.Contains(ch)) {
            seen.Add(ch);
            result.Append(ch);
        }
    }
    return result.ToString();
}

public static void Main(string[] args) {
    Console.WriteLine("Enter a string:");
    string input = Console.ReadLine();
    if (string.IsNullOrEmpty(input)) {
        Console.WriteLine("Input cannot be empty.");
        return;
    }
    Console.WriteLine("String after removing duplicates: " + removeDuplicates(input));
}
