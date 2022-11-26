#!/bin/bash

#Programa para simplificar  como capturar la información del usuario utilizando el comando 
#echo, read y $REPLY

#Autor: DIY

option=0
backupName=""

echo "Programa utilidades Postgres"
echo -n "Ingresar una opción: "
read 
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"
