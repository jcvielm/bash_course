# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else, else if
# Autor: Jose Vielman - @jcvielm

edad=0

echo "Ejemplo Sentencia If Else"

read -p "Indique cual es su edad: " edad
if [ $edad -le 17 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi

