// Languages - C# - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

using System;

class Day8
{
    static void Main()
    {
        Console.Write("Enter your first name: ");
        string firstName = Console.ReadLine()?.Trim();

        if (string.IsNullOrEmpty(firstName))
        {
            Console.WriteLine("First name cannot be empty.");
            return;
        }

        Console.Write("Enter your last name: ");
        string lastName = Console.ReadLine()?.Trim();

        if (string.IsNullOrEmpty(lastName))
        {
            Console.WriteLine("Last name cannot be empty.");
            return;
        }

        string fullName = $"{firstName} {lastName}";

        char firstInitial = char.ToUpper(firstName[0]);
        char lastInitial = char.ToUpper(lastName[0]);

        string greetingMessage = $"Hello, {fullName}! Your initials are {firstInitial}.{lastInitial}.";

        Console.WriteLine(greetingMessage);
    }
}
