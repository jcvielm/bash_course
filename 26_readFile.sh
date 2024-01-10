#!/bin/bash
# Programa para ejemplificar la lectura de un archivo
# Autor: Jose Vielman - @jcvielm

echo "Leer un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=$(cat $1)
echo "$valorCat"

# Se utiliza la variable especial IFS (Internal Field Separator) para evitar que los espacios en blancos se recorten al inicio o al final
echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
