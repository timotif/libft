/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fmax.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/07 14:31:59 by tfregni           #+#    #+#             */
/*   Updated: 2023/06/07 14:34:00 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * @returns the biggest of two floats
*/
float	ft_fmax(float a, float b)
{
	if (a > b)
		return (a);
	return (b);
}
