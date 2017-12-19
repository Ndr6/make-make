#!/bin/sh

##
## make-make installer
## By Ndr
##

echo "\033[1m\033[44m Make-Make installer, by Ndr\033[0m\\n"
sleep 1s
mkdir ~/bin
cp -r ./files/* ~/bin
cp ~/.bashrc ./bkpbashrc
cp ~/.zshrc ./bkpzshrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.bashrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.zshrc
echo "\033[1m\033[101m Redémarrez votre terminal pour utiliser make-make\033[0m\\n"
echo "\033[1m\033[101m Pensez aussi à mettre votre lib dans ~/bin/make-make_files/make-makelib\033[0m"
sleep 5
