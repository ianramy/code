// Languages - C# - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


using System;

namespace CSharp
{
    class Day020
    {
        static void Main(string[] args)
        {
            int n;

            // Ask user for the number of elements
            Console.Write("Enter the number of elements in the array: ");
            while (!int.TryParse(Console.ReadLine(), out n) || n <= 0)
            {
                Console.Write("Invalid input. Please enter a positive integer: ");
            }

            int[] arr = new int[n];

            // Get array elements from the user
            Console.WriteLine($"Enter {n} integers:");
            for (int i = 0; i < n; i++)
            {
                Console.Write($"Element {i + 1}: ");
                while (!int.TryParse(Console.ReadLine(), out arr[i]))
                {
                    Console.Write($"Invalid input. Please enter an integer for element {i + 1}: ");
                }
            }

            // Sort the array
            BubbleSort(arr);

            // Display sorted array
            Console.WriteLine("\nSorted array:");
            PrintArray(arr);
        }

        // Bubble Sort function
        static void BubbleSort(int[] arr)
        {
            int n = arr.Length;
            for (int i = 0; i < n - 1; i++)
            {
                for (int j = 0; j < n - i - 1; j++)
                {
                    if (arr[j] > arr[j + 1])
                    {
                        int temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }
        }

        // Print Array Elements
        static void PrintArray(int[] arr)
        {
            foreach (int item in arr)
            {
                Console.Write(item + " ");
            }
            Console.WriteLine();
        }
    }
}
