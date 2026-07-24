#!/bin/bash
############################
#auteur : valentin
#date de création : 24/07/26
#last modif : 24/07/26
############################

fichier=/etc/issue.net

while read distro type version ; do
    echo "Votre système d'exploitation est un $type"
    echo "La distribution utilisée est $distro en version $version"
done < <(cat $fichier)


ip -o -4 a | while read trash carte trash1 ip trash2 ; do
    echo "La carte à comme nom $carte et comme ip $ip"
done 

