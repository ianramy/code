// Languages - Java - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

import java.util.Scanner;
import java.util.stream.IntStream;

public class Day013 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to enter the number of elements
        System.out.println("Enter the number of elements in the array:");
        int n;
        while (true) {
            try {
                n = Integer.parseInt(scanner.nextLine());
                if (n <= 0) {
                    System.out.println("Please enter a positive integer.");
                } else {
                    break;
                }
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a positive integer.");
            }
        }

        // Prompt the user to enter array elements
        int[] numbers = new int[n];
        System.out.println("Enter " + n + " numbers:");
        for (int i = 0; i < n; i++) {
            while (true) {
                try {
                    numbers[i] = Integer.parseInt(scanner.nextLine());
                    break;
                } catch (NumberFormatException e) {
                    System.out.println("Invalid input. Please enter an integer:");
                }
            }
        }

        // Calculate and display the sum
        System.out.println("Sum of all elements in the array: " + sumOfArray(numbers));
        scanner.close();
    }

    // Function to calculate the sum of an array
    public static int sumOfArray(int[] numbers) {
        return IntStream.of(numbers).sum();
    }
}
