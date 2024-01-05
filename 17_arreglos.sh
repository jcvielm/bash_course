#!/bin/bash
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
