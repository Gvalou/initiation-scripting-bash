#!/bin/bash
############################
#auteur : valentin
#date de création : 23/07/26
#last modif : 23/07/26
############################

#COULEURS
vert='\033[32m'
rouge='\033[1;31m'
reset='\033[0m'

rep=$1

if [[ -z $rep ]] ; then
    echo "il manque un argument, try again"
    exit 2
fi

if [[ -d $rep ]] ; then
    ##echo "$rep est un repo"
    if  ls $rep/*.conf &>/dev/null ; then
        for fichier in $rep/*.conf 
        do
            echo -e "${vert}$fichier${reset}"
        done
    else
        echo "Il n'y a pas de fichier .conf dans ce dossier"
    fi
else
    echo "l'argument renseigné n'est pas un dossier, try again (n00b)"
    exit 3
fi