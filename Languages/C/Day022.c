// Languages - C - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// removeDuplicates removes duplicate characters from a string while preserving the original order.
void removeDuplicates(char* input, char* output) {
    bool seen[256] = { false };
    int j = 0;
    for (int i = 0; input[i] != '\0'; i++) {
        if (!seen[(unsigned char)input[i]]) {
            seen[(unsigned char)input[i]] = true;
            output[j++] = input[i];
        }
    }
    output[j] = '\0';
}

int main() {
    char input[100];
    char output[100];
    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0'; // Remove newline character
    if (strlen(input) == 0) {
        printf("Input cannot be empty.\n");
        return 1;
    }
    removeDuplicates(input, output);
    printf("String after removing duplicates: %s\n", output);
    return 0;
}
