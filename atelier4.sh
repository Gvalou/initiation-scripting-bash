#!/bin/bash
#==========
#auteur : valentin
#==========

##vérification de la prise en compte de l'argument
arg=$1
#echo $arg

##définition des pids
pid=$(pgrep "\b$arg\b")
#echo $pid

#condition (de victoire)
if [[ $pid != "" ]] ; then
    echo "le processus $arg a comme pid(s) : $pid"
else
    echo "Le processus ne tourne pas"
fi

#ERREUR ci-dessous mais à creuser pour comprendre ma logique
#if [[ ($(pgrep $arg)) -eq 0 ]] ; then
#    echo "le processus $arg a comme pid(s) : $pid"
#else
#    echo "Le processus ne tourne pas"
#fi