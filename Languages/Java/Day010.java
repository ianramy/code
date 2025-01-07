// Languages - Java - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

import java.util.Scanner;

public class Day10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int number = 0;

        while (true) {
            System.out.print("Enter a positive number: ");

            if (scanner.hasNextInt()) {
                number = scanner.nextInt();

                if (number > 0) {
                    break;
                } else {
                    System.out.println("The number must be positive. Please try again.");
                }
            } else {
                System.out.println("Invalid input. Please enter a valid integer.");
                scanner.next();
            }
        }

        System.out.println("You entered: " + number);
        scanner.close();
    }
}
