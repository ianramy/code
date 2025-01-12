<!-- Languages - PHP - Day 16 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.-->

<?php
// Function to check if a number is an Armstrong Number
function isArmstrong($num) {
    if (!is_numeric($num) || $num < 0 || floor($num) != $num) {
        echo "Please enter a positive integer.\n";
        return false;
    }

    $sum = 0;
    $temp = $num;
    $numDigits = strlen((string)$num);

    while ($temp > 0) {
        $digit = $temp % 10;
        $sum += pow($digit, $numDigits);
        $temp = floor($temp / 10);
    }

    return $sum == $num;
}

// Function to prompt the user for input
function promptUser() {
    echo "Enter a positive integer to check if it's an Armstrong Number: ";
    $handle = fopen ("php://stdin", "r");
    $input = trim(fgets($handle));

    if (ctype_digit($input)) {
        $num = (int)$input;
        if (isArmstrong($num)) {
            echo "$num is an Armstrong Number.\n";
        } else {
            echo "$num is not an Armstrong Number.\n";
        }
    } else {
        echo "Invalid input. Please enter a positive integer.\n";
    }

    fclose($handle);
}

// Run the prompt
promptUser();
?>
