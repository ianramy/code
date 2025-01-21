// Languages - Java - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


import java.util.Scanner;

public class Day025 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a decimal number: ");
        String input = scanner.nextLine().trim();

        try {
            int number = Integer.parseInt(input);
            String binary = decimalToBinary(number);
            System.out.println("Binary representation: " + binary);
        } catch (NumberFormatException e) {
            System.out.println("Invalid input. Please enter a valid integer.");
        }

        scanner.close();
    }

    public static String decimalToBinary(int number) {
        if (number == 0) {
            return "0";
        }

        int num = Math.abs(number);
        StringBuilder binary = new StringBuilder();
        
        while (num > 0) {
            binary.insert(0, num % 2);
            num /= 2;
        }

        return number < 0 ? "-" + binary.toString() : binary.toString();
    }
}
