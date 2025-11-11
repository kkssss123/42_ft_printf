/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgwon <sgwon@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/11 11:50:47 by sgwon             #+#    #+#             */
/*   Updated: 2025/11/11 16:57:46 by sgwon            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft.h"
# include <stdarg.h>

/* String, Character */
ssize_t	print_c(char c);
ssize_t	print_s(char *s);
ssize_t	print_pc(void);
/* Decimal */
ssize_t	print_di(int n);
ssize_t	print_u(unsigned int n);
/* Hexadecimal */
ssize_t	print_xl(unsigned int n);
ssize_t	print_xu(unsigned int n);
/* Pointer */
ssize_t	print_p(unsigned long long n);

int		ft_printf(const char *format, ...);

#endif
