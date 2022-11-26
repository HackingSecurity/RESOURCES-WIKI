#!/bin/bash

#Programa para revisar los tipos de operadores
#Autor: DIY 

numA=10
numB=3

echo "Operadores aritméticos"
echo "Numeros: A=$numA y B=$numB"
echo "Suma:" $((numA + numB))
echo "Resta:" $((numA - numB))
echo "Multiplicación :" $((numA * numB))
echo "Division :" $((numA / numB))
echo "Resto :" $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nOperadores de asignación"
echo "A += B" $((numA += numB))
echo "A -= B" $((numA -= numB))
echo "A *= B" $((numA *= numB))
echo "A /= B" $((numA /= numB))
echo "A %= B" $((numA %= numB))


exit 0