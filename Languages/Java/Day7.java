// Languages - Java - Day 7
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

import java.util.Scanner;

public class Day7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Enter the number of elements: ");
        int n = scanner.nextInt();
        if (n <= 0) {
            System.out.println("Invalid number of elements. Please enter a positive integer.");
            return;
        }

        int[] arr = new int[n];
        int sum = 0;

        for (int i = 0; i < n; i++) {
            System.out.println("Enter element " + (i + 1) + ": ");
            arr[i] = scanner.nextInt();
            sum += arr[i];
        }

        double avg = (double) sum / n;

        System.out.println("Sum: " + sum);
        System.out.printf("Average: %.2f%n", avg);

        if (avg > 50) {
            System.out.println("Above average");
        } else if (avg < 50) {
            System.out.println("Below average");
        } else {
            System.out.println("Average");
        }
    }
}
