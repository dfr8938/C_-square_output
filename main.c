#include "ft_h.h"

int	main(void)
{
	int x;
	int y;

	x = -1156;
	y = -120;

	if (x < 0 && y < 0)
	{
		x *= (-1);
		y *= (-1);
	}
	if (x < 0)
		x *= (-1);
	else if (y < 0)
		y *= (-1);

	rush(x, y);
	return (0);
}
