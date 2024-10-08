/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parse.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/21 23:17:30 by tfregni           #+#    #+#             */
/*   Updated: 2022/12/22 19:37:12 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	parse_arg(va_list *args, char **fmt, int *count)
{
	char	*str;

	(void) str;
	if (ft_strchr("pdiuxX", **fmt))
		*count += parse_num(args, **fmt);
	else if (**fmt == 's' || **fmt == 'c')
		*count += print_char(args, **fmt);
	else if (**fmt == '%')
	{
		ft_putchar_fd('%', 1);
		(*count)++;
	}
}
