# ! /bin/bash

# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion

# Autor: Jose Carlos Vielman - @jcvielm

ubicacionActual=`pwd`
infokernel=$(uname -a)

echo "La ubicacion acutal es la siguiente: $ubicacionActual"
echo "Informacion del kernel: $infokernel"
