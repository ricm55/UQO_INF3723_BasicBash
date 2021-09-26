#!/bin/bash
until [ "$selection" = "0" ]; do
echo ""
echo "MENU"
echo "1 - Affichage du repertoire courant"
echo "2 - Liste des fichiers du repertoire"
echo "3 - Information sur un fichier"
echo "4 - Changement de repertoire"
echo "5 - N premieres lignes d'un fichier"
echo "0 - exit"
echo ""
read -p "Enter selection " selection
echo ""

case $selection in
0) exit;;
1) pwd;;
2) ls;;
3) echo -n "Nom du fichier: ";
	read file
	ls -l $file;;
4) echo -n "Nouveau repetoire: ";
	read repertoire
	cd $repertoire;;
5) echo -n "Nom du fichier: ";
	read fichier
	echo -n "Nb de lignes a afficher: "; read nb
	head -$nb $fichier;;
*) echo "Choix non propose";;  
esac

done
