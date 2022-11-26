#!/bin/bash

#Programa para ejemplificar el uso de la sentencia de decisión if, else if,  else
#Autor: DIY

edad=0

echo "Ejemplo Sentencia if-else-if-else"
read -p "Cual es su edad " edad
echo -e "\n"

# le (menor o igual) ge (mayor o igual) eq (igual)

if [ $edad -le 18 ]; then
    echo "La persona en menor"
elif [ $edad -ge 19 ] && [ $edad -le 64]; then
    echo "La persona es mayor"
else   
    echo "La persona es un adulto mayor"
fi



