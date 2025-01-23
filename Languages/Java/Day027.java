// Languages - Java - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Day027 {
    // Function to count vowels in a given string using HashSet for better performance
    public static int countVowels(String input) {
        Set<Character> vowels = new HashSet<>();
        for (char c : "aeiou".toCharArray()) {
            vowels.add(c);
        }

        int count = 0;
        for (char c : input.toLowerCase().toCharArray()) {
            if (vowels.contains(c)) {
                count++;
            }
        }
        return count;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Enter a string to count vowels (or type 'exit' to quit):");
            String input = scanner.nextLine().trim();

            if (input.equalsIgnoreCase("exit")) {
                System.out.println("Exiting program. Goodbye!");
                break;
            }

            if (input.isEmpty()) {
                System.out.println("Input cannot be empty. Please enter a valid string.");
                continue;
            }

            int vowelCount = countVowels(input);
            System.out.println("Number of vowels in the given string: " + vowelCount);
        }

        scanner.close();
    }
}
