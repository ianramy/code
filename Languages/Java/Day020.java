// Languages - Java - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


import java.util.Scanner;

public class Day020 {

    // Bubble Sort function
    public static int[] bubbleSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return arr;
    }

    // Function to print the array
    public static void printArray(int[] arr) {
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }

    // Function to get validated integer input
    public static int getValidatedInput(Scanner scanner) {
        while (!scanner.hasNextInt()) {
            System.out.print("Invalid input. Please enter a valid integer: ");
            scanner.next();
        }
        return scanner.nextInt();
    }

    // Main function
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Ask user for the number of elements
        System.out.print("Enter the number of elements in the array: ");
        int n = getValidatedInput(scanner);
        while (n <= 0) {
            System.out.print("Please enter a positive integer: ");
            n = getValidatedInput(scanner);
        }

        // Get array elements from the user
        int[] arr = new int[n];
        System.out.println("Enter " + n + " integers:");
        for (int i = 0; i < n; i++) {
            System.out.print("Element " + (i + 1) + ": ");
            arr[i] = getValidatedInput(scanner);
        }

        // Display original array
        System.out.println("\nOriginal array:");
        printArray(arr);

        // Sort the array
        bubbleSort(arr);

        // Display sorted array
        System.out.println("Sorted array:");
        printArray(arr);

        scanner.close();
    }
}
