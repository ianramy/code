// Languages - C# - Day 6
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that initializes an array of integers, iterates through it, and prints each element.

using System;

class Day6
{
    static void Main()
    {
        int[] numbers = { 1, 2, 3, 4, 5 };

        for (int i = 0; i < numbers.Length; i++)
        {
            Console.WriteLine(numbers[i]);
        }
    }
}
