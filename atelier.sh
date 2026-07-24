#!/bin/bash
#==========
#auteur : valentin
#date de création :
#dernier modificateur :
#date de last modif :
#==========
#
#ceci est un test pour voir si la connection ssh depuis vscode fonctionne bien
#
echo "Bonjour, cette machine est fin prête à scripter"

echo -e "\n"

echo "Scripts Shell présents ici (dans /scripts) : "
ls -l /scripts/*.sh 

echo -e "\n"

echo "Informations relatives à l'interpréteur Bash :" 
bash --version


echo -e "\n"
#which bash
#command -v bash
#ls /etc/*bash*bashrc*
#find
whereis bash
#man -w bash

apt list --upgrade 
