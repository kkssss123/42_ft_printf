INC_DIR 	:= ./include
SRC_DIR 	:= ./src

CC 			:= cc
CFLAGS 		+= -Wall -Wextra -Werror
CFLAGS		+= -I$(INC_DIR)
CFLAGS		+= $(DBG)	# make DBG="-g"

LIBFT_DIR 	:= ./libft
LIBFT 		:= $(LIBFT_DIR)/libft.a

NAME 		:= libftprintf.a
SRC			:= $(SRC_DIR)/ft_printf.c \
	$(SRC_DIR)/print_decimal.c \
	$(SRC_DIR)/print_hex.c \
	$(SRC_DIR)/print_pointer.c \
	$(SRC_DIR)/print_string.c
OBJ			:= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	make -C $(LIBFT_DIR)
	cp $(LIBFT) $@
	ar rcs $@ $^

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	make -C $(LIBFT_DIR) clean
	rm -f $(OBJ)

fclean: clean
	make -C $(LIBFT_DIR) fclean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re