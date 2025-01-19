<!-- Languages - PHP - Day 23 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.-->


<?php

// Recursive function to calculate the power of a number
function power($base, $exponent) {
    if ($exponent == 0) {
        return 1;
    } elseif ($exponent < 0) {
        return 1 / power($base, -$exponent);
    } else {
        return $base * power($base, $exponent - 1);
    }
}

// Get the base and exponent from the user
echo "Enter the base number: ";
$base = trim(fgets(STDIN));

if (is_numeric($base)) {
    $base = (float)$base;

    echo "Enter the exponent: ";
    $exponent = trim(fgets(STDIN));

    if (is_numeric($exponent)) {
        $exponent = (int)$exponent;

        if ($base == 0 && $exponent == 0) {
            echo "0^0 is undefined.\n";
        } else {
            $result = power($base, $exponent);
            echo "$base^$exponent = $result\n";
        }
    } else {
        echo "Invalid input for exponent.\n";
    }
} else {
    echo "Invalid input for base.\n";
}
?>
