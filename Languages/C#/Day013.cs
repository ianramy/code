// Languages - C# - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

using System;

namespace Day013
{
    class Program
    {
        // Function to calculate the sum of an array
        static int SumOfArray(int[] arr)
        {
            int sum = 0;
            foreach (int num in arr)
            {
                sum += num;
            }
            return sum;
        }

        static void Main(string[] args)
        {
            // Prompt the user for the number of elements
            Console.WriteLine("Enter the number of elements in the array:");
            if (!int.TryParse(Console.ReadLine(), out int n) || n <= 0)
            {
                Console.WriteLine("Please enter a valid positive integer for the number of elements.");
                return;
            }

            // Initialize the array
            int[] arr = new int[n];

            // Prompt the user for array elements
            Console.WriteLine($"Enter {n} integers:");
            for (int i = 0; i < n; i++)
            {
                Console.Write($"Element {i + 1}: ");
                while (!int.TryParse(Console.ReadLine(), out arr[i]))
                {
                    Console.WriteLine("Invalid input. Please enter an integer:");
                }
            }

            // Calculate and display the sum
            int result = SumOfArray(arr);
            Console.WriteLine($"The sum of the array elements is: {result}");
        }
    }
}
