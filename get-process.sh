#!/bin/bash

if [[ -n $1 ]]; then
    echo "echoooo"
else
    read -p "Entrez un critère de recherche : " arg
    echo $arg
    if [[ $(wc -w $arg) -eq 0 ]] ; then
        #donner l'id de l'user
    elif [[ $(wc -w $arg) -eq 1 ]] ; then
        #afficher ce qui va bien
    else
        echo "trop de mots, je ne contracte pas"
    fi
fi
