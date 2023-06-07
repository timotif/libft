# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/06 16:50:23 by tfregni           #+#    #+#              #
#    Updated: 2023/06/07 14:32:38 by tfregni          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
				ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
				ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
				ft_atoi.c ft_calloc.c ft_strdup.c \
				ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_print_strarr.c

SRCS_BNS	=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

SRCS_EXTRA	=	$(addprefix ./ft_printf/, ft_printf.c parse_argument.c parse_flag.c parse_num.c \
				parse_ptr.c parse_text.c padding.c print_num.c print_ptr.c print_text.c)\
				$(addprefix ./get_next_line/, get_next_line.c get_next_line_utils.c)\
				ft_mergesort.c ft_mergesort_des.c ft_abs.c ft_power.c ft_strcmp.c \
				ft_dyn_arr_new.c ft_dyn_arr_pushback.c ft_dyn_arr_clear.c ft_dyn_arr_erase.c \
				ft_strnjoin.c ft_free_str_arr.c ft_arrlen.c ft_strjoinnfree.c ft_strins.c \
				ft_strtrunc.c ft_split_keep.c ft_is_escaped.c ft_skip_char.c \
				ft_strnjoinchar.c ft_isspace.c ft_atollu.c ft_atof.c ft_isfloat.c \
				ft_split_by_sep.c ft_fmax.c ft_fmin.c

OBJS	= ${SRCS:.c=.o}

OBJS_BNS	= ${SRCS_BNS:.c=.o}

OBJS_EXTRA	= ${SRCS_EXTRA:.c=.o}

CC		= cc

CFLAGS	= -Wall -Wextra -Werror

AR		= ar rc

LIB		= ranlib

NAME	= libft.a

RM		= rm -f

MAKE	= make -s

all		: ${NAME}

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

${NAME}: ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@printf "Building libft... "
	@${AR} ${NAME} ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@${LIB} ${NAME}
	@printf "done\n"

bonus	: ${NAME} ${OBJS_BNS}
	${AR} ${NAME} ${OBJS_BNS}
	${LIB} ${NAME}

extra	: bonus ${OBJS_EXTRA}
	${AR} ${NAME} ${OBJS_EXTRA}
	${LIB} ${NAME}

clean	:
ifneq ("$(wildcard  ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA})", "")
	@printf "Cleaning up libft objects... "
	@${RM} ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@echo "done"
endif

fclean	: clean
ifneq ("$(wildcard ${NAME})", "")
	@printf "Cleaning up libft executable... "
	@${RM} ${NAME}
	@echo "done"
endif

re		: fclean all

.PHONY	: all clean fclean re bonus extra
