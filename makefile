# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: allallem <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/17 14:05:37 by allallem          #+#    #+#              #
#    Updated: 2018/01/26 18:27:52 by allallem         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC= gcc

CFLAGS= -Wextra -Werror -Wall -Ilibft/

.c= ft_printf.c ft_printf_spe.c ft_verification_last.c ft_printfdi.c ft_printfdi_flags.c ft_putstr_printf.c ft_putaddress_printf.c ft_printfs.c ft_fillstruct_printf.c ft_buffer_printf.c ft_bufnbr_printf.c ft_putnbr_printf.c ft_atoi_longlongint.c ft_strlen_longlong.c ft_sizeoflonglongint.c ft_strstr_int.c ft_toupper.c ft_putpercent.c ft_typefor_address.c ft_printf_c.c ft_printfcsmaj.c ft_flagscmaj.c ft_flagssmaj.c ft_adjust_struct.c ft_starflag.c

.o= $(.c:.c=.o)

DEL= rm -f

NAME= libftprintf.a

LIB= libft/libft.a

all:$(NAME)

re:fclean all

$(NAME):$(.o)
	make -C ./libft
	ar rc $(NAME) $(.o)

fclean:clean
	$(DEL) $(NAME)
	make -C ./libft fclean

clean:
	$(DEL) $(.o)
	make -C ./libft clean

.PHONY: all clean fclean re
