# ! /bin/bash
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

