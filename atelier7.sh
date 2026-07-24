#!/bin/bash
############################
#auteur : valentin
#date de création : 23/07/26
#last modif : 23/07/26
############################

try=0

read -p "donne un nom wesh : " name

while [[ -z $name ]] ; do
    read -p "redonne un nom : " name
    try=$(expr $try + 1)
    ##echo $try
done

if [[ $(grep "^\b$name\b" /etc/passwd) > /dev/null ]] ; then
    echo "*** INFOS UTILISATEUR ***"
    echo "$(grep "^\b$name\b" /etc/passwd)"
    echo "--------------------"
    echo " taille du home : $(du -hs /home/$name)"
else
    echo "l'utilisateur n'existe pas"
fi

echo "*** FIN ***"
echo -e "il t'a fallu $try essais pour arriver à ce résultat... \ndécevant..."
