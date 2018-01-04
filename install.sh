#!/bin/bash

##
## make-make installer
## By Ndr
##

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

echo -e "\033[1m\033[44m Make-Make installer, by Ndr\033[0m\\n"
sleep 1s
yes_no "This will install make-make in ~/bin. Do you want to continue ?"
if [ $CHOICE = 0 ];
then
    echo "Installation aborted."
    exit
fi
read -p "What command do you use to launch your text editor ? (ex: emacs -nw) : " ED
mkdir ~/bin
cp -r ./files/* ~/bin
cp ~/.bashrc ./bkpbashrc
cp ~/.zshrc ./bkpzshrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.bashrc
echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.zshrc
echo "export MKEDITOR=$ED" >> ~/.bashrc
echo "export MKEDITOR=$ED" >> ~/.zshrc
echo -e "\033[1m\033[101m Redémarrez votre terminal pour utiliser make-make\033[0m\\n"
echo -e "\033[1m\033[101m Pensez aussi à mettre votre lib dans ~/bin/make-make_files/make-makelib\033[0m"
sleep 5
