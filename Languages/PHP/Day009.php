<!-- Languages - PHP - Day 9 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.-->

<?php
function calculateSumInRange($start, $end) {
    $sum = 0;
    for ($i = $start; $i <= $end; $i++) {
        echo $i . "<br>";
        $sum += $i;
    }
    echo "The sum of the numbers from $start to $end is: " . $sum . "<br>";
}

calculateSumInRange(1, 10); 
?>
