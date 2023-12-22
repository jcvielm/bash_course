#!/bin/bash
# Programa que solicita ingresar un numero del 1 al 5 e imprimir si los numeros se encuentran en el rango.

regexNumero='^[1-5]$'

read -p "Ingresar un numero entre 1 al 5 y se realizara una accion aleatoria: " numero

case $numero in
    1) read -p "Has elegido opcion 1. Desea imprimir la ruta en que nos encontramos? tipear si o no: " siono
        if [ $siono = "si" ]; then
            pwd
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    2) read -p "Has elegido opcion 2. Desea imprimir la fecha? tipear si o no: " siono
        if [ $siono = "si" ]; then
            date
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    3) read -p "Has elegido opcion 3. Desea imprimir las especificaciones con neofetch? tipear si o no: " siono
        if [ $siono = "si" ]; then
            neofetch
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    4) read -p "Has elegido opcion 4. Desea ver el contenido de la carpeta? tipear si o no: " siono
        if [ $siono = "si" ]; then
            ls -lsa
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    5) read -p "Has elegido opcion 5. Desea imprimir todas las variables de entorno disponibles? tipear si o no: " siono
        if [ $siono = "si" ]; then
            env
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    *) echo "Error"
    ;;
esac

