// Languages - C# - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

using System;

class Day7
{
    static void Main()
    {
        Console.WriteLine("Enter the number of elements: ");
        int n = Convert.ToInt32(Console.ReadLine());
        int[] arr = new int[n];
        int sum = 0;
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine("Enter element {0}: ", i + 1);
            arr[i] = Convert.ToInt32(Console.ReadLine());
            sum += arr[i];
        }
        double avg = (double)sum / n;
        Console.WriteLine("Sum: {0}", sum);
        Console.WriteLine("Average: {0}", avg);
        if (avg > 50)
        {
            Console.WriteLine("Above average");
        }
        else if (avg < 50)
        {
            Console.WriteLine("Below average");
        }
        else
        {
            Console.WriteLine("Average");
        }
    }
}
