# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelma <mabdelma@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/07 19:03:46 by mabdelma          #+#    #+#              #
#    Updated: 2024/08/10 20:05:10 by mabdelma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)
ASM = nasm
ASFLAGS = -f elf64
CC = g++
CFLAGS = -Wall -Werror -Wextra
LDFLAGS = -L. -lasm
NAME = libasm.a
TEST = test

%.o: %.s
	$(ASM) $(ASFLAGS) -o $@ $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS) main.o

fclean: clean
	rm -f $(NAME) $(TEST)

re: fclean all

test: re
	$(CC) $(CFLAGS) -c main.cpp
	$(CC) $(CFLAGS) -o $(TEST) main.o $(NAME) $(LDFLAGS)
	./$(TEST)

.PHONY: clean fclean re test