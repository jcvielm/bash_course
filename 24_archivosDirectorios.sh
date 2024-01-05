#!/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios
# Autor: Jose Vielman - @jcvielm

opcion1=0
opcion2=0

echo "Archivos - Directorios"
read -n1 -p "Ingresar si desea crear un directorio [d] o un archivo [f]: " opcion1
echo -e "\n"
read -p "Ingresar nombre del archivo/directorio: " opcion2
if [ $opcion1 = "d" ]; then
    mkdir -m 755 $opcion2 # Para darle los permisos de ejecucion, lectura y escritura, y a cualquier otro usuario lectura y escritura.
    echo "Directorio creado correctamente"
    ls -la $opcion2 
elif [ $opcion1  = "f" ]; then
    touch $opcion2
    echo "Archivo creado correctamente"
    ls -la $opcion2
else
    echo "No existe esa opcion: $opcion1"
fi

