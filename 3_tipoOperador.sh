# ! /bin/bash

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
echo "Residuio A %= B =" $((numA %= numB))
