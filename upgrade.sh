#!/bin/bash

##
## make-make upgrader
## By Ndr
##

echo -e "\033[1m\033[44m Make-Make upgrader, by Ndr\033[0m\\n"
sleep 1s

CHOICE=-1

yes_no () {
    local CHOSEN='0'
    local ANSWER
    while [ "$CHOSEN" = '0' ]
    do
	read -p "$1 [Y/N]" -n1 ANSWER
	echo ''
	case $ANSWER in
	    y | Y )
		CHOICE=1
		CHOSEN='1';;
	    n | N )
		CHOICE=0
		CHOSEN='1';;
	    *)
		echo 'Invalid answer, try again.';;
	esac
    done
}

yes_no "This will upgrade make-make. Are you sure ?"
if [ $CHOICE = 0 ];
then
    echo "Upgrade aborted"
    exit
fi
#Uninstall
echo -e "\033[1m\033[101mDésinstallation de l'ancienne version\033[0m\\n"
rm ~/bin/make-make
rm ~/bin/maek/Makefile
rm ~/bin/maek/make-makelib/Makefile
rm ~/bin/make-make_files/Makefile
rm ~/bin/make-make_files/main.c
rm ~/bin/make-make_files/make-makelib/Makefile

#Install
echo -e "\033[1m\033[101mInstallation de la nouvelle version\033[0m\\n"
read -p "What command do you use to launch your text editor ? (ex: emacs -nw) : " ED
mkdir ~/bin
cp -r ./files/* ~/bin
cp ~/.bashrc ./bkpbashrc
cp ~/.zshrc ./bkpzshrc
echo "export MKEDITOR=$ED" >> ~/.bashrc
echo "export MKEDITOR=$ED" >> ~/.zshrc

#Transfer previous install
echo -e "\033[1m\033[101mRécupération de la lib\033[0m\\n"
cp ~/bin/maek/make-makelib/* ~/bin/make-make_files/make-makelib
rm -rf ~/bin/maek
echo -e "\033[1m\033[44m Votre lib a été transférée et make-make a été mis à jour.\033[0m\\n"
