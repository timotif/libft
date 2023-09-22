/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lcg_rand.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/22 20:49:21 by tfregni           #+#    #+#             */
/*   Updated: 2023/09/22 21:34:43 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_lcg_random.h"

/**
 * @brief Linear Congruential Generator
 * @param seed is the seed
 * @param lcg_state is the state
*/
void	ft_lcg_seed(uint64_t seed, uint64_t *lcg_state)
{
	*lcg_state = seed;
}
/**
 * @brief Linear Congruential Generator
 * @returns a pseudo-random number between 0 and 1
 * @param lcg_state is the seed
 * @see https://en.wikipedia.org/wiki/Linear_congruential_generator
*/

double	ft_lcg_random(uint64_t *lcg_state)
{
	uint64_t	lcg_modulus;

	lcg_modulus = (uint64_t)1 << 32;
	*lcg_state = (LCG_MULTIPLIER * *lcg_state + LCG_INCREMENT) % lcg_modulus;
	return ((double)*lcg_state / lcg_modulus);
}
