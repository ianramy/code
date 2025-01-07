// Languages - C# - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

using System;

// Namespace declaration
namespace CSharp_Day11
{
    class Day11
    {
        static void Main(string[] args)
        {
            // Get valid input from the user
            int num1 = GetValidNumber("Enter the first number: ");
            int num2 = GetValidNumber("Enter the second number: ");

            // Calculate and display the result
            Console.WriteLine("The product of the two numbers is: " + Multiply(num1, num2));
        }

        // Function to calculate the product of two numbers
        static int Multiply(int num1, int num2)
        {
            return num1 * num2;
        }

        // Function to get a valid integer from the user
        static int GetValidNumber(string prompt)
        {
            int number;
            while (true)
            { // Loop until a valid integer is entered
                Console.Write(prompt);
                string input = Console.ReadLine();
                if (int.TryParse(input, out number))
                {
                    return number;
                }
                else
                { // If the input is not a valid integer, display an error message
                    Console.WriteLine("Invalid input. Please enter a valid integer.");
                }
            }
        }
    }
}
