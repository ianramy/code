<!-- Languages - PHP - Day 14 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.-->

<?php

// Function to reverse a string
function reverseString($str) {
    return strrev($str);
}

// Function to validate input
function isValidInput($input) {
    return trim($input) !== '';
}

// Ask user for input with validation
do {
    echo "Enter a non-empty string: ";
    $input = readline();

    if (!isValidInput($input)) {
        echo "Invalid input. Please enter a non-empty string.\n";
    }
} while (!isValidInput($input));

// Call the function and print the reversed string
echo "Reversed string: " . reverseString($input) . "\n";
?>
