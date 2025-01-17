# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mogonzal <mogonzal@student.42barcelona.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 20:03:24 by mogonzal          #+#    #+#              #
#    Updated: 2022/05/20 20:58:39 by mogonzal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEADER = libft.h

SRCS =	ft_bzero.c \
		ft_atoi.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memset.c \
		ft_memmove.c \
		ft_strchr.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_strdup.c 		

SRCS_BONUS = 	ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c
					
OBJS = $(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

CC = gcc -c

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

%.o:%.c $(HEADER)
	$(CC) $(CFLAGS) -o $@ $<
	@ECHO "Compiling... $^"

all:	$(NAME)

$(NAME):	$(OBJS) $(HEADER)
		ar -rcs $(NAME) $(OBJS)
		ranlib $(NAME)

bonus:	$(OBJS) $(OBJS_BONUS) $(HEADER)
		ar -rcs $(NAME) $(OBJS) $(OBJS_BONUS)
		ranlib $(NAME)
		@touch $@

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)
	$(RM) bonus

re: fclean all

re2: fclean bonus

test:
	gcc $(SRCS) && ./a.out

test2:
	gcc $(SRCS_BONUS) && ./a.out

.PHONY: all clean fclean re 
