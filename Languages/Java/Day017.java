// Languages - Java - Day 17
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that generates the Fibonacci sequence up to a given number n. 
// The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

import java.util.Scanner;

public class Day017 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a positive number: ");

        // Input Validation
        if (sc.hasNextInt()) {
            int n = sc.nextInt();
            if (n >= 0) {
                System.out.println("Fibonacci sequence up to " + n + ":");
                fibonacciUpToN(n);
            } else {
                System.out.println("Please enter a positive integer.");
            }
        } else {
            System.out.println("Invalid input. Please enter a positive integer.");
        }
        sc.close();
    }

    // Generates Fibonacci sequence up to the given number n
    public static void fibonacciUpToN(int n) {
        int a = 0, b = 1;

        if (n == 0) {
            System.out.print("0");
            return;
        }

        System.out.print(a + " ");
        while (b <= n) {
            System.out.print(b + " ");
            int sum = a + b;
            a = b;
            b = sum;
        }
        System.out.println();
    }
}
