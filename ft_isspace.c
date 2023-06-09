/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_space.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/19 17:04:51 by lde-ross          #+#    #+#             */
/*   Updated: 2023/05/06 16:39:58 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isspace(char x)
{
	if (x == '\t' || x == '\n' || x == '\v'
		|| x == '\f' || x == '\r' || x == ' ')
		return (1);
	else
		return (0);
}
