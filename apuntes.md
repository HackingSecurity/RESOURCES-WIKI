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

