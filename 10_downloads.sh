11_retoDos.sh                                                                                       0000744 0001752 0001752 00000002142 14540354600 014417  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                              12_ifElseIfElse.sh                                                                                  0000744 0001752 0001752 00000000621 14540354513 015303  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else, else if
# Autor: Jose Vielman - @jcvielm

edad=0

echo "Ejemplo Sentencia If Else"

read -p "Indique cual es su edad: " edad
if [ $edad -le 17 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi

                                                                                                               12_ifElse.sh                                                                                        0000744 0001752 0001752 00000001010 14540354471 014207  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else 
# Autor: Jose Vielman - @jcvielm

notaClase=0
edad=0

echo "Ejemplo Sentencia If Else"
read -n1 -p "Indicar cual es su nota (1-9): " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno ha aprobado la materia"
else
    echo "El alumno no ha aprobado la materia"
fi

read -p "Indique cual es su edad: " edad
if [ $edad -le 17 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        13_retoTres.sh                                                                                      0000744 0001752 0001752 00000003407 14540626571 014627  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa que solicita ingresar un numero del 1 al 5 e imprimir si los numeros se encuentran en el rango.

regexNumero='^[1-5]$'

read -p "Ingresar un numero entre 1 al 5 y se realizara una accion aleatoria: " numero

case $numero in
    1) read -p "Has elegido opcion 1. Desea imprimir la ruta en que nos encontramos? tipear si o no: " siono
        if [ $siono = "si" ]; then
            pwd
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    2) read -p "Has elegido opcion 2. Desea imprimir la fecha? tipear si o no: " siono
        if [ $siono = "si" ]; then
            date
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    3) read -p "Has elegido opcion 3. Desea imprimir las especificaciones con neofetch? tipear si o no: " siono
        if [ $siono = "si" ]; then
            neofetch
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    4) read -p "Has elegido opcion 4. Desea ver el contenido de la carpeta? tipear si o no: " siono
        if [ $siono = "si" ]; then
            ls -lsa
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    5) read -p "Has elegido opcion 5. Desea imprimir todas las variables de entorno disponibles? tipear si o no: " siono
        if [ $siono = "si" ]; then
            env
        elif [ $siono = "no" ]; then
            echo "Favor correr de vuelta el codigo"
        else
            echo "Error"
        fi
    ;;
    *) echo "Error"
    ;;
esac

                                                                                                                                                                                                                                                         14_ifAnidados.sh                                                                                    0000744 0001752 0001752 00000001127 14540631372 015052  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Autor: Jose Vielman - @jcvielm

notaClase=0
continua=""

echo "Ejemplo Sentencia If Else"
read -n1 -p "Indicar cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno ha aprobado la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel (s/n): " continua
    if [ $continua == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte."
    fi
else
    echo "El alumno no ha aprobado la materia"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                         15_expresionesCondicionales.sh                                                                      0000744 0001752 0001752 00000001712 14541346604 020053  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Jose Vielman - @jcvielm

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un ninho o ninha"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Paraguay" ] || [ $pais = "Argentina" ]; then
    echo "La persona es de Sudamerica"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

                                                      16_case.sh                                                                                          0000744 0001752 0001752 00000000645 14541350312 013723  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Jose Vielman - @jcvielm

opcion=""

echo -e "\nEjemplo Sentencia Case"
read -n1 -p "Ingrese una opcion de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\n Operacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    *) echo "Opcion Incorrecta";;
esac
                                                                                           17_arreglos.sh                                                                                      0000744 0001752 0001752 00000002027 14543630414 014631  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de arreglos (Arrays)
# Autor: Jose Vielman - @jcvielm

arregloNumeros=(1 2 3 4 5 6 7)
arregloCadenas=(Marco, Antonio, Jose, Julieta)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

# Imprimir los tamanos de los arreglos
echo "Tamano de arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamano de arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamano de arreglo de Rangos: ${#arregloRangos[*]}"

# Imprimir la posicion 3 del arreglo de los numeros, cadenas de rango
echo "Posicion 3 de arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 de arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 de arreglo de Rangos: ${arregloRangos[3]}"

# Anadir y eliminar valores en un arreglo
arregloNumeros[6]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamano arreglo de numeros: ${#arregloNumeros[*]}"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         18_forloop.sh                                                                                       0000744 0001752 0001752 00000001202 14545067200 014465  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for loop
# Autor: Jose Vielman - @jcvielm

arregloNumeros=(1 2 3 4 5 6 7)

echo "Iterar en la lista de numeros"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Jose" "Carlos" "Pepe" "Popa"
do
    echo "Nombres: $nom"
done

echo "Iterar en Archivos"
for fil in *
do
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero: $i"
done

                                                                                                                                                                                                                                                                                                                                                                                              19_whileloop.sh                                                                                     0000744 0001752 0001752 00000000347 14545074660 015031  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while loop
# Autor: Jose Vielman - @jcvielm

numero=1

while [ $numero -le 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done
                                                                                                                                                                                                                                                                                         1_utilityPostgres.sh                                                                                0000744 0001752 0001752 00000000063 14540354752 016161  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

echo 'Hola bienvenido wenas tardes'


                                                                                                                                                                                                                                                                                                                                                                                                                                                                             20_loopsAnidados.sh                                                                                 0000744 0001752 0001752 00000000372 14545076465 015621  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de loops anidados
# Autor: Jose Vielman - @jcvielm

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $fil _ $nombre"
    done
done
                                                                                                                                                                                                                                                                      21_breakContinue.sh                                                                                 0000744 0001752 0001752 00000000620 14545077074 015605  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Jose Vielman - @jcvielm

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_downloads.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo: $fil _ $nombre"
        fi
    done
done
                                                                                                                22_menuOpciones.sh                                                                                  0000744 0001752 0001752 00000007371 14545604216 015465  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para permitir el manejo de las utilidades de Postgres
# Autor: Jose Carlos Vielman - @jcvielm

opcion=0

while : # WHILE INFINITO
do
    # Limpiar la pantalla
    clear
    # Desplegar el menu de opciones
    echo "█████████████████████████████████████████"
    echo "██████████████▀▀▀░░░░░░░▀▀▀██████████████"
    echo "███████████▀░░░░░░░░░░░░░░░░░▀███████████"
    echo "███████████│░░░░░░░░░░░░░░░░░░░│█████████"
    echo "██████████▌│░░░░░░░░░░░░░░░░░░░│▐████████"
    echo "██████████░└┐░░░░░░░░░░░░░░░░░┌┘░████████"
    echo "██████████░░└┐░░░░░░░░░░░░░░░┌┘░░████████"
    echo "██████████░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░████████"
    echo "██████████▌░│██████▌░░░▐██████│░▐████████"
    echo "███████████░│▐███▀▀░░▄░░▀▀███▌│░█████████"
    echo "██████████▀─┘░░░░░░░▐█▌░░░░░░░└─▀████████"
    echo "██████████▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄████████"
    echo "████████████▄─┘██▌░░░░░░░▐██└─▄██████████"
    echo "█████████████░░▐█─┬┬┬┬┬┬┬─█▌░░███████████"
    echo "████████████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐██████████"
    echo "█████████████▄░░░└┴┴┴┴┴┴┴┘░░░▄███████████"
    echo "███████████████▄░░░░░░░░░░░▄█████████████"
    echo "██████████████████▄▄▄▄▄▄▄████████████████"
    echo "█████████████████████████████████████████"
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

# Leer los datos del usuario - capturar informacion
read -n1 -p "Ingrese una opcion [1-5]: " opcion
#echo -e "\n"
# Validar la opcion ingresada
case $opcion in
    1) 
        echo -e "\nInstalar postgres........"
        sleep 3
        ;;

    2)
        echo -e "\nDesinstalar postgres....."
        sleep 3
        ;;
    3)
        echo -e "\nSacar respaldo..........."
        sleep 3
        ;;

    4)
        echo -e "\nRestaurar respaldo......."
        sleep 3
        ;;
    5)
        echo -e "\nSaliendo del programa....."
        exit 0 # Rompemos la ejecucion del programa y se sale
        ;;
    esac
done

                                                                                                                                                                                                                                                                       23_menuOpcionesDos.sh                                                                               0000744 0001752 0001752 00000012121 14545776537 016141  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para permitir el manejo de las utilidades de Postgres
# Autor: Jose Carlos Vielman - @jcvielm

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menu de opciones
    echo " ____                                                  _     "
    echo " |  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___   __ _    __| | ___ "
    echo -e " | |_) | '__/ _ \ / _\` | '__/ _\` | '_ \` _ \ / _\` |  / _\` |/ _ \ "
    echo " |  __/| | | (_) | (_| | | | (_| | | | | | | (_| | | (_| |  __/ "
    echo " |_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|\__,_|  \__,_|\___| "
    echo "                  |___/                                         "
    echo "  _   _ _   _ _ _     _           _            "
    echo " | | | | |_(_) (_) __| | __ _  __| | ___  ___  "
    echo -e " | | | | __| | | |/ _\` |/ _\` |/ _\` |/ _ \/ __| "
    echo " | |_| | |_| | | | (_| | (_| | (_| |  __/\__ \ "
    echo "  \___/ \__|_|_|_|\__,_|\__,_|\__,_|\___||___/ "
    echo -e "\n"
    echo "█████████████████████████████████████████"
    echo "██████████████▀▀▀░░░░░░░▀▀▀██████████████"
    echo "███████████▀░░░░░░░░░░░░░░░░░▀███████████"
    echo "███████████│░░░░░░░░░░░░░░░░░░░│█████████"
    echo "██████████▌│░░░░░░░░░░░░░░░░░░░│▐████████"
    echo "██████████░└┐░░░░░░░░░░░░░░░░░┌┘░████████"
    echo "██████████░░└┐░░░░░░░░░░░░░░░┌┘░░████████"
    echo "██████████░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░████████"
    echo "██████████▌░│██████▌░░░▐██████│░▐████████"
    echo "███████████░│▐███▀▀░░▄░░▀▀███▌│░█████████"
    echo "██████████▀─┘░░░░░░░▐█▌░░░░░░░└─▀████████"
    echo "██████████▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄████████"
    echo "████████████▄─┘██▌░░░░░░░▐██└─▄██████████"
    echo "█████████████░░▐█─┬┬┬┬┬┬┬─█▌░░███████████"
    echo "████████████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐██████████"
    echo "█████████████▄░░░└┴┴┴┴┴┴┴┘░░░▄███████████"
    echo "███████████████▄░░░░░░░░░░░▄█████████████"
    echo "██████████████████▄▄▄▄▄▄▄████████████████"
    echo "█████████████████████████████████████████"
    echo -e "\n"
    echo "-----------------------------------------"
    echo "          PROGRAMA DE UTILIDADES         "
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo -e "\n"
    echo "1. Procesos actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en el disco"
    echo "4. Informacion de red"
    echo "5. Variables de entorno configuradas"
    echo "6. Informacion Programa"
    echo "7. Backup informacion"
    echo "8. Ingrese una opcion"

# Leer los datos del usuario - capturar informacion
read -n1 -p "Ingrese una opcion [1-8]: " opcion
#echo -e "\n"
# Validar la opcion ingresada
case $opcion in
    1) 
        echo -e "\nPROCESOS ACTUALES"
        sleep 1
        ps axu
        sleep 3
        ;;
    2)
        echo -e "\nMEMORIA DISPONIBLE"
        sleep 1
        free -h
        sleep 3
        ;;
    3)
        echo -e "\nESPACIO EN EL DISCO"
        sleep 1
        df -h
        sleep 3
        ;;

    4)
        echo -e "\nINFORMACION DE RED"
        sleep 1
        ifconfig
        sleep 3
        ;;
    5)
        echo -e "\nVARIABLES DE ENTORNO CONFIGURADAS"
        sleep 1
        env -u VAR
        sleep 3
        ;;
    6)
        echo -e "\nINFORMACION PROGRAMA"
        sleep 1
        dpkg -l | more
        sleep 3
        ;;
    7)
        echo -e "\nBACKUP INFORMACION"
        sleep 1
        tar -czvf archivosCompresos.tar.gz *.sh
        sleep 3
        ;;
    8)
        echo -e "\nSALIENDO DEL PROGRAMA....."
        sleep 1
        exit 0 
        ;;
    esac
done

                                                                                                                                                                                                                                                                                                                                                                                                                                               24_archivosDirectorios.sh                                                                           0000744 0001752 0001752 00000001303 14545653345 017044  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
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

                                                                                                                                                                                                                                                                                                                             25_writeFile.sh                                                                                     0000744 0001752 0001752 00000000343 14546016622 014745  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar la escritura en un archivo
# Autor: Jose Vielman - @jcvielm

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adicion multilinea
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                                             26_readFile.sh                                                                                      0000744 0001752 0001752 00000000723 14546335551 014536  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
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
                                             27_fileOperations.sh                                                                                0000744 0001752 0001752 00000000671 14547116355 016011  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Jose Vielman - @jcvielm

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar los archivos .txt"
rm *.txt
                                                                       28_tar.sh                                                                                           0000744 0001752 0001752 00000000315 14547337511 013607  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Jose Vielman - @jcvielm

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                                                                                   29_gzip.sh                                                                                          0000744 0001752 0001752 00000000607 14547340505 013774  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar la compresion de archivos con el comando gzip 
# Autor: Jose Vielman - @jcvielm

echo "Compresion de archivos de todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se comprime con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Comprimir un solo archivo, con un ratio 9"
gzip -9 9_options.sh
                                                                                                                         2_variables_2.sh                                                                                    0000744 0001752 0001752 00000000174 14540354741 015122  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash 
# Programa para revisar la declaracion de variables

echo "Opcion nombre pasada del script anterior: $nombre"

                                                                                                                                                                                                                                                                                                                                                                                                    2_variables.sh                                                                                      0000744 0001752 0001752 00000000453 14540354727 014705  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash 
# Programa para revisar la declaracion de variables

opcion=0
nombre=Jose

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export nombre

# Llamar al siguiente script para recuperar la variable

./2_variables_2.sh


                                                                                                                                                                                                                     30_pbzip2.sh                                                                                        0000744 0001752 0001752 00000000705 14547570240 014221  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar la compresion de archivos con el comando pbzip2 
# Autor: Jose Vielman - @jcvielm

echo "Empaquetado y compresion de archivos de todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh #Empaquetamos
pbzip2 -f shellCourse.tar #Comprimimos

echo "Empaquetar y comprimir un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2 # Empaquetamos y mandamos para comprimir con pbzip2
                                                           3_tipoOperador.sh                                                                                   0000744 0001752 0001752 00000001705 14540354721 015400  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para revisar los tipos de operadores

# Autor: Jose Carlos Vielman - @jcvielm

numA=10
numB=4

echo "Operadores Aritmeticos"

echo "Numeros: A=$numA y B=$numB"

echo "Sumar A + B =" $((numA + numB))

echo "Restar A - B =" $((numA - numB))

echo "Multiplicar A * B =" $((numA * numB))

echo "Dividir A /  B =" $((numA / numB))

echo "Residuo A %  B =" $((numA % numB))


echo -e "\nOperadores Relacionales"

echo "Numeros: A=$numA y B=$numB"

echo "A > B =" $((numA > numB))

echo "A < B =" $((numA < numB))

echo "A >= B =" $((numA >= numB))

echo "A <= B =" $((numA <= numB))

echo "A == B =" $((numA == numB))

echo "A != B =" $((numA != numB))


echo -e "\nOperadores de Asignacion"

echo "Numeros: A=$numA y B=$numB"

echo "Sumar A += B =" $((numA += numB))

echo "Restar A -= B =" $((numA -= numB))

echo "Multiplicacion A *= B =" $((numA *= numB))

echo "Dividir A /= B =" $((numA /= numB))

echo "Residuo A %= B =" $((numA %= numB))

                                                           4_argumentos.sh                                                                                     0000744 0001752 0001752 00000002675 14540354701 015123  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"

# Numero de parametros enviados
printf "\nPARAMETRO ESPECIAL \$#\n"
echo "El numero de parametros enviados es $#"

# Lista de parametros en un parametro
printf "\nPARAMETRO ESPECIAL \$*\n"
echo "Los parametros enviados son: $*"

# Nombre del script
printf "\nPARAMETRO ESPECIAL \$0\n"
echo "El nombre del script es $0"

# Lista de parámetros (un parámetro por argumento) 
printf "\nPARÁMETRO ESPECIAL \$@\n"
echo "Parámetros (un parámetro por argumento) :" 
for param in $@; do 
  echo "$param" 
done 

# Muestra el PID del script 
printf "\nPARÁMETRO ESPECIAL \$$\n" 
echo "El PID del script ejecutado es: $$" 

# Creamos un proceso en segundo plano 
printf "\nPARÁMETRO ESPECIAL \$!\n"
echo "Ejecutando el comando 'sleep' ejecución en segundo plano..."
sleep 10 & 

# Muestra el PID del proceso ejecutado en segundo plano 
echo "El PID del comando 'sleep' en segundo plano es: $!" 

# Muestra el código de retorno del último comando, en este caso "echo " 
printf "\nPARÁMETRO ESPECIAL \$?\n"
echo "El código de retorno del comando es: $?" 

# Generamos un error para ejemplificar el cas
echo "Generando un error..." 
lss -l

# Muestra el código de retorno del último comando 
printf "\nPARÁMETRO ESPECIAL \$?\n" 
echo "El código de retorno del comando erróneo es: $?" 

                                                                   5_subtitucionComando.sh                                                                             0000744 0001752 0001752 00000000514 14540354672 016606  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion

# Autor: Jose Carlos Vielman - @jcvielm

ubicacionActual=`pwd`
infokernel=$(uname -a)

echo "La ubicacion acutal es la siguiente: $ubicacionActual"
echo "Informacion del kernel: $infokernel"
                                                                                                                                                                                    6_readEcho.sh                                                                                       0000744 0001752 0001752 00000000627 14540354662 014454  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y $REPLY

# Autor: Jose Carlos Vielman - @jcvielm

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo -n "Opcion: $option, backupName: $backupName"

                                                                                                         7_read.sh                                                                                           0000744 0001752 0001752 00000000560 14540354653 013652  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read

# Autor: Jose Carlos Vielman - @jcvielm

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo -n "Opcion: $option, backupName: $backupName"

                                                                                                                                                8_2_validarInformacion.sh                                                                           0000744 0001752 0001752 00000001032 14540354643 016762  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validar
# Autor: Jose Vielman @jcvielm

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"

# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n" # Para imprimir un salto de linea

read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n" 

echo "Opcion: $option, backupName: $backupName"

read -s -p "Clave: " clave
echo -e "\n" 
echo "Clave: $clave"


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      8_expresionesRegulares.sh                                                                           0000744 0001752 0001752 00000002021 14540354632 017145  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ejemplo3.sh                                                                                         0000744 0001752 0001752 00000000166 14535145157 014232  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
total=1
while [ -n "$1" ]; do # while loop starts
	echo "#$total = $1"
	total=$(($total + 1))
	shift
done
                                                                                                                                                                                                                                                                                                                                                                                                          ejemplo5.sh                                                                                         0000744 0001752 0001752 00000000163 14545403520 014221  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
for i in {1..5}
do
    if [[ $i == 2 ]]; then
        continue;
    else
        echo "$i"
    fi
done
                                                                                                                                                                                                                                                                                                                                                                                                             ejem_var_entorno.sh                                                                                 0000744 0001752 0001752 00000000215 14532364713 016041  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             # ! /bin/bash

echo "$PS1"
echo "$LOGNAME"
echo "$SHLVL"

# env
# comando para imprimir todas las variables de entorno del sistema operativo
                                                                                                                                                                                                                                                                                                                                                                                   iterate_parameters.sh                                                                               0000744 0001752 0001752 00000000305 14535133422 016357  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash
total=1
for var in "$*"; do
	echo "\$* =======> #$total = $var"
	total=$(($total + 1))
done
total=1
for var in "$@"; do
	echo "\$@ =======> #$total = $var"
	total=$(($total + 1))
done

                                                                                                                                                                                                                                                                                                                           reto5.sh                                                                                            0000744 0001752 0001752 00000000433 14547334646 013555  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para enviar el output de las variables a que se guarden en un archivo

option=$(cowsay "$(date)") 
result=$(neofetch)

echo -e "El valor de option es: \n$option \nEl valor de result es: \n$result" 
echo -e "$option \n$result" >> log-$(date +%Y%m%d%H%M%S).txt
                                                                                                                                                                                                                                     utilityHost.sh                                                                                      0000744 0001752 0001752 00000000305 14532675476 015061  0                                                                                                    ustar   yioze_kali                      yioze_kali                                                                                                                                                                                                             #!/bin/bash

# Programa para declarar una variable option y otra result, donde inicializamos e imprimimos los valores

option=$(cowsay "$(date)") 
result=$(neofetch)

echo "$option"
echo "$result"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           