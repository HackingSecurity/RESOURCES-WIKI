#!/bin/bash

#Programa para simplificar  como capturar la información del usuario utilizando el comando read
#echo, read y $REPLY
#Autor: DIY

option=0
backupName=""

echo "Programa utilidades Postgres"
#utilizamos la opcion p para mostrar información
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"