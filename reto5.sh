#!/bin/bash

# Programa para enviar el output de las variables a que se guarden en un archivo

option=$(cowsay "$(date)") 
result=$(neofetch)

echo -e "El valor de option es: \n$option \nEl valor de result es: \n$result" 
echo -e "$option \n$result" >> log-$(date +%Y%m%d%H%M%S).txt
