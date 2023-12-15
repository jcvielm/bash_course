# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validar utilizando expresiones regulares
# Autor: Jose Vielman @jcvielm

identificacionRegex='^[0-9]{7}$'
paisRegex='^BR|AR|PY|BO'
fechaNacimientoRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|2[0-9]|3[0-1])$'

echo "Expresiones Regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales del pais en que reside: " pais
read -p "Ingresar la fecha de nacimiento en formato [YYYYMMDD]: " fechaNacimiento

# Validar Identificacion

if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi

# Validacion Pais

if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valido"
else
    echo "Pais $pais invalido"
fi

# Validacion Fecha Nacimiento

if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valido"
else
    echo "Fecha Nacimiento $fechaNacimiento invalido"
fi
