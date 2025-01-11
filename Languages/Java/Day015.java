// Languages - Java - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

import java.util.Scanner;

public class Day015 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Ask the user for a string
        System.out.print("Enter a string: ");
        String input = scanner.nextLine().trim();

        // Input validation
        if (input.isEmpty()) {
            System.out.println("Invalid input. Please enter a non-empty string.");
        } else {
            // Check if the string is a palindrome
            if (isPalindrome(input)) {
                System.out.println("\"" + input + "\" is a palindrome.");
            } else {
                System.out.println("\"" + input + "\" is not a palindrome.");
            }
        }

        scanner.close();
    }

    // Function to check if a string is a palindrome
    public static boolean isPalindrome(String str) {
        // Normalize the string: remove non-alphanumeric characters and convert to lowercase
        String normalizedStr = str.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();

        // Two-pointer technique to compare characters
        int i = 0;
        int j = normalizedStr.length() - 1;

        while (i < j) {
            if (normalizedStr.charAt(i) != normalizedStr.charAt(j)) {
                return false;
            }
            i++;
            j--;
        }
        return true;
    }
}
