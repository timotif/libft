# Libft
### Your very first own library
Summary: This project is about coding a C library. It will contain a lot of general purpose functions your programs will rely upon.

*Language: C
Flags: -Wall, -Wextra -Werror
Library: libft.a*
| Part 1: libc functions | Part 2: Additional functions | Part 3: Bonus            | Part 4: Additional Functions |
|------------------------|------------------------------|--------------------------|------------------------------|
| isalpha                | ft_substr                    | ft_lstnew                | ft_mergesort                 |
| isdigit                | ft_strjoin                   | ft_lstadd_front          | ft_mergesort_des             |
| isalnum                | ft_strtrim                   | ft_lstadd_back           | ft_abs                       |
| isascii                | ft_split                     | ft_lstsize               | ft_power                     |
| isprint                | ft_itoa                      | ft_lstlast               | ft_strcmp                    |
| strlen                 | ft_strmapi                   | ft_lstclear              | ft_dyn_arr_new               |
| memset                 | ft_striteri                  | ft_lstdelone             | ft_dyn_arr_pushback          |
| bzero                  | ft_putchar_fd                | ft_lstiter               | ft_dyn_arr_clear             |
| memcpy                 | ft_putstr_fd                 | ft_lstmap                | ft_dyn_arr_erase             |
| memmove                | ft_putendl_fd                |                          | ft_strnjoin                  |
| strlcpy                | ft_putnbr_fd                 |                          | ft_free_str_arr              |
| strlcat                |                              |                          | ft_arrlen                    |
| toupper                |                              |                          | ft_strjoinnfree              |
| tolower                |                              |                          | ft_strins                    |
| strchr                 |                              |                          | ft_strtrunc                  |
| strrchr                |                              |                          | ft_split_keep                |
| strncmp                |                              |                          | ft_is_escaped                |
| memchr                 |                              |                          | ft_skip_char                 |
| memcmp                 |                              |                          | ft_strnjoinchar              |
| strnstr                |                              |                          | ft_isspace                   |
| atoi                   |                              |                          | ft_atollu                    |
| calloc                 |                              |                          | ft_atof                      |
| strdup                 |                              |                          | ft_isfloat                   |
|                        |                              |                          | ft_printf                    |
|                        |                              |                          | get_next_line                |
|                        |                              |                          | ft_split_by_sep              |
|                        |                              |                          | ft_fmax                      |
|                        |                              |                          | ft_fmin                      |
|                        |                              |                          | ft_dabs                      |
|                        |                              |                          | ft_lcg_random                |

## Usage

    git clone git@github.com:timotif/libft.git
    cd libft
    make
This will create the static library `libft.a` that you can compile with whatever C file you see fit.