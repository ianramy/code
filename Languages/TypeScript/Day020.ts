// Languages - TypeScript - Day 20
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that sorts an array using the Bubble Sort algorithm.


// Bubble Sort Function
function bubbleSortNum(arr: number[]): number[] {
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
function isValidArray(input: string[]): boolean {
    return input.every(item => !isNaN(Number(item)));
}

// Setup readline interface for user input
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

// Function to prompt user for input
function promptUser(): void {
    readline.question('Enter the number of elements in the array: ', (sizeInput: string) => {
        const size = Number(sizeInput);

        if (isNaN(size) || size <= 0) {
            console.log('Invalid input. Please enter a positive integer for the array size.');
            return promptUser();
        }

        collectElements(size, []);
    });
}

// Function to collect elements one by one
function collectElements(size: number, arr: number[]): void {
    if (arr.length === size) {
        console.log(`\nOriginal array: ${arr.join(' ')}`);
        const sortedArr = bubbleSortNum([...arr]);
        console.log(`Sorted array: ${sortedArr.join(' ')}`);
        readline.close();
        return;
    }

    readline.question(`Enter element ${arr.length + 1}: `, (element: string) => {
        const num = Number(element);
        if (isNaN(num)) {
            console.log('Invalid input. Please enter a valid number.');
        } else {
            arr.push(num);
        }
        collectElements(size, arr);
    });
}

// Start the program
promptUser();
