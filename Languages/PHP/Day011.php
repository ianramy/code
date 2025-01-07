<!-- Languages - PHP - Day 11 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.-->

<?php

// Function to calculate the product of two numbers
function product($num1, $num2) {
    return $num1 * $num2;
}

// Function to get a valid number from the user
function getValidNumber($prompt) {
    // Loop until a valid number is entered
    while (true) {
        echo $prompt;
        $input = readline();
        if (is_numeric($input)) {
            return (float)$input;
        } else {
            // If the input is not a number, print an error message
            echo "Invalid input. Please enter a valid number.\n";
        }
    }
}

// Get two numbers from the user
$num1 = getValidNumber("Enter the first number: ");
$num2 = getValidNumber("Enter the second number: ");

// Calculate and print the product of the two numbers
echo "The product of the two numbers is: " . product($num1, $num2) . "\n";

?>
