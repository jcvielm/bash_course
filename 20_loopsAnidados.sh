#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de loops anidados
# Autor: Jose Vielman - @jcvielm

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $fil _ $nombre"
    done
done
