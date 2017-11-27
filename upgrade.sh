#!/bin/sh

##
## make-make installer
## By Ndr
##

echo "\033[1m\033[44m Make-Make upgrader, by Ndr\033[0m\\n"
sleep 1s

#Uninstall
echo "\033[1m\033[101m Ce script va mettre à jour make-make, vous avec 10 secondes pour annuler avec CTRL+C !\033[0m\\n"
sleep 10s
rm ~/bin/make-make
rm ~/bin/maek/Makefile
rm ~/bin/maek/make-makelib/Makefile
rm ~/bin/make-make_files/Makefile
rm ~/bin/make-make_files/make-makelib/Makefile

#Install
mkdir ~/bin
cp -r ./files/* ~/bin
cp ~/.bashrc ./bkpbashrc
cp ~/.zshrc ./bkpzshrc
echo "\033[1m\033[101m Redémarrez tous vos terminaux pour utiliser make-make\033[0m\\n"
echo "\033[1m\033[101m Pensez aussi à mettre vos libs dans ~/bin/make-make_files/make-makelib\033[0m"
sleep 5

#Transfer previous install
cp ~/bin/maek/make-makelib/* ~/bin/make-make_files/make-makelib
rm -rf ~/bin/maek
echo "\033[1m\033[44m Votre lib a été transférée et make-make a été mis à jour.\033[0m\\n"
