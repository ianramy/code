// Languages - Java - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

import java.util.Scanner;

public class Day012 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get two valid numbers from the user
        int num1 = getValidNumber(scanner, "Enter the first number: ");
        int num2 = getValidNumber(scanner, "Enter the second number: ");

        // Find the larger number
        int largerNumber = findLarger(num1, num2);

        // Print the result
        System.out.println("The larger number is: " + largerNumber);
        scanner.close();
    }

    // Function to find the larger of two numbers
    public static int findLarger(int a, int b) {
        return Math.max(a, b);
    }

    // Function to get a valid integer input from the user
    public static int getValidNumber(Scanner scanner, String prompt) {
        while (true) {
            try {
                System.out.print(prompt);
                return Integer.parseInt(scanner.nextLine());
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a valid integer.");
            }
        }
    }
}
