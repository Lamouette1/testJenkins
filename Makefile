# Variables
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = main.c
OBJ = $(SRC:.c=.o)
TARGET = my_program
TEST_SCRIPT = ./run_tests.sh

# Rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(TARGET)

re: fclean all

test: $(TARGET)
	@echo "Running tests..."
	@$(TEST_SCRIPT)

.PHONY: all clean fclean re test
