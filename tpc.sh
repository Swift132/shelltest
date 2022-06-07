#!/bin/bash
#Author Diogo Pacheco

clear 

echo "Bem-Vindo $USER" > test_textbox
whiptail --textbox test_textbox 12 80

{
    for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Aguarde ..." 6 50 0


while [ 1 ]; do
echo "###############################"
figlet MENU
echo "###############################"

list=$(ls)

echo "1 - Fazer um (ls)"
echo "2 - Sair."
echo
echo
echo "Escolha uma opção."
read resp

    if [ $resp = 1 ] 
    then
        echo $list
        sleep 1s
        echo -nE Aguarde.
        sleep 1s
        echo -nE \.
        sleep 1s
        echo -n \.
        sleep 1s
        clear
    else
        echo -n A sair.
        sleep 0.5s
        echo -nE \.
        sleep 0.5s
        echo -nE \.
        sleep 0.5s
        echo -nE \.
        clear
        exit 0
    fi
done