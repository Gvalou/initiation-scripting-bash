#!/bin/bash
############################
#auteur : valentin
#date de création : 23/07/26
#last modif : 23/07/26
############################

#Déclaration des couleurs
vert='\033[32m'
rouge='\033[1;31m'
reset='\033[0m'

utilisateur=$1

if [[ -n $utilisateur ]] ; then
    if [[ $(grep "^\b$utilisateur\b" /etc/passwd) > /dev/null ]] ; then
        echo -e "${vert}l'utilisateur existe${resert}"
    else 
        echo -e "${rouge}l'utilisateur n'existe pas${resert}"
    fi
else
    read -p "rentrez un nom d'utilisateur : " utilisateur
    if [[ -n $utilisateur ]] ; then
        if [[ $(grep "^\b$utilisateur\b" /etc/passwd) > /dev/null ]] ; then
            echo -e "${vert}l'utilisateur existe${resert}"
        else 
            echo -e "${rouge}l'utilisateur n'existe pas${resert}"
        fi
    else
        echo "erreur de saisie"
        exit 2 
    fi
fi