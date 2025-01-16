// Languages - JavaScript - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


// Bubble Sort function
function bubbleSort(arr) {
	let len = arr.length;
	for (let i = 0; i < len - 1; i++) {
		let swapped = false;
		for (let j = 0; j < len - i - 1; j++) {
			if (arr[j] > arr[j + 1]) {
				[arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
				swapped = true;
			}
		}
		if (!swapped) break;
	}
	return arr;
}

// Function to validate input
function validateInput(input) {
	return input.every((num) => !isNaN(num));
}

// Ask user to input the array
let input = prompt("Enter the array of numbers separated by spaces:");

if (input) {
	let arr = input.trim().split(/\s+/).map(Number);

	// Validate the input
	if (validateInput(arr)) {
		// Display original array
		console.log("Original array:", arr.join(" "));

		// Sort and display the sorted array
		let sortedArr = bubbleSort(arr);
		console.log("Sorted array:", sortedArr.join(" "));
	} else {
		console.log(
			"Invalid input. Please enter only numbers separated by spaces."
		);
	}
} else {
	console.log("No input provided.");
}
