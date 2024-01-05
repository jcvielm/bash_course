#!/bin/bash
# Programa para permitir el manejo de las utilidades de Postgres
# Autor: Jose Carlos Vielman - @jcvielm

opcion=0

while : # WHILE INFINITO
do
    # Limpiar la pantalla
    clear
    # Desplegar el menu de opciones
    echo "█████████████████████████████████████████"
    echo "██████████████▀▀▀░░░░░░░▀▀▀██████████████"
    echo "███████████▀░░░░░░░░░░░░░░░░░▀███████████"
    echo "███████████│░░░░░░░░░░░░░░░░░░░│█████████"
    echo "██████████▌│░░░░░░░░░░░░░░░░░░░│▐████████"
    echo "██████████░└┐░░░░░░░░░░░░░░░░░┌┘░████████"
    echo "██████████░░└┐░░░░░░░░░░░░░░░┌┘░░████████"
    echo "██████████░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░████████"
    echo "██████████▌░│██████▌░░░▐██████│░▐████████"
    echo "███████████░│▐███▀▀░░▄░░▀▀███▌│░█████████"
    echo "██████████▀─┘░░░░░░░▐█▌░░░░░░░└─▀████████"
    echo "██████████▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄████████"
    echo "████████████▄─┘██▌░░░░░░░▐██└─▄██████████"
    echo "█████████████░░▐█─┬┬┬┬┬┬┬─█▌░░███████████"
    echo "████████████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐██████████"
    echo "█████████████▄░░░└┴┴┴┴┴┴┴┘░░░▄███████████"
    echo "███████████████▄░░░░░░░░░░░▄█████████████"
    echo "██████████████████▄▄▄▄▄▄▄████████████████"
    echo "█████████████████████████████████████████"
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

# Leer los datos del usuario - capturar informacion
read -n1 -p "Ingrese una opcion [1-5]: " opcion
#echo -e "\n"
# Validar la opcion ingresada
case $opcion in
    1) 
        echo -e "\nInstalar postgres........"
        sleep 3
        ;;

    2)
        echo -e "\nDesinstalar postgres....."
        sleep 3
        ;;
    3)
        echo -e "\nSacar respaldo..........."
        sleep 3
        ;;

    4)
        echo -e "\nRestaurar respaldo......."
        sleep 3
        ;;
    5)
        echo -e "\nSaliendo del programa....."
        exit 0 # Rompemos la ejecucion del programa y se sale
        ;;
    esac
done

