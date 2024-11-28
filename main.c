#include <stdio.h>

int main(int argc, char *argv[]) {
    printf("Hello, world!\n");

    if (argc > 1) {
        printf("You provided %d arguments:\n", argc - 1);
        for (int i = 1; i < argc; i++) {
            printf("Argument %d: %s\n", i, argv[i]);
        }
    } else {
        printf("No additional arguments provided.\n");
    }

    return 0;
}
