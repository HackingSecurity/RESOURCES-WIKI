#!/bin/bash

#Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para 
#su posterior utilización

#Autor DIY

ubicacionActual= pwd
infoKernel= umane -a

#buscar man echo
echo -e "La ubicación actual es la siguiente $ubicacionActual"
echo -e "Informacion del kernel $infoKernel\n"