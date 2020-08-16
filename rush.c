#include "ft_h.h"

void	rush(int x, int y)
{
	char	arr[x][y];
	int	i;
	int	j;

	i = 0;
	j = 0;
	while (j < y)
	{
		while (i < x)
		{
			if ((i == 0 && j == 0) || (i == 0 && j == y - 1))
				arr[x][y] = 'A';
			else if ((i == x - 1 && j == 0) || (i == x - 1 && j == y - 1))
				arr[x][y] = 'C';
			else if ((j != 0 && j != y - 1) && (i != 0 && i != x - 1))
				arr[x][y] = ' ';
			else
				arr[x][y] = 'B';
			ft_putchar(arr[x][y]);
			i++;
		}
		if (i == x - 1 && i == 0)
			ft_putchar(arr[x][y]);
		write(1, "\n", 1);
		i = 0;
		j++;
	}
}
