/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.cpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabdelma <mabdelma@student.42abudhabi.ae>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/06 14:20:21 by mabdelma          #+#    #+#             */
/*   Updated: 2024/08/07 19:04:19 by mabdelma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.hpp"

int		main(void)
{
	int		i;
	long	r;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	while (i < 100)
		buffer[i++] = 0;

	printf("--strlen\n");
	STRLEN("")
	STRLEN("toto")
	STRLEN("totototo")
	STRLEN("0123456789abcdef")
	STRLEN("42")
	STRLEN("1")
	printf("-done\n");

	printf("\n--strcmp\n");
	STRCMP("", "")
	STRCMP("toto", "toto")
	STRCMP("", "toto")
	STRCMP("toto", "")
	STRCMP("toto", "totobar")
	printf("%s:%s = %d\n", "TOTO", "", ft_strcmp("TOTO", NULL));
	printf("`%s`:%s = %d\n", "", "TOTO", ft_strcmp(NULL, "TOTO"));
	printf("%s:%s = %d\n", "", "", ft_strcmp(NULL, NULL));
	printf("-done\n");

	printf("\n--strcpy\n");
	printf("`%s` (`toto`)\n", ft_strcpy(buffer, "toto"));
	printf("`%s` (empty)\n", ft_strcpy(buffer, ""));
	printf("`%s` (`long message`)\n", ft_strcpy(buffer, "long message"));
	printf("`%s` (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	printf("-done\n");

	printf("\n--write\n");
	WRITE("toto", 4L)
	WRITE("totototo", 4L)
	WRITE("totototo", 8L)
	WRITE("toto", 2L)
	printf("-done\n");

	printf("\n--read (Makefile)\n");
	READ(buffer, 50)
	READ(buffer, 25)
	READ(buffer, 4)
	READ(buffer, 26)
	READ(buffer, 14)
	READ(buffer, 0)
	printf("-done\n");

	tmp2 = strdup("Medo");
	printf("\n-ft_strdup\n");
	tmp = ft_strdup(tmp2); 
	
	printf("%s:%s\n", tmp2, tmp); 
	printf("-done\n");
	free(tmp2);
	free(tmp);

	return (0);
}
