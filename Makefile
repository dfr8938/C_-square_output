HEADER		= ./includes/
PATH_SRCS	= ./srcs/
SRCS		= ${PATH_SRCS}ft_abs.c ${PATH_SRCS}ft_putchar.c ${PATH_SRCS}rectangle.c
NAME		= rectangle
CC		= gcc
RM		= rm -rf
AR		= ar rc
CFLAGS		= -Wall -Wextra -Werror

lib.a: $(SRCS)
		${CC} -g -c $(SRCS) -I $(HEADER)
		${AR} lib.a *.o
		${RM} *.o

${NAME}:	main.c lib.a
		${CC} ${CFLAGS} ${SRCS} -o ${NAME} main.c lib.a -I ${HEADER}

all:		${NAME}

clean:
		${RM} *.o

fclean:		clean
		${RM} ${NAME} lib.a

re:		fclean all

.PHONY:		all clean fclean re
