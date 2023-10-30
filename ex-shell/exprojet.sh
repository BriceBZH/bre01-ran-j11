#!/bin/bash

#on demande le type de projet et on le vérifie || [ $projet != "inte" ] || [ $projet != "php" ] || [ $projet != "ran" ] || [ $projet != "js" ]  || [ $projet != "react" ] 
while [ -z $projet ] 
do
    read -p "Quel type de projet voulez-vous créer ? ( inte, ran, php, js ou react) : " projet

done

echo "Projet $projet"

#on demande le nom du projet et on vérifie le retour
while [ -z $nom_projet ]  
do

read -p "Quel est le nom du projet : " nom_projet

done


echo "Nom du projet $nom_projet"

#création du dossier de projet
mkdir ../../../$projet/$nom_projet

#création des sous-dossier en fonction du type de projet
if [ $projet == "inte" ] || [ $projet == "php" ] 
then
    mkdir ../../../$projet/$nom_projet/assets
    mkdir ../../../$projet/$nom_projet/assets/css
    mkdir ../../../$projet/$nom_projet/assets/js
    mkdir ../../../$projet/$nom_projet/assets/img
elif [ $projet == "js" ]
	echo ""
else
    echo''
fi

#création des fichiers dans les sous-dossier en fonction du type de projet et on recupère les infos dans les fichiers qui sont à la racine
if [ $projet == "inte" ]
then

    cp ~/index.html  inte/$nom_projet/index.html
#elif [ $projet == "js" ]
#	echo "il est l'heure de dormir"
#elif [ $projet == "php" ]
#	echo "il est l'heure de dormir"  
fi