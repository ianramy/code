// Languages - C# - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


using System;
using System.Text;

class Program
{
    static string DecimalToBinary(int n)
    {
        if (n == 0) return "0";

        bool isNegative = n < 0;
        int num = Math.Abs(n);
        StringBuilder binary = new StringBuilder();

        while (num > 0)
        {
            binary.Insert(0, num % 2);
            num /= 2;
        }

        if (isNegative)
        {
            binary.Insert(0, "-");
        }

        return binary.ToString();
    }

    static void Main()
    {
        Console.Write("Enter a decimal number: ");
        string input = Console.ReadLine()?.Trim();

        if (!int.TryParse(input, out int number))
        {
            Console.WriteLine("Invalid input. Please enter an integer.");
            return;
        }

        Console.WriteLine("Binary representation: " + DecimalToBinary(number));
    }
}
