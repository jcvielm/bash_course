#!/bin/bash
# Programa para ejemplificar la compresion de archivos con el comando gzip 
# Autor: Jose Vielman - @jcvielm

echo "Compresion de archivos de todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se comprime con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Comprimir un solo archivo, con un ratio 9"
gzip -9 9_options.sh
