#!/bin/bash

#declaracion de variables
opcion=0
nombre=Marco

echo "Opcion: $opcion Nombre: $nombre"

#export la variable nombre
export nombre

#Ejecutamos otro script, que recojerá la variable con el mismo nombre
./variable-recogida.sh

exit 0