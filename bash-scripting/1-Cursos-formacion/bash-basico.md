# Bash básico
Nos familiarizamos con algunos comandos fundamentales para el uso de terminal y del sistema operativo linux.


# Ficheros importante

## clasficar los ficheros

|Fichero|Descripción|
|-|-|
|/etc/passwd|Contiene los nombre de los usuario del equipo|
|/etc/shadow|Contiene información de las contraseñas de los usuarios|
|/etc/shells|Shells que tiene el equipo|
|/etc/group|Cada usuario cuando se crea tiene su propio grupo|

# Comandos importante

|Comando|Descripción|
|:-:|:-|
|su|"su usuario" cambia de usuario|
|sudo|"sudo comando" Ejecuta en modo adminitrador|


# Filtrado de cadenas

|Comando|Descripción|
|-|-|
|grep|"grep -oP" Uso de RE|
|tr|"tr ' ' ','" Sustituciones de concurrencias|
|awk|"awk '{print $1}' FS=':'"|
|colum|Uso para mostrar la información más ordenada|
|cut|"cut -d ':' -f 1" igual que awk

# Formas de mostrar información de ficheros

|Comando|Descripción|
|:-:|:-|
|tail|"tail -n 1" Muestra la ultima linea del fichero|
|


# Información de usuarios y grupos


|Comando|Descripción|
|-|-|
|id|Muestra a que grupo pertenece el usuario|
|whoami|Muestra el usuario actual|
|passwd|"passwd usuario" cambiar contraseña


## Creacion de un usario

Nos posicionamos en la carpeta /home y aqui creamos el directorio que vamos asignar al nuevo usuario "mkdir nombre_usuario"

|Comando|Descripción|
|-|-|
|useradd|"useradd -d /home/pepito -s /bin/bash pepito" creamos un usuario|
|usermod|"usermod -a -G nuevoGrupo usuario" añadimos al usuario en el grupo NuevoGrupo|
||Importante que los miembros de un grupo se ven a fectados los permisos a ese grupo|



## Creación de grupo

|Comando|Descripción|
|:-:|:-|
|groupadd|"groupadd Colegio" Creamos un grupo nuevo|
|

# Permisos  y propietarios

|Comando|Descripción|
|:-:|:-|
|chown|"chown usuario" Cambiamos el propietario de una fichero/carpeta
||"chown pepito:pepito pepito" al directorio pepito cambiamos propietario y grupo a pepito
|chgrp|"chgrp grupo directorio/fichero" Cambiamos el grupo de un fichero/carpeta
|rwx|r -> read, w -> write, x -> file: executable directory: (cd directorio)|
|chmod|"chmod g+w fichero/directorio" Añadimos el permiso de escritura|
|chattr|"chattr +i -V fichero" Permiso especial, no se puede borrar, ni el root puede|
|lsattr|"lsattr fichero" Muestra los permisos especiales del fichero| 



---
---
Plantillas

# 

|Comando|Descripción|
|:-:|:-|
