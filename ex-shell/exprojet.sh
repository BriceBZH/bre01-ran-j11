#!/bin/bash
echo "Quel type de projet voulez-vous créer ? ( inte, ran, php, js ou react)"

read projet

#if [ "$projet" != "inte" ] && [ "$projet" != "php" ] && [ "$projet" != "ran" ] && [ "$projet" != "js" ]  && [ "$projet" != "react" ]
#then
#    echo "Vous avez indiqué un mauvais type de projet!"
#else
#
#fi

echo "Projet $projet"

echo "Quel est le nom du projet"

read nom_projet

echo "Nom du projet $nom_projet"

mkdir ../../../$projet/$nom_projet

if [ "$projet" == "inte" ] || [ "$projet" == "php" ] 
then
    mkdir ../../../$projet/$nom_projet/assets
    mkdir ../../../$projet/$nom_projet/assets/css
    mkdir ../../../$projet/$nom_projet/assets/js
    mkdir ../../../$projet/$nom_projet/assets/img
else
    mkdir ../../../$projet/$nom_projet/assets
    mkdir ../../../$projet/$nom_projet/assets/css
    mkdir ../../../$projet/$nom_projet/assets/js
    mkdir ../../../$projet/$nom_projet/assets/js/modules
    mkdir ../../../$projet/$nom_projet/assets/img
fi