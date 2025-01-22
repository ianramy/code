<!-- Languages - PHP - Day 26 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that determines if a given number is a Happy Number. 


<?php

function isHappyNumber($num) {
    $seen = [];
    while ($num != 1 && !isset($seen[$num])) {
        $seen[$num] = true;
        $num = sumOfSquares($num);
    }
    return $num == 1;
}

function sumOfSquares($num) {
    $sum = 0;
    while ($num > 0) {
        $digit = $num % 10;
        $sum += $digit * $digit;
        $num = (int)($num / 10);
    }
    return $sum;
}

while (true) {
    echo "Enter a number (or 'q' to quit): ";
    $input = trim(fgets(STDIN));

    if (strtolower($input) === 'q') {
        echo "Exiting program. Goodbye!\n";
        break;
    }

    if (!filter_var($input, FILTER_VALIDATE_INT) && $input != "0") {
        echo "Invalid input. Please enter an integer.\n";
        continue;
    }

    $num = (int)$input;
    if ($num < 0) {
        echo "Negative numbers are not considered Happy Numbers.\n";
    } else {
        $result = isHappyNumber($num);
        echo "The number $num is " . ($result ? "a Happy Number." : "not a Happy Number.") . "\n";
    }
}

?>
