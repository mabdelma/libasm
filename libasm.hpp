/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.hpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabdelma <mabdelma@student.42abudhabi.ae>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/06 14:22:06 by mabdelma          #+#    #+#             */
/*   Updated: 2024/08/06 14:39:09 by mabdelma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>


# define STRLEN(x)			printf("%s = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
# define STRCMP(a, b)		printf("%s:%s = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
# define WRITE(s, x)		printf("^%ld (%s:%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
# define READ(b, x)			r = ft_read(STDIN_FILENO, buffer, x); printf("`%s`:%ld\n", buffer, r);
# define DUP(s)				tmp = ft_strdup(s); printf("%s (%s)\n", tmp, s); free(tmp); tmp = "";


int		    ft_strlen(char const *str);
int		    ft_strcmp(char const *s1, char const *s2);
char	    *ft_strcpy(char *dst, char const *src);
ssize_t	    ft_write(int fd, void const *buf, size_t nbyte);
ssize_t	    ft_read(int fd, void *buf, size_t nbyte);
char	    *ft_strdup(char const *s1);