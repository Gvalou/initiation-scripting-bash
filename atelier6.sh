#!/bin/bash
############################
#auteur : valentin
#date de création : 22/07/26
#last modif : 22/07/26
############################

#afficher le menu
echo "***** MENU *****"
echo "Choisissez parmi les options suivantes : "
echo "- matos ( m ou M)"
echo "- espace (e ou E)"
echo "- paquet (p ou P)"
echo "- rep (r ou R)"
echo "- quit (q ou Q)"

#stocker le choix
read choix

##vérification de $choix
#echo "vous avez choisi $choix"

case $choix in
    matos|m|M)
       read -p "indiquez : cpu ou pci ?" matos
        case $matos in
            cpu)
                lscpu
                sleep 4 
                echo "==FIN=="
                ;;
            pci)
                lspci
                sleep 4 
                echo "==FIN=="
                ;;
            *)
                echo "entrée invalide"
                sleep 4
                exit
                ;;
        esac
        ;; 
    espace|e|E)
        read -p "indiquez : Mo ou inode ?" info
        case $info in
            Mo)
                df -h
                sleep 4 
                echo "==FIN=="
                ;;
            inode) 
                df -i
                sleep 4
                echo "==FIN=="
                ;;
            *)
                echo "entrée invalide"
                sleep 4
                exit
                ;;
        esac
        ;; 
    paquet|p|P)
        dpkg --get-selection | grep -c '\binstall$'
        sleep 4 
        echo "==FIN=="
        ;;
    rep|r|R)
        du -hs /*
        sleep 4 
        echo "==FIN=="
        ;;
    quit|q|Q)
        exit
        ;;
    *)
        echo "syntax error (syndrome des gros doigts)"
        exit
        ;;
esac