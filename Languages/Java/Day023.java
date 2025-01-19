// Languages - Java - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


import java.util.Scanner;

public class Day023 {
    // Recursive function to compute the power of a number
    public static double power(double base, int exponent) {
        if (exponent == 0) {
            return 1.0;
        } else if (exponent < 0) {
            return 1.0 / power(base, -exponent);
        } else {
            return base * power(base, exponent - 1);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get the base and exponent from the user
        System.out.println("Enter the base number:");
        if (scanner.hasNextDouble()) {
            double base = scanner.nextDouble();
            System.out.println("Enter the exponent:");
            if (scanner.hasNextInt()) {
                int exponent = scanner.nextInt();
                
                if (base == 0 && exponent == 0) {
                    System.out.println("0^0 is undefined.");
                } else {
                    double result = power(base, exponent);
                    System.out.printf("%.2f^%d = %.6f\n", base, exponent, result);
                }
            } else {
                System.out.println("Invalid input for exponent.");
            }
        } else {
            System.out.println("Invalid input for base.");
        }
        scanner.close();
    }
}
