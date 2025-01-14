// Languages - Java - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Day018 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String input = scanner.nextLine().trim();

        if (input.isEmpty()) {
            System.out.println("Error: Input cannot be empty.");
            return;
        }

        Map<Character, Integer> result = charCount(input);

        if (result.isEmpty()) {
            System.out.println("No alphabetic characters found in the input.");
            return;
        }

        System.out.println("\nCharacter occurrence in the input string:");
        for (Map.Entry<Character, Integer> entry : result.entrySet()) {
            System.out.println("'" + entry.getKey() + "': " + entry.getValue());
        }

        scanner.close();
    }

    public static Map<Character, Integer> charCount(String str) {
        Map<Character, Integer> charCount = new HashMap<>();
        str = str.toLowerCase();

        for (char c : str.toCharArray()) {
            if (Character.isLetter(c)) {
                charCount.put(c, charCount.getOrDefault(c, 0) + 1);
            }
        }
        return charCount;
    }
}
