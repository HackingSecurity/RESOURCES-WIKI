#!/bin/bash

#Autor DIY


# pasos de argumentos 
# $0 El nombre del script
# $1 al ${10} el número de argumento, si son más de un digito se utiliza las llaves
# $# Contador de argumentos 
# $* Refiere a todos los argumentos (imprime)

#ejecución ./pasos_argumentos.sh arg1 arg2
#./pasos_argumentos.sh "programacion", "18:00 a 21:00"

nombreCurso=$1
horarioCurso=$2


echo "El nombre del curso es : $nombreCurso, en el horario $horarioCurso"



