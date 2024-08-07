# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelma <mabdelma@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/07 19:03:46 by mabdelma          #+#    #+#              #
#    Updated: 2024/08/07 19:03:48 by mabdelma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS        =  ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJS        =  $(SRCS:.s=.o)

ASM			=  nasm
ASFLAGS		=  -f elf64 -DPIC
CC			= g++
CPPFLAGS    =  -Wall -Werror -Wextra -fPIE -no-pie
LDFLAGS		=  -L. -lasm
NAME        =  libasm.a
TEST        =  test

%.o:	%.s
			$(ASM) $(ASFLAGS) -o $@ $<

all:	$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)
			ranlib $(NAME)
			rm -rf $(OBJS)

clean:
			rm -rf $(OBJS) main.o

fclean:		clean
			rm -rf $(NAME) $(TEST)

re:	fclean all

test:	re
			$(CC) $(CPPFLAGS) -nostartfiles -c main.cpp
			$(CC) $(CPPFLAGS) -o $(TEST) main.o $(NAME) $(LDFLAGS)
			./$(TEST)

.PHONY:	clean fclean re test

