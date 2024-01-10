#!/bin/bash
# Programa para ejemplificar la compresion de archivos con el comando pbzip2 
# Autor: Jose Vielman - @jcvielm

echo "Empaquetado y compresion de archivos de todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh #Empaquetamos
pbzip2 -f shellCourse.tar #Comprimimos

echo "Empaquetar y comprimir un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2 # Empaquetamos y mandamos para comprimir con pbzip2
