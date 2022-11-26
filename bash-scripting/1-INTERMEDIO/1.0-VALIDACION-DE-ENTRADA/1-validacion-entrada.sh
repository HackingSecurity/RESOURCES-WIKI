#!/bin/bash

#Validar/capturar el ingreso de información y el numero de caracteres permitidos
#Autor: DIY

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"

#Acepta el ingreso de información de un solo caracter
read -n1 -p "Ingresar una opción: " opcion
#Salto de linea
echo -e "\n"
#Acepta el ingreso de informacion de 10 caracteres
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion:$opcion, backupName:$backupName"
#Maneja informacion confidencial
read -s -p "clave:" clave
echo "Clave: $clave"