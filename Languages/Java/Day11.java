// Languages - Java - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

import java.util.Scanner;

// Class to calculate the product of two numbers
public class Day11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get first number
        System.out.print("Enter the first number: ");
        while (!scanner.hasNextInt()) {
            // Check if the input is an integer
            System.out.print("Invalid input. Please enter a valid integer: ");
            scanner.next();
        }
        int num1 = scanner.nextInt();

        // Get second number
        System.out.print("Enter the second number: ");
        while (!scanner.hasNextInt()) {
            // Check if the input is an integer
            System.out.print("Invalid input. Please enter a valid integer: ");
            scanner.next();
        }
        int num2 = scanner.nextInt();

        // Calculate and display the product
        int product = multiply(num1, num2);
        System.out.println("The product of " + num1 + " and " + num2 + " is " + product);

        scanner.close();
    }

    // Function to calculate the product of two numbers
    public static int multiply(int num1, int num2) {
        return num1 * num2;
    }
}
