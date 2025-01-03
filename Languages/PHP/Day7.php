<!-- Languages - PHP - Day 7 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).-->

<?php
$numbers = array();
$sum = 0;

echo "Enter numbers (type 'done' to finish):\n";

while (true) {
    $input = readline("Enter a number: ");
    if (strtolower($input) == "done") {
        break;
    }
    if (is_numeric($input)) {
        $numbers[] = (float)$input;
        $sum += (float)$input;
    } else {
        echo "Invalid input. Please enter a valid number or type 'done' to finish.\n";
    }
}

if (count($numbers) > 0) {
    $average = $sum / count($numbers);

    echo "The sum of the numbers is: $sum\n";
    echo "The average of the numbers is: " . number_format($average, 2) . "\n";

    if ($average > 10) {
        echo "Above average\n";
    } elseif ($average < 10) {
        echo "Below average\n";
    } else {
        echo "Average is exactly 10\n";
    }
} else {
    echo "No numbers were entered.\n";
}
?>
