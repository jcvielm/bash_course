#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while loop
# Autor: Jose Vielman - @jcvielm

numero=1

while [ $numero -le 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done
