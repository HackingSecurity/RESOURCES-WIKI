import csv
#uso de regular expressions
import re
#https://docs.python.org/es/3/library/csv.html 



"""
    * Creamos diccionario con claves que relacionan ips -> string
    * Cada clave debe estar compuesta de una lista que no admite repetidos
"""

#Inicialmente nuestro diccionario esta vacio
dic_ips = {}


# Comprobar valores de una fila del cvs con la estructura de datos 
def comoprobarFila(ip, correo):

    # Si el diccionario esta vacia añadimos sin más
    if (len(dic_ips) == 0):
      dic_ips[ip] = {correo}
    # si existe la ip intentamos añadir un elemento a conjunto:
    # si está no lo mete
    # si no está lo mete
    elif (dic_ips.get(ip) != None):
      dic_ips[ip].add(correo)
    # Si no existe la ip añadimos la ip y el correo
    else :
      dic_ips[ip] = {correo}



  


"""
  La withpalabra clave ' ' se usa junto con el método open() 
  ya que simplifica el manejo de excepciones y cierra 
  automáticamente el archivo CSV.

  Ahora debemos leer cada fila que debe estar preformateada, es decir
  que sabemos la "columna" que debemos seleccionar.

  Una vez que conseguimos la ip vemos si está en el diccionario:

  * Si no está lo agregamos
  * Si está comprobamos el correo que esta asociado a la ip:
    ** Si esta no lo añadimos
    ** sino está lo añadimos
"""
with open('csv_ips.csv', newline='', mode='r') as File:  
    filas = csv.reader(File)
    for fila in filas:
        stringFila = str(fila)
        arrayString = stringFila.split(',')
        ip = arrayString[1]
        correo = arrayString[3]
        comoprobarFila(ip,correo)
        #print(ip,correo)
        

for clave, valor in dic_ips.items():
    # Hacer algo con esa clave
    print(clave, valor)