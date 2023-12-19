# !/bin/bash
# Programa que solicita informacion de nombre, apellido, edad, direccion, numero telefonico, e imprime toda la informacion

regexNombre='^[a-zA-Z]+(\?:\s[a-zA-Z]+)*$'
regexApellido='^[a-zA-Z]+(\?:\s[a-zA-Z]+)*$'
regexEdad='^([1-9]|[1-9][0-9])$'
regexDireccion='^([A-Za-z]*)'
regexNumTelef='^09[0-9]{8}$'

read -p "Ingresar un nombre: " nombre
read -p "Ingresar un apellido: " apellido
read -p "Ingresar una edad: " edad
read -p "Ingresar una direccion: " direccion
read -p "Ingresar un telefono celular: " numTelef

if [[ $nombre =~ $regexNombre ]]; then
    echo "Nombre: $nombre"
else
    echo "Error. Nombre no valido"
fi

if [[ $apellido =~ $regexApellido ]]; then
    echo "Apellido: $apellido"
else
    echo "Error. Apellido no valido"
fi

if [[ $edad =~ $regexEdad ]]; then
    echo "Edad: $edad"
else
    echo "Error. Edad no valida"
fi

if [[ $direccion =~ $regexDireccion ]]; then
    echo "Direccion: $direccion"
else
    echo "Error. Direccion no valido"
fi

if [[ $numTelef =~ $regexNumTelef ]]; then
    echo "Numero de Telefono: $numTelef"
else
    echo "Error. Numero de Telefono no valido"
fi
