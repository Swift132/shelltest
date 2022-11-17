#!/bin/bash
#Author Diogo Pacheco
#Script para fazer Cópia de uma pasta e Backup em .zip

function parameters() {
    if (( $# < 2 )); then
        echo "Não tem parametros suficientes"
        exit 0
    else
        echo "A Fazer a Cópia de Segurança"
        echo "ORIGEM: $1"
        echo "DESTINO: $2"
        cp -r $1 $2
        cd $2 
        
    fi
}

function zipar() {
    zip -r backup ./
    cd $2
}

function anim(){
    while :; do 
            for i in / - \\ \|; do 
                echo -ne "\b$i"; sleep 0.3
            done
            exit 0
        done
}


parameters $1 $2
zipar $1 
anim