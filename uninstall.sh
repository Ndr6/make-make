#!/bin/sh

##
## make-make installer
## By Ndr
##

echo "\033[1m\033[44m Make-Make uninstaller, by Ndr\033[0m\\n"
sleep 1s
echo "\033[1m\033[101m Ce script va supprimer ou mettre à jour make-make, vous avec 10 secondes pour annuler avec CTRL+C !\033[0m\\n"
sleep 10s
rm ~/bin/make-make
rm ~/bin/maek/Makefile
rm ~/bin/maek/make-makelib/Makefile
rm ~/bin/make-make_files/Makefile
rm ~/bin/make-make_files/make-makelib/Makefile
echo "\033[1m\033[101m Make-make a été désinstallé. Votre lib n'a pas été supprimée et se trouve dans ~/bin/maek ou ~/bin/make-make_files\033[0m\\n"
sleep 5s
