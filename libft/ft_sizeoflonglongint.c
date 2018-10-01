/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sizeofintmax_t.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allallem <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/01/11 16:48:50 by allallem          #+#    #+#             */
/*   Updated: 2018/01/17 15:44:58 by allallem         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_sizeoflonglongint(long long int size, int precision)
{
	int i;

	i = 0;
	if (size == 0)
		return (1);
	if (size < 0 && precision == 0)
		i++;
	while (size > 9 || size < -9)
	{
		size = size / 10;
		i++;
	}
	i++;
	return (i);
}
