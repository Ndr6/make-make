##
## EPITECH PROJECT, 2017
## Make-make's Libmy Makefile
## File description:
## By Ndr
##

###############
#  VARIABLES  #
###############

#Nom de la lib produite (lib*.a)
NAME=		libmy.a

#Nom du .h contenant les prototypes des fonctions de la lib
H_NAME=	my.h

#Répertoire des sources de la lib (.c)
SRC_DIR=	$(realpath .)

#Destination de la copie de la lib (parce que Marvin est capricieux)
CPY_DIR=	$(realpath ..)

#Répertoire de destination des includes (.h)
INC_DIR=	$(realpath ../../include)

#Fichiers sources de la lib (.c)
##Compile actuellement TOUS les .c, c'est potentiellement non sécurisé...
SRC=		$(SRC_DIR)/*.c

#Fichiers objets (.o) utiles à la compilation de la lib
OBJ=		$(SRC:.c=.o) $(SRC_UT:.c=.o)


############
#  RÈGLES  #
############

all:		$(NAME)

#Création de la lib, puis copie dans le dossier lib, puis copie le .h dans includes
$(NAME):
		@echo "\n\033[1m\033[36m\tCompiling $(NAME)...\033[0m"
		gcc -c $(SRC)
		ar rc $(NAME) $(OBJ)
		cp $(NAME) $(CPY_DIR)/$(NAME)
		cp $(H_NAME) $(INC_DIR)

#Supprime les fichiers .o générés
clean:
		@echo "\n\033[1m\033[33m\tCleaning lib files...\033[0m"
		rm -f $(OBJ)

#Supprime les fichiers .o et la lib générée
fclean:
		@echo "\n\033[1m\033[33m\tCleaning lib & lib files...\033[0m"
		rm -f $(OBJ)
		rm -f $(NAME)
		rm -f $(CPY_DIR)/$(NAME)

#Supprime puis recompile la lib
re:		fclean all
