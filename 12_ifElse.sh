#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else 
# Autor: Jose Vielman - @jcvielm

notaClase=0
edad=0

echo "Ejemplo Sentencia If Else"
read -n1 -p "Indicar cual es su nota (1-9): " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno ha aprobado la materia"
else
    echo "El alumno no ha aprobado la materia"
fi

read -p "Indique cual es su edad: " edad
if [ $edad -le 17 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi

