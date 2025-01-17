// Languages - C# - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


using System;

class Program
{
    // Function to calculate GCD using Euclidean Algorithm
    static int GCD(int a, int b)
    {
        a = Math.Abs(a);
        b = Math.Abs(b);

        if (a == 0 && b == 0)
        {
            return -1;
        }

        while (b != 0)
        {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }

    // Function for input validation
    static int GetValidInteger(string prompt)
    {
        int number;
        Console.Write(prompt);
        while (!int.TryParse(Console.ReadLine(), out number))
        {
            Console.Write("Invalid input. Please enter a valid integer: ");
        }
        return number;
    }

    static void Main()
    {
        // Input handling
        int num1 = GetValidInteger("Enter the first integer: ");
        int num2 = GetValidInteger("Enter the second integer: ");

        // GCD Calculation
        int result = GCD(num1, num2);
        if (result == -1)
        {
            Console.WriteLine("GCD is undefined for inputs 0 and 0.");
        }
        else
        {
            Console.WriteLine($"The GCD of {num1} and {num2} is {result}");
        }
    }
}
