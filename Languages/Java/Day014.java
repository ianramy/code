// Languages - Java - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

import java.util.Scanner;

public class Day014 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String input;

        // Input validation loop
        while (true) {
            System.out.println("Enter a non-empty string to reverse:");
            input = scanner.nextLine().trim();

            if (!input.isEmpty()) {
                break;
            } else {
                System.out.println("Invalid input. Please enter a non-empty string.");
            }
        }

        // Call the reverseString function and print the result
        String reversed = reverseString(input);
        System.out.println("Reversed string: " + reversed);

        scanner.close();
    }

    // Function to reverse a string
    public static String reverseString(String str) {
        return new StringBuilder(str).reverse().toString();
    }
}
