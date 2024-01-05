#!/bin/bash
# Programa para permitir el manejo de las utilidades de Postgres
# Autor: Jose Carlos Vielman - @jcvielm

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menu de opciones
    echo " ____                                                  _     "
    echo " |  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___   __ _    __| | ___ "
    echo -e " | |_) | '__/ _ \ / _\` | '__/ _\` | '_ \` _ \ / _\` |  / _\` |/ _ \ "
    echo " |  __/| | | (_) | (_| | | | (_| | | | | | | (_| | | (_| |  __/ "
    echo " |_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|\__,_|  \__,_|\___| "
    echo "                  |___/                                         "
    echo "  _   _ _   _ _ _     _           _            "
    echo " | | | | |_(_) (_) __| | __ _  __| | ___  ___  "
    echo -e " | | | | __| | | |/ _\` |/ _\` |/ _\` |/ _ \/ __| "
    echo " | |_| | |_| | | | (_| | (_| | (_| |  __/\__ \ "
    echo "  \___/ \__|_|_|_|\__,_|\__,_|\__,_|\___||___/ "
    echo -e "\n"
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
    echo -e "\n"
    echo "-----------------------------------------"
    echo "          PROGRAMA DE UTILIDADES         "
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo -e "\n"
    echo "1. Procesos actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en el disco"
    echo "4. Informacion de red"
    echo "5. Variables de entorno configuradas"
    echo "6. Informacion Programa"
    echo "7. Backup informacion"
    echo "8. Ingrese una opcion"

# Leer los datos del usuario - capturar informacion
read -n1 -p "Ingrese una opcion [1-8]: " opcion
#echo -e "\n"
# Validar la opcion ingresada
case $opcion in
    1) 
        echo -e "\nPROCESOS ACTUALES"
        sleep 1
        ps axu
        sleep 3
        ;;
    2)
        echo -e "\nMEMORIA DISPONIBLE"
        sleep 1
        free
        sleep 3
        ;;
    3)
        echo -e "\nESPACIO EN EL DISCO"
        sleep 1
        df -h
        sleep 3
        ;;

    4)
        echo -e "\nINFORMACION DE RED"
        sleep 1
        ifconfig
        sleep 3
        ;;
    5)
        echo -e "\nVARIABLES DE ENTORNO CONFIGURADAS"
        sleep 1
        env -u VAR
        sleep 3
        ;;
    6)
        echo -e "\nINFORMACION PROGRAMA"
        sleep 1
        dpkg -l | more
        sleep 3
        ;;
    7)
        echo -e "\nBACKUP INFORMACION"
        sleep 1
        tar -czvf archivosCompresos.tar.gz *.sh
        sleep 3
        ;;
    8)
        echo -e "\nSALIENDO DEL PROGRAMA....."
        sleep 1
        exit 0 
        ;;
    esac
done

