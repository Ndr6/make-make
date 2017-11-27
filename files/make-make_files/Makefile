##
## EPITECH PROJECT, 2017
## auto-Makefile
## File description:
## By Ndr
##

#Répertoire du projet
SRC_DIR=	$(realpath ./src)

#Répertoire des libs
LIB_DIR=	$(realpath ./lib/my)

#Répertoire des includes
INC_DIR=	$(realpath ./include)

#Fichiers sources
SRC=		$(SRC_DIR)/ #[AJOUTEZ LES FICHIERS SOURCES]

#Libs à inclure
LIB=		my

#Fichiers objets (relicats de compilation)
OBJ=		$(SRC:.c=.o)

#Nom du projet
NAME=		#[NOM DU PROJET]

#Arguments gcc
GCC_ARG=	-L$(LIB_DIR) -l$(LIB) -I$(INC_DIR)
GCC_ARG_DEBUG=	-L$(LIB_DIR) -l$(LIB) -I$(INC_DIR) -g

#Règles
all:		$(NAME)

$(NAME):
		make -C ./lib/my
		make clean -C ./lib/my
		gcc -o $(NAME) $(SRC) $(GCC_ARG)

debug:
		gcc -o $(NAME) $(SRC) $(GCC_ARG_DEBUG)

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f $(NAME)

re:		fclean all
