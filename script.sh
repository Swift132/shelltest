#!/bin/bash

clear

login=$(whiptail --inputbox "Utilizador: " 10 70 --title "Utilizador" 3>&1 1>&2 2>&3)
pass=$(whiptail --passwordbox "Introduz a tua password" 10 70 --title "Password" 3>&1 1>&2 2>&3)

valid_user="diogo"
valid_pass="123"

if [ "$login" == "$valid_user" ] && [ "$pass" == "$valid_pass" ];
then
    echo  "Usuário Valido, Bem-Vindo $valid_user" > test_textbox
            whiptail --textbox test_textbox 12  80
else
    echo "Usuário inválido"
    exit 0
fi

while [ 1 ]; do
   opcao=$(whiptail --menu "MENU" 12 25 3 "1" "Qual o meu IP" "0" "sair" 3>&1 1>&2 2>&3)
   ip=$(hostname --i)
   case "${opcao}" in
       "1")
           echo  "Este é o seu IP $ip " > test_textbox
            whiptail --textbox test_textbox 12  80
       ;;
       "2")
           
       ;;
       "3")
           
       ;;
       "4")
           
       ;;
       "0")
           break
           exit 0
       ;;
   esac
done

exit 6