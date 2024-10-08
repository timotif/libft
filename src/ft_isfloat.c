/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isfloat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/21 10:49:15 by tfregni           #+#    #+#             */
/*   Updated: 2023/02/21 11:51:02 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
I'm ruling off numbers as non-float cases like 0.67b even though
atof would be able to do something with it and I'm checking true
even if the number is integer as it is a subset of the floats.
Only accepted separator is '.', consistent with atof.
Might decide to change these behaviours in the future.
*/
int	ft_isfloat(char *n)
{
	if (!n)
		return (0);
	while (*n == '+' || *n == '-')
		n++;
	if (!ft_isdigit(*n) && !(*n == '.'))
		return (0);
	while (*n && ft_isdigit(*n))
		n++;
	if (!(*n))
		return (1);
	if ((*n == '.' && !ft_isdigit(n[1])) || *n != '.')
		return (0);
	n++;
	while (*n && ft_isdigit(*n))
		n++;
	if (!(*n))
		return (1);
	return (0);
}
