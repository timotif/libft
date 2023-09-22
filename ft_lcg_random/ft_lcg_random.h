/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lcg_random.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/22 20:47:51 by tfregni           #+#    #+#             */
/*   Updated: 2023/09/22 21:34:14 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_LCG_RANDOM_H
# define FT_LCG_RANDOM_H
# include <stdint.h>

# define LCG_MULTIPLIER 1664525
# define LCG_INCREMENT 1013904223

double	lcg_random(uint64_t *lcg_state);
void	lcg_seed(uint64_t seed, uint64_t *lcg_state);
#endif
