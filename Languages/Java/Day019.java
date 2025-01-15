// Languages - Java - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


import java.util.Scanner;

public class Day019 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int num = getValidInput(sc);
        sc.close();

        if (isPerfect(num)) { // Check if the number is a Perfect Number
            System.out.println("🎉 " + num + " is a Perfect Number!");
        } else {
            System.out.println("❌ " + num + " is not a Perfect Number.");
        }
    }

    // Function to validate user input
    static int getValidInput(Scanner sc) {
        int num;
        while (true) {
            System.out.print("Enter a positive integer to check if it's a Perfect Number: ");
            if (sc.hasNextInt()) {
                num = sc.nextInt();
                if (num > 0) {
                    break;
                } else {
                    System.out.println("⚠️ Please enter a positive integer.");
                }
            } else {
                System.out.println("⚠️ Invalid input. Please enter a valid integer.");
                sc.next(); // Clear invalid input
            }
        }
        return num;
    }

    // Function to check if a number is a Perfect Number
    static boolean isPerfect(int num) {
        if (num <= 0) return false;  // Perfect numbers must be positive

        int sum = 0;
        // Loop only up to num / 2 for optimization
        for (int i = 1; i <= num / 2; i++) {
            if (num % i == 0) {
                sum += i;
            }
        }
        return sum == num;
    }
}
