<!-- Languages - PHP - Day 17 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- 
Create a function that generates the Fibonacci sequence up to a given number n.
The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.
 -->

<?php
function fibonacci($n) {
    if ($n < 0) {
        return "Please enter a positive integer.";
    } elseif ($n == 0) {
        return [0];
    }

    $fib = [0, 1];
    
    while (true) {
        $nextNum = $fib[count($fib) - 1] + $fib[count($fib) - 2];
        if ($nextNum > $n) {
            break;
        }
        $fib[] = $nextNum;
    }

    return $fib;
}

// Ask for user input
echo "Enter a positive number: ";
$input = trim(fgets(STDIN));

if (is_numeric($input) && $input >= 0) {
    $result = fibonacci((int)$input);
    if (is_array($result)) {
        echo "Fibonacci sequence up to $input: " . implode(", ", $result) . "\n";
    } else {
        echo $result . "\n";
    }
} else {
    echo "Invalid input. Please enter a positive integer.\n";
}
?>
