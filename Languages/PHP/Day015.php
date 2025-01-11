<!-- Languages - PHP - Day 15 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.-->

<?php

// Function to check if a string is a palindrome
function isPalindrome($str) {
    // Remove non-alphanumeric characters and convert to lowercase
    $str = strtolower(preg_replace('/[^a-z0-9]/i', '', $str));

    // Check for empty input after normalization
    if (empty($str)) {
        return false;
    }

    // Check if the string is equal to its reverse
    return $str === strrev($str);
}

// Ask the user for a string
echo "Enter a string: ";
$input = trim(readline());

// Input validation
if (empty($input)) {
    echo "Invalid input. Please enter a non-empty string.";
} else {
    // Check if the input string is a palindrome
    if (isPalindrome($input)) {
        echo "\"$input\" is a palindrome.";
    } else {
        echo "\"$input\" is not a palindrome.";
    }
}

?>
