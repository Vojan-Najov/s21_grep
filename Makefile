NAME = s21_grep

INCLUDES = include/s21_grep.h

SRC = srcs/s21_grep.c \
      srcs/s21_grep_get_options.c \
      srcs/s21_grep_utils.c

OBJ = $(SRC:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror -std=c11 -Wpedantic -Iinclude/

$(NAME): $(OBJ)
	$(CC) $^ -o $@

%.o: %.c $(INCLUDES)
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

test: $(NAME)
	bash ./tests/start_test.sh -i

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
