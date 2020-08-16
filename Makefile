SRCS		= main.c ft_putchar.c rush.c
OBJS		= ${SRCS:.c=.o}
NAME		= rush
CC		= gcc
RM		= rm -f
CFLAGS		= -Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		${CC} ${CFLAGS} ${SRCS} -o ${NAME}

all:		${NAME}

clean:
		${RM} ${OBJS}

fclean:		clean
		${RM} ${NAME}

re:		fclean all

.PHONY:		all clean fclean re
