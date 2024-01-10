#!/bin/bash
# Programa para ejemplificar la escritura en un archivo
# Autor: Jose Vielman - @jcvielm

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adicion multilinea
cat <<EOM >>$1
$2
EOM
