// Languages - Java - Day 5
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks the user for their name and then prints a personalized greeting with their name.

import java.util.Scanner;

public class Day5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("What is your name?");
        String name = scanner.nextLine();
        System.out.println("Happy New Year " + name + "!");
    }
}
