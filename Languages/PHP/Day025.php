<!-- Languages - PHP - Day 25 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that converts a Decimal Number to Binary without using built-in conversion functions.-->


<?php

function decimalToBinary($number) {
    if ($number == 0) {
        return "0";
    }

    $num = abs($number);
    $binaryParts = [];

    while ($num > 0) {
        array_unshift($binaryParts, $num % 2);
        $num = intdiv($num, 2);
    }

    $binary = implode("", $binaryParts);
    return $number < 0 ? "-" . $binary : $binary;
}

echo "Enter a decimal number: ";
$input = trim(fgets(STDIN));

if (is_numeric($input) && strpos($input, '.') === false) {
    $number = (int)$input;
    $binary = decimalToBinary($number);
    echo "Binary representation: $binary\n";
} else {
    echo "Invalid input. Please enter a valid integer.\n";
}

?>
