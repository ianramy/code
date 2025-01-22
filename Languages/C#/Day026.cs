// Languages - C# - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


using System;
using System.Collections.Generic;

class Program
{
    // Function to determine if a number is a Happy Number
    static bool IsHappyNumber(int num)
    {
        HashSet<int> seenNumbers = new HashSet<int>();
        while (num != 1 && seenNumbers.Add(num))
        {
            num = SumOfSquares(num);
        }
        return num == 1;
    }

    // Function to calculate the sum of squares of digits
    static int SumOfSquares(int num)
    {
        int sum = 0;
        while (num > 0)
        {
            int digit = num % 10;
            sum += digit * digit;
            num /= 10;
        }
        return sum;
    }

    static void Main()
    {
        while (true)
        {
            Console.Write("Enter a number (or type 'exit' to quit): ");
            string input = Console.ReadLine();

            if (input.ToLower() == "exit")
            {
                Console.WriteLine("Exiting program. Goodbye!");
                break;
            }

            if (int.TryParse(input, out int num))
            {
                if (num < 0)
                {
                    Console.WriteLine("Negative numbers cannot be Happy Numbers.");
                }
                else
                {
                    Console.WriteLine($"{num} is {(IsHappyNumber(num) ? "a Happy Number." : "not a Happy Number.")}");
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid integer.");
            }
        }
    }
}
