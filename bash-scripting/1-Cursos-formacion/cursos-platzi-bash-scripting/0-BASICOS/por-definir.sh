#!/bin/bash

#creo una variable
NEW_DIR=platzi


#si no existe este directorio
if [ ! -d "~/backup/$NEW_DIR"]; then
    mkdir ~/backup/$NEW_DIR
# finalizo la instruccion if
fi

cp   ~/backup/$NEW_DIR
echo "`date` : todo listo jefe"
