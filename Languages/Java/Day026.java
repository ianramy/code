// Languages - Java - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number. 


import java.util.HashSet;
import java.util.Scanner;

public class HappyNumberChecker {
    // Function to determine if a number is a Happy Number
    public static boolean isHappyNumber(int num) {
        HashSet<Integer> seenNumbers = new HashSet<>();
        while (num != 1 && seenNumbers.add(num)) {
            num = sumOfSquares(num);
        }
        return num == 1;
    }

    // Helper function to calculate the sum of squares of digits
    private static int sumOfSquares(int num) {
        int sum = 0;
        while (num > 0) {
            int digit = num % 10;
            sum += digit * digit;
            num /= 10;
        }
        return sum;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.print("Enter a number (or type 'exit' to quit): ");
            if (scanner.hasNextInt()) {
                int num = scanner.nextInt();
                if (num < 0) {
                    System.out.println("Negative numbers are not considered Happy Numbers.");
                } else {
                    boolean result = isHappyNumber(num);
                    System.out.println("The number " + num + " is " + (result ? "a Happy Number." : "not a Happy Number."));
                }
            } else {
                String input = scanner.next();
                if (input.equalsIgnoreCase("exit")) {
                    System.out.println("Exiting program. Goodbye!");
                    break;
                }
                System.out.println("Invalid input. Please enter an integer.");
            }
        }
        scanner.close();
    }
}
