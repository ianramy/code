// Languages - Java - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

import java.util.Scanner;

public class Day4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number to calculate its factorial: ");

        if (!sc.hasNextInt()) {
            System.out.println("Invalid input. Please enter a valid integer.");
            sc.close();
            return;
        }

        int num = sc.nextInt();
        if (num < 0) {
            System.out.println("Factorial is not defined for negative numbers.");
        } else if (num > 20) {
            System.out.println("Input too large! Factorial exceeds the limit of int.");
        } else {
            System.out.println("Factorial of " + num + " is: " + factorial(num));
        }

        sc.close();
    }

    public static long factorial(int num) {
        if (num == 0) {
            return 1;
        }
        return num * factorial(num - 1);
    }
}
