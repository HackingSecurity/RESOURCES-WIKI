# Conoce el sistema

El conocimientos de un sistema operativo como linux es fundamental para saber como están configuradas los servicios a los que normalmente como clientes hacemos uso.


El objetivo principal no es profundizar en los comandos de linux sino comprehender como se distribuyen las carpetas que ficheros son lo que nos darán información de configuraciones y ver algunos comando que nos brindan información del sistema.

Con la siguiente imagen podemos ver la jerarquía de carpetas en las que se divide linux

![](https://linuxfoundation.org/wp-content/uploads/standard-unix-filesystem-hierarchy.png "jerarquia de ficheros")


Para citar algunos de los directorios más importantes:

* /etc nos brinda los ficheros de configuración
* /dev contiene archivos de dispositivos para facilitar el acceso
* /home encontraremos el subdirectorio de los usuarios

# Emuladores

Una recomendación es el uso de Tmux GNU screen para probar todo lo relacionado con la shell


# Información del sistema

* whoami devuelve información del usuario actual
* id devuelve la identidad del usuario
* hostname Estable o imprime el nombre del sistema host actual
* uname  imprime información básica sobre el nombre 
* who muestra quien esta conectado

Ver otros comandos interesantes y aprender sobre ellos

pwd, ifconfig, ip, netstat, ss, ps, who, env, lsblk, lsusb, lsof, lspci


# Gestion de usuarios

Ficheros fundamentales para la gestión de usuarios son los siguientes

* /etc/shadow  almacenamiento de las contraseñas cifradas 
* /etc/passwd donde se registran los usuarios del sistema

* su es una utilidad para solicitar  las credenciales de usuarios adecuadas a través de PAM y cambia a esa ID de usuario.

* useradd crea un nuevo usuario
* userdel elimina una cuenta
* usermod modifica un usuario
* adddgroup , delgroup, passwd 


# Gestión de paquetes

Debemos ser capaces de instalar programas en linux para ello es básico saber que tipos de archivos existen para instalar y como se hacen.

Para ello es muy recomendable virtualizar un maquina virtual para realizar nuestras pruebas, esta virtualización se puede hacer con una máquina virtual en Virtualbox por ejemplo o quizas utilizando Docker.


* dpkg y aptitude es una herramienta pra instalar, eliminar, compilar programas.
* apt una interfaz a nivel de consola para realizar estas mismas tareas
* snap instala instantaneas de diferentes distribuciones por lo cual tienes mucha flexibilidad para la instalación de apps tanto en entorno de escritorio, nube o dispositivos IoT.
* gem gestor de paquete para Ruby
* pip gestor de paquete de python
* git sistema de control de versiones distribuidos

Profundizaremos en apt

* /etc/apt/source.list
* /etc/apt/source.list.d/repositorio
* apt list --installed


# Gestionar servicios y procesos

Todos ver que los procesos tienen un id asociado que estan en /proc/

Uso de systemctl para iniciar, parar, ver su estatus etc

* systemctl status ssh
* systemctl start ssh
* systemctl enable ssh -> esto habilitará el servicio una vez reiniciemos
* systemctl disabled ssh -> desabilita el servicio 
* sudo /usr/sbin/update-rc.d ssh enable (habilitamos el servicio ssh)

**Buscar procesos**
* ps -aux | grep ssh
* systemclt list-units --type=service

Si un servicio no iniciar por algún error podemos usar **journalctl** para ver que ha pasado

* journalctl -u ssh.service --no-pager

Para matar procesos usamos el comando:
* kill [number] [pid]

# Buscar archivos y directorios

* which python
* find / -type f -name *.conf -user root -size +20k -newermt 2022-12-08 -exec ls -al {} \; 2>/dev/null

* sudo updatedb
* locate *.conf

# Clasificar

* sort -> organiza alfabeticamente
* cat /etc/passwd | grep -v "nologin" | grep -v "false" | tr ":" " " | awk '{print $1, $2}' | sort | column -t

# Atajos en consola 

El trabajo que haremos en consola será constante y por tanto debemos tener practica a la hora de interactuar con el sistema.

* [TAB] Inicia el autocompletado
* [CTRL] + A -> Nos movemos al inicio de la linea
* [CTRL] + E -> Nos vemos al final de la linea
* [CTRL] + [<-]/[->] salta al principio de la palabra
* [ALT] + B/F saltar hacia atrás/delante una palabra    
* [CTRL] + U -> Borra todo, desde la posición actual del cursor hasta el inicio
* [CTRL] + k -> K Borra todo desde la posición actual del cursos hasta el final
* [CTRL] + W -> Borra la palabra que precede a la posición del cursor



# Seguridad

* Uso de fail2ban para controlar los intentos fallidos de inicio de sesión

**Enlaces interesantes**
https://www.snort.org/
http://www.chkrootkit.org/
https://cisofy.com/lynis/
https://packages.debian.org/sid/rkhunte

Podemos configurarlos y ver como funcionan

* Uso de Selinux o AppArmor para tener más modulos de seguridad. 
* Uso de iptables y familiarización de las distinta reglas que podemos optar

## Recomendaciones 

* Eliminar o deshabilitar todos los servicios y sofware innecesarios
* Eliminación de todos los servicios que dependan de mecanismos de autenticación no cifrados
* Asegurarse que NTP esté habilitado y que syslog se esté ejecutando
* Cada usuario tenga su propia cuenta
* Hacer cumplir contraseñas seguras
* Configure la caducidad de la contreseña y restrinja el useo de contraseñas anteriores
* Boqueo de cuentas de usuario después de errores de inicio de sesión 
* Desahabilite todos los binarios SUIG/SGID no deseados

Esta lista está incompleta ya que la seguridad no es un producto sino un proceso. Esto significa que siempre se deben tomar medidas especificas para proteger mejor los sistemas, y depende de los administradores que tan bien conocen sus sistemas operativos.





