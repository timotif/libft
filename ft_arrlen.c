/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_arrlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/01 13:36:50 by tfregni           #+#    #+#             */
/*   Updated: 2023/02/01 13:37:23 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_arrlen(char **argv)
{
	int	i;

	i = 0;
	while (argv && argv[i])
		i++;
	return (i);
}
