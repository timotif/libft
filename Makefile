# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/06 16:50:23 by tfregni           #+#    #+#              #
#    Updated: 2024/10/08 14:53:34 by tfregni          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Colors
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
BLUE    = \033[0;34m
MAGENTA = \033[0;35m
CYAN    = \033[0;36m
WHITE   = \033[0;37m
NC		= \033[0m
RESET  	= \033[0m

# Unicode characters
CHECKMARK = ✅
CROSSMARK = ❌
BROOM = 🧹
ROCKET = 🚀
BUILD = 🏗
LIBRARY = 📚
LIST = 📜
HELP = ❓

# Directories
SRC_DIR	= src
OBJ_DIR	= obj
INC_DIR	= inc
DIRS	= . ft_printf get_next_line ft_lcg_random 

# Sources
SRCS		=	$(addprefix $(SRC_DIR)/, ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
				ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
				ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
				ft_atoi.c ft_calloc.c ft_strdup.c \
				ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_print_strarr.c)

SRCS_BNS	=	$(addprefix $(SRC_DIR)/, ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c)

SRCS_EXTRA	=	$(addprefix $(SRC_DIR)/, \
				ft_mergesort.c ft_mergesort_des.c ft_abs.c ft_power.c ft_strcmp.c \
				ft_dyn_arr_new.c ft_dyn_arr_pushback.c ft_dyn_arr_clear.c ft_dyn_arr_erase.c \
				ft_strnjoin.c ft_free_str_arr.c ft_arrlen.c ft_strjoinnfree.c ft_strins.c \
				ft_strtrunc.c ft_split_keep.c ft_is_escaped.c ft_skip_char.c \
				ft_strnjoinchar.c ft_isspace.c ft_atollu.c ft_atof.c ft_isfloat.c \
				$(addprefix ft_printf/, ft_printf.c parse_argument.c parse_flag.c parse_num.c \
				parse_ptr.c parse_text.c padding.c print_num.c print_ptr.c print_text.c)\
				$(addprefix ./get_next_line/, get_next_line.c get_next_line_utils.c)\
				ft_split_by_sep.c ft_fmax.c ft_fmin.c ft_dabs.c $(addprefix ./ft_lcg_random/, ft_lcg_random.c))

# Objects
OBJS		= ${addprefix $(OBJ_DIR)/, $(notdir $(SRCS:.c=.o))}

OBJS_BNS	= ${addprefix $(OBJ_DIR)/, $(notdir $(SRCS_BNS:.c=.o))}

OBJS_EXTRA	= ${addprefix $(OBJ_DIR)/, $(notdir $(SRCS_EXTRA:.c=.o))}

# Commands and flags
CC		= cc
CFLAGS	= -Wall -Wextra -Werror
AR		= ar rcs
LIB		= ranlib
RM		= rm -rf
MAKE	= make -s

# Name
NAME	= libft.a

# Rules #######################################################################
all		: banner ${NAME}

banner:
ifeq ($(wildcard $(NAME) $(OBJS)),)
	@clear
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░"
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░"
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░"
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓███████▓▒░░▒▓██████▓▒░    ░▒▓█▓▒░"
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░"
	@echo "░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░"
	@echo "░▒▓████████▓▒░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░         ░▒▓█▓▒░"
	@echo "					tfregni@42Berlin"
	@echo ""
	@echo "$(ROCKET)$(CYAN) Launching libft build...\n$(NC)"
	@printf "$(CYAN)$(BUILD) Building sources$(NC)"
endif

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

# eval is used to evaluate the text as Makefile command. Syntax: $(eval text)
# this command creates a rule for each dir in DIRS
# $$ is used to escape the $ sign because eval requires it
$(foreach dir,$(DIRS),$(eval \
$(OBJ_DIR)/%.o: $(SRC_DIR)/$(dir)/%.c | $(OBJ_DIR) ; \
	@printf "$(CYAN).$(NC)" ; \
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $$< -o $$@))

${NAME}	: ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@printf "\n${CYAN}$(LIBRARY) Creating library... ${NC}"
	@${AR} ${NAME} ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@${LIB} ${NAME}
	@printf "${GREEN}done ${CHECKMARK} ${RESET}\n"

help:
	@echo "$(YELLOW)$(HELP) Available rules:$(NC)"
	@echo "Usage: make [all | $(NAME) | clean | fclean | re | list | help]"

list: $(NAME)
	@echo "$(CYAN)$(LIST) Files included in $(NAME)$(NC):"
	@ar -t $(NAME) | tr "\n" " "
	@echo ""

clean	:
ifneq ("$(wildcard  ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA})", "")
	@printf "${YELLOW}$(BROOM) Cleaning up libft objects...${RESET}"
	@${RM} ${OBJS} ${OBJS_BNS} ${OBJS_EXTRA}
	@$(RM) $(OBJ_DIR)
	@printf "${GREEN}done ${CHECKMARK} ${RESET}\n"
endif

fclean	: clean
ifneq ("$(wildcard ${NAME})", "")
	@printf "${YELLOW}$(BROOM) Cleaning up libft executable...${RESET}"
	@${RM} ${NAME}
	@printf "${GREEN}done ${CHECKMARK} ${RESET}\n"
endif

re		: fclean
	$(MAKE) all

.PHONY	: all clean fclean re list
