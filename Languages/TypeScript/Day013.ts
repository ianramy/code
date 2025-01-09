// Languages - TypeScript - Day 13
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

// Function to calculate the sum of all elements in an array
function sumOfArrayElements(arr: number[]): number {
    let sum: number = 0;
    for (let i = 0; i < arr.length; i++) {
        sum += arr[i];
    }
    return sum;
}

// Prompt the user for the number of elements
let arr: number[] = [];
let n: number | null = null;

while (n === null) {
    let input: string | null = prompt("Enter the number of elements in the array: ");
    if (input !== null && !isNaN(parseInt(input)) && parseInt(input) > 0) {
        n = parseInt(input);
    } else {
        alert("Please enter a valid positive integer for the number of elements.");
    }
}

// Prompt the user to enter array elements
if (n !== null) {
    for (let i = 0; i < n; i++) {
        let element: number | null = null;
        while (element === null) {
            let input: string | null = prompt(`Enter element ${i + 1}: `);
            if (input !== null && !isNaN(parseInt(input))) {
                element = parseInt(input);
            } else {
                alert("Please enter a valid integer.");
            }
        }
        arr.push(element);
    }

    // Calculate and display the sum
    let sum: number = sumOfArrayElements(arr);
    console.log("Sum of all elements in the array: " + sum);
}
