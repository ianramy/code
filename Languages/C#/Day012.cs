// Languages - C# - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

using System;

class Program
{
    static void Main(string[] args)
    {
        // Get two valid numbers from the user
        int num1 = GetValidNumber("Enter the first number: ");
        int num2 = GetValidNumber("Enter the second number: ");

        // Call the function and print the result
        int largerNumber = GetLargerNumber(num1, num2);
        Console.WriteLine("The larger number is: " + largerNumber);
    }

    // Function to find the larger of two numbers
    static int GetLargerNumber(int a, int b)
    {
        return (a > b) ? a : b;
    }

    // Function to validate and get a numeric input from the user
    static int GetValidNumber(string prompt)
    {
        int number;
        while (true)
        {
            Console.Write(prompt);
            string input = Console.ReadLine();
            if (int.TryParse(input, out number))
            {
                return number;
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid integer.");
            }
        }
    }
}
