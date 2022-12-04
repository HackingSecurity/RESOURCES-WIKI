#!/bin/bash


#programa para ejemplificar como capturar la información y validarla utilizando expresiones regulares
#Autor: DIY

identificacionRegex='^[0-9]{3}'
paisRegex='^EC|COL|US$'
FechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

#No hace falta declarar las variables vacias
#identificacion=""

echo "Expresiones regulares"
read -p "Ingresar una identificación: " identificacion
read -p "Ingresar las iniciales de un pais: [EC, COL, US]" pais
read -p "Ingresar las fechas de nacimiento [yyyMMdd]" fechaNacimiento

#validación identificación

if [[ $identificacion =~ identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi


if [[ $pais =~ paisRegex ]]; then
	echo "Pais $pais válida"
else
	echo "Pais $pais inválida"
fi

if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
	echo "Fecha de nacimiento $fechaNacimiento válida"
else 
	echo "Fecha de nacimiento $fechaNacimiento inválida"
fi
