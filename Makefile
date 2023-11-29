# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lauger <lauger@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/12 17:37:12 by lauger            #+#    #+#              #
#    Updated: 2023/11/15 11:09:57 by lauger           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

CC = cc

SOURCE = ft_printf.c ft_putstr_len.c ft_putnbr_base_len.c ft_putchar.c ft_putnbr_base_len_origin.c

OBJECT = $(SOURCE:.c=.o)

all: $(NAME)


$(NAME): $(OBJECT)
	ar rcs $(NAME) $(OBJECT)

clean:
	rm -f $(OBJECT)

fclean: clean
	rm -f $(NAME)

re: fclean all
