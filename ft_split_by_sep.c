/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split_by_sep.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfregni <tfregni@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 17:57:28 by tfregni           #+#    #+#             */
/*   Updated: 2023/05/26 09:36:53 by tfregni          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	count_words(const char *s, char *sep)
{
	size_t	count;

	if (!s)
		return (0);
	if (!sep)
		return (1);
	count = 0;
	while (*s)
	{
		if (ft_strchr(sep, *s))
			s++;
		else
		{
			count++;
			while (*s && !ft_strchr(sep, *s))
				s++;
		}
	}
	return (count);
}

char	**ft_split_by_sep(char const *s, char *sep)
{
	char	**strs;
	int		num_words;
	size_t	word;
	size_t	len;

	num_words = count_words(s, sep);
	strs = malloc(sizeof(*strs) * (num_words + 1));
	if (!strs)
		return (NULL);
	word = 0;
	while (*s)
	{
		if (ft_strchr(sep, *s))
			s++;
		else
		{
			len = 0;
			while (s[len] && !ft_strchr(sep, s[len]))
				len++;
			strs[word++] = ft_substr(s, 0, len);
			s += len;
		}
	}
	strs[word] = 0;
	return (strs);
}
