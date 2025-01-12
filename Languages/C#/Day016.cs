// Languages - C# - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

using System;

namespace Day016
{
    class Program
    {
        static void Main(string[] args)
        {
            PromptUser();
        }

        // Function to check if a number is an Armstrong Number
        static bool IsArmstrong(int num)
        {
            if (num < 0)
            {
                Console.WriteLine("Please enter a positive integer.");
                return false;
            }

            int sum = 0;
            int temp = num;
            int numDigits = num.ToString().Length;

            while (temp > 0)
            {
                int digit = temp % 10;
                sum += (int)Math.Pow(digit, numDigits);
                temp /= 10;
            }

            return sum == num;
        }

        // Function to prompt user input
        static void PromptUser()
        {
            Console.Write("Enter a positive integer to check if it's an Armstrong Number: ");
            string input = Console.ReadLine();

            if (int.TryParse(input, out int num) && num >= 0)
            {
                if (IsArmstrong(num))
                {
                    Console.WriteLine($"{num} is an Armstrong Number.");
                }
                else
                {
                    Console.WriteLine($"{num} is not an Armstrong Number.");
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid positive integer.");
            }
        }
    }
}
