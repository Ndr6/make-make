##
## EPITECH PROJECT, 2017
## auto-libmy Makefile
## File description:
## By Ndr
##

#Répertoire du projet
SRC_DIR=	$(realpath .)

#Répertoire des libs
LIB_DIR=	$(realpath ..)

#Répertoire des includes
INC_DIR=	$(realpath ../../include)

#Fichiers sources
SRC=		$(SRC_DIR)/*.c

#Fichiers objets (relicats de compilation)
OBJ=		$(SRC:.c=.o) $(SRC_UT:.c=.o)

#Nom du projet
NAME=		libmy.a
H_NAME=		my.h

#Règles
all:		$(NAME)

$(NAME):
		gcc -c $(SRC)
		ar rc $(NAME) $(OBJ)
		cp $(NAME) $(LIB_DIR)/$(NAME)
		cp $(H_NAME) $(INC_DIR)

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f $(NAME)

re:		fclean all
