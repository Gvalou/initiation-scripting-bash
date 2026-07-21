#!/bin/bash
#==========
#auteur : valentin
#date de création : 21/06/26
#dernière modif :
#==========

rep=$PWD
extension=txt

echo "répertoire de travail : $rep"
echo "fichiers pouvant être traités : "
ls $rep/*.$extension

#choix du fichier à traiter
echo "Quel fichier voulez-vous traiter ?"
read fic
nblign=$(wc -l $fic)
debut=$(head -n 2 $fic)
fin=$(tail -n 2 $fic)

#affichage des caractéristiques du fichier
echo "CARACTERISTIQUES de $fic"
echo "Nombre de ligne du fichier : $nblign"
echo "Début du fichier : "
echo $debut
echo "Fin du fichier : "
echo $fin
