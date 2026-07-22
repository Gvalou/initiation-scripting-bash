#!/bin/bash
#==========
#auteur : valentin
#date de création : 21/07/26
#last modif : 22/07/26
#==========

#affichage de l'heure
#echo "$(date +%H:%M:%S) - FIN de traitement"

#affichage de ce qui va bien
#echo "----------------------------------------"
#echo "Liste des processus contenant : [argument de basse ou input]"
#echo "----------------------------------------"
#echo ps -p "1" u (affiche l'entête et le process)
#echo "----------------------------------------"



if [[ -n $1 ]]; then
    #afficher ce qui va bien
    echo "----------------------------------------"
    echo "Liste des processus contenant : $1"
    echo "----------------------------------------"
    ps -f | head -n 1
    ps -f | grep $1
    echo "----------------------------------------"
    #afficher l'heure
    echo "$(date +%H:%M:%S) - FIN de traitement"
else
    read -p "Entrez un critère de recherche : " arg
    ##echo $arg
    nb=$(echo "$arg" | wc -w) 
    if [[ -z $arg ]] ; then
        #donner l'id de l'user et le prévenir
        arg=$USER
        echo "je vous ai attribué automatiquement cet argument : $arg"
        #afficher ce qui va bien
        echo "----------------------------------------"
        echo "Liste des processus contenant : $arg"
        echo "----------------------------------------"
        ps -f | head -n 1
        ps -f | grep $arg
        echo "----------------------------------------"
        #afficher l'heure
        echo "$(date +%H:%M:%S) - FIN de traitement"
    elif [[ $nb -eq 1 ]] ; then
        #afficher ce qui va bien
        echo "----------------------------------------"
        echo "Liste des processus contenant : $arg"
        echo "----------------------------------------"
        ps -f | head -n 1
        ps -f | grep $arg
        echo "----------------------------------------"
        
        #afficher l'heure
        echo "$(date +%H:%M:%S) - FIN de traitement"
    else
        echo "***Trop de mots, je ne contracte pas***"
        echo "Utilisation :<get-process.sh> [nom_process]"
        #sortir avec code retour 3
        exit 3
    fi
fi
