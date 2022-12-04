#!/bin/bash

#Crear un subconjunto de carpetas
mkdir -p carpertaGeneral/{carpeta1,carpeta2,carpeta3}
#Crear una estructura de carpeta y subcarpeta
mkdir -p carpertaGeneral1/{carpeta1,carpeta2/{subcarpeta3,subcarpeta4},carpeta3}
#Estructura totamente personalizada
mkdir -p {carpertaGeneral2/{carpeta1,carpeta2/{subcarpeta3,subcarpeta4},carpeta3},carpeta1,carpeta2}

#Totalmente independientes
mkdir carpetaG1 carpetaG2 carpetaG3

#personalizado- > ojo no deben existir espacios en {}
mkdir -p nmap/{script,enum,exploit}