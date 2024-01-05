#!/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Jose Vielman - @jcvielm

opcion=""

echo -e "\nEjemplo Sentencia Case"
read -n1 -p "Ingrese una opcion de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\n Operacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    *) echo "Opcion Incorrecta";;
esac
