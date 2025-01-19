// Languages - C# - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


using System;

class Program
{
    static double Power(double x, int n)
    { 
        // Recursive function to calculate the power of a number
        if (n == 0)
            return 1;
        else if (n < 0)
            return 1 / Power(x, -n);
        else
            return x * Power(x, n - 1);
    }

    static void Main()
    {
        // Main function to take input and display the result
        Console.Write("Enter the base number: ");
        if (!double.TryParse(Console.ReadLine(), out double baseNumber))
        {
            Console.WriteLine("Invalid input for base number. Please enter a valid number.");
            return;
        }

        Console.Write("Enter the exponent: ");
        if (!int.TryParse(Console.ReadLine(), out int exponent))
        {
            Console.WriteLine("Invalid input for exponent. Please enter an integer value.");
            return;
        }

        if (baseNumber == 0 && exponent == 0)
        {
            // 0^0 is undefined
            Console.WriteLine("0^0 is undefined.");
            return;
        }

        double result = Power(baseNumber, exponent);
        Console.WriteLine($"{baseNumber}^{exponent} = {result:F6}");
    }
}
