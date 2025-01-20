<!-- Languages - PHP - Day 24 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that lists all Prime Numbers up to a given number n. -->


<?php

function is_prime($num) {
    if ($num < 2) return false;
    if ($num == 2 || $num == 3) return true;
    if ($num % 2 == 0 || $num % 3 == 0) return false;
    for ($i = 5; $i * $i <= $num; $i += 6) {
        if ($num % $i == 0 || $num % ($i + 2) == 0) return false;
    }
    return true;
}

function list_primes($n) {
    if ($n < 2) {
        return [];
    }
    $primes = [];
    for ($i = 2; $i <= $n; $i++) {
        if (is_prime($i)) {
            $primes[] = $i;
        }
    }
    return $primes;
}

echo "Enter a number: ";
$input = trim(fgets(STDIN));

if ($input === '') {
    echo "Invalid input. Input cannot be empty.\n";
} elseif (filter_var($input, FILTER_VALIDATE_INT) !== false && (int)$input >= 0) {
    $n = (int)$input;
    $primes = list_primes($n);
    if (empty($primes)) {
        echo "No prime numbers found up to $n.\n";
    } else {
        echo "Prime numbers up to $n: " . implode(", ", $primes) . "\n";
    }
} else {
    echo "Invalid input. Please enter a valid non-negative integer.\n";
}

?>
