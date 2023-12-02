# ! /bin/bash

# Programa para declarar una variable option y otra result, donde inicializamos e imprimimos los valores

option=$(cowsay "$(date)") 
result=$(neofetch)

echo "$option"
echo "$result"
