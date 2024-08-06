SRCS        =  ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJS        =  $(SRCS:.s=.o)

NA          =  nasm
NA_FLAGS    =  -f macho64
CPPFLAGS    =  -Wall -Werror -Wextra
NAME        =  libasm.a
TEST        =  test

%.o:	%.s
			$(NA) $(NA_FLAGS) -o $@ $<

all:	$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)
			rm -f $(OBJS)
			ranlib $(NAME)

clean:
			rm -rf $(OBJS)

fclean:		clean
			rm -rf $(NAME) $(TEST)

re:	fclean all

test:	$(NAME)
			g++ $(CPPFLAGS) -L. -lasm -o $(TEST) main.cpp
			./$(TEST)

.PHONY:	clean fclean re test
