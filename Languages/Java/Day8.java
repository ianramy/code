// Languages - Java - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

import java.util.Scanner;

public class Day8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter your first name: ");
        String firstName = scanner.nextLine().trim();

        if (firstName.isEmpty()) {
            System.out.println("First name cannot be empty.");
            return;
        }

        System.out.println("Enter your last name: ");
        String lastName = scanner.nextLine().trim();

        if (lastName.isEmpty()) {
            System.out.println("Last name cannot be empty.");
            return;
        }

        String fullName = firstName + " " + lastName;

        char firstInitial = Character.toUpperCase(firstName.charAt(0));
        char lastInitial = Character.toUpperCase(lastName.charAt(0));

        String greeting = "Hello, " + fullName + "! Your initials are " + firstInitial + "." + lastInitial + ".";
        System.out.println(greeting);
    }
}
