// Languages - Java - Day 3
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a program that checks if a number is positive, negative, or zero.

import java.util.Scanner;

public class Day3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number: ");
        int number = scanner.nextInt();
        scanner.close();

        if (number > 0) {
            System.out.println("The number is positive.");
        } else if (number < 0) {
            System.out.println("The number is negative.");
        } else {
            System.out.println("The number is zero.");
        }
    }
}
