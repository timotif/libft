/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_strarr.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/01 13:38:49 by tfregni           #+#    #+#             */
/*   Updated: 2023/05/26 09:37:00 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

void	ft_print_strarr(char **arr)
{
	int	i;

	i = 0;
	while (arr[i])
		printf("%s$\n", arr[i++]);
}
