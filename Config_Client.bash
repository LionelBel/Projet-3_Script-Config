#!/bin/bash


################################################                                              
#                                              #
#          Script de Configuration             #      
#         des Postes clients UBUNTU            #
#                                              #
#                     A                        #
#                 Fond Linux                   #
#                                              #
# Lionel BELLEROSE                             #
#                                              #
################################################

# Variables
rep="1"
add="sudo adduser stagiaire"         # Ajout utilisateur + répertoiore dans /home
del="sudo userdel -r -f stagiaire"   # Suppression utilisateur et de son répertoire dans /home

################################################################

# Présentation des Propositions

echo "
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Bonjour,
   
  Que voulez-vous faire ? [n° de proposition]

  1 - Ajouter l'utilisateur stagiaire
  2 - Supprimer l'utilisateur stagiaire
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     "
read rep # affiche la numéro choisie 

##################################################################

# N°1 Création de l'utilisateur stagiaire

                ###################

if [ "$rep" = "1" ]
then
        $add
        echo "

        L'utilisateur stagiaire a été créé. ;)

        "
exec $0 # retour à la présentation 


####################################################################

# N°2 suppression  de l'utilisateur stagiaire

                #######################

elif [ "$rep" = "2" ]
then
        $del
        echo "

        L'utilisateur stagiaire a été supprimé. ;)

        "
exec $0 # retour à la présentation


#####################################################################