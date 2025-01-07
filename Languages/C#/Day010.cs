// Languages - C# - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

using System;

class Day10
{
    static void Main()
    {
        int number = 0;

        while (true)
        {
            Console.Write("Enter a positive number: ");
            string input = Console.ReadLine();

            if (int.TryParse(input, out number))
            {
                
                if (number > 0)
                {
                    break;
                }
                else
                {
                    Console.WriteLine("The number must be positive. Please try again.");
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid number.");
            }
        }

        Console.WriteLine("You entered: " + number);
    }
}
