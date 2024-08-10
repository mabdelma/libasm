/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.cpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabdelma <mabdelma@student.42abudhabi.ae>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/06 14:20:21 by mabdelma          #+#    #+#             */
/*   Updated: 2024/08/10 20:32:03 by mabdelma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.hpp"

int		main(void)
{
	// int		i;
	// long	r;
	// char	buffer[100];
	// char	*tmp;
	// char	*tmp2;

	// r = 0;
	// i = 0;
	// while (i < 100)
	// 	buffer[i++] = 0;

	// printf("--strlen\n");
	// STRLEN("")
	// STRLEN("mj")
	// STRLEN("mjmj")
	// STRLEN("0123456789abcdef")
	// STRLEN("42")
	// STRLEN("1")
	// printf("-done\n");

	printf("\n--strcmp\n");
	STRCMP("", "")
	STRCMP("mj", "aoto")
	STRCMP("", "mj")
	STRCMP("mj", "")
	STRCMP("mj", "mjbar")
	printf("-done\n");

	// printf("\n--strcpy\n");
	// printf("`%s` (`mj`)\n", ft_strcpy(buffer, "mj"));
	// printf("`%s` (empty)\n", ft_strcpy(buffer, ""));
	// printf("`%s` (`long message`)\n", ft_strcpy(buffer, "long message"));
	// printf("`%s` (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	// printf("-done\n");

	// printf("\n--write\n");
	// WRITE("mj", 4L)
	// WRITE("mjmj", 4L)
	// WRITE("mjmj", 8L)
	// WRITE("mj", 2L)
	// printf("-done\n");

	// printf("\n--read (Makefile)\n");
	// READ(buffer, 50)
	// READ(buffer, 25)
	// READ(buffer, 4)
	// READ(buffer, 26)
	// READ(buffer, 14)
	// READ(buffer, 0)
	// printf("-done\n");

	// tmp2 = strdup("Medo");
	// printf("\n-ft_strdup\n");
	// tmp = ft_strdup(tmp2); 
	
	// printf("%s:%s\n", tmp2, tmp); 
	// printf("-done\n");
	// free(tmp2);
	// free(tmp);

	return (0);
}
