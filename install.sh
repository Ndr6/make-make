#!/bin/sh

##
## make-make installer
## By Ndr
##

echo -e "\e[1m\e[44m Make-Make installer, by Ndr\e[0m\\n"
sleep 1s
mkdir ~/bin
cp -r ./files/* ~/bin
cp ~/.bashrc ./bkpbashrc
cp ~/.zshrc ./bkpzshrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.bashrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.zshrc
echo -e "\e[1m\e[101m Redémarrez tous vos terminaux pour utiliser make-make\e[0m\\n"
echo -e "\e[1m\e[101m Pensez aussi à mettre vos libs dans ~/bin/maek/make-makelib\e[0m"
sleep 5s
