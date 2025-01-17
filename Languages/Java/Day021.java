// Languages - Java - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


import java.util.Scanner;

public class Day021 {
    
    // Function to calculate the Greatest Common Divisor (GCD)
    public static int gcd(int a, int b) {
        a = Math.abs(a);
        b = Math.abs(b);
        
        if (a == 0 && b == 0) {
            return -1;
        }
        
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }

    // Helper method for input validation
    public static int getValidInteger(Scanner scanner, String prompt) {
        System.out.println(prompt);
        while (!scanner.hasNextInt()) {
            System.out.println("Invalid input. Please enter a valid integer.");
            scanner.next();
            System.out.println(prompt);
        }
        return scanner.nextInt();
    }

    // Main method
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get user input
        int num1 = getValidInteger(scanner, "Enter the first number:");
        int num2 = getValidInteger(scanner, "Enter the second number:");

        int result = gcd(num1, num2);
        if (result == -1) {
            // GCD is undefined for inputs 0 and 0
            System.out.println("GCD is undefined for inputs 0 and 0.");
        } else {
            // Display the result
            System.out.println("The GCD of " + num1 + " and " + num2 + " is " + result + ".");
        }

        scanner.close();
    }
}
