# Objetivo

Nuestro objetivo es repasar los conceptos de RE.

# Familiarizarnos con el fichero /etc/passwd (_/)

Queremos listar aquellos usuarios que usan una shell independientemente de que shell usen.

Previamente debemos conocer que tipo de shells tenemos /etc/shells

## Solucion

* cat /etc/shells -> analizando este fichero  y vemos que terminan en "sh" "tmux" y "screen" 
  
  OJO: "\" lo usamos para escapar caracteres especiales
       "$" para buscar al final de la linea.

* cat /etc/passwd | grep  "sh$\|tmux$\|screen$" | awk '{print $1}' FS=":"


