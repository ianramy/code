// Languages - C# - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


using System;

namespace CSharp_Day019
{
    class Day019
    {
        static void Main(string[] args)
        {
            int number = GetValidInput();

            if (IsPerfectNumber(number))
            {
                Console.WriteLine($"🎉 {number} is a Perfect Number!");
            }
            else
            {
                Console.WriteLine($"❌ {number} is not a Perfect Number.");
            }
        }

        // Function to check if a number is a Perfect Number
        static bool IsPerfectNumber(int num)
        {
            if (num <= 0) return false;  // Perfect numbers must be positive integers

            int sum = 0;
            // Loop only up to num / 2 for optimization
            for (int i = 1; i <= num / 2; i++)
            {
                if (num % i == 0)
                {
                    sum += i;
                }
            }
            return sum == num;
        }

        // Function to validate user input
        static int GetValidInput()
        {
            int num;
            while (true)
            {
                Console.Write("Enter a positive integer to check if it's a Perfect Number: ");
                if (int.TryParse(Console.ReadLine(), out num) && num > 0)
                {
                    return num;
                }
                else
                {
                    Console.WriteLine("⚠️ Invalid input. Please enter a positive integer.");
                }
            }
        }
    }
}
