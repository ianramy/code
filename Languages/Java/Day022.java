// Languages - Java - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


import java.util.LinkedHashSet;
import java.util.Scanner;

public class Day022 {
    // Removes duplicate characters while preserving the original order.
    public static String removeDuplicates(String input) {
        if (input == null || input.isEmpty()) {
            return input;
        }
        LinkedHashSet<Character> set = new LinkedHashSet<>();
        StringBuilder result = new StringBuilder();
        for (char c : input.toCharArray()) {
            if (set.add(c)) {
                result.append(c);
            }
        }
        return result.toString();
    }

    // Get user input and display the result
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a string:");
        String input = scanner.nextLine();
        if (input.isEmpty()) {
            System.out.println("Input cannot be empty.");
            scanner.close();
            return;
        }
        String result = removeDuplicates(input);
        System.out.println("String after removing duplicates: " + result);
        scanner.close();
    }
}
