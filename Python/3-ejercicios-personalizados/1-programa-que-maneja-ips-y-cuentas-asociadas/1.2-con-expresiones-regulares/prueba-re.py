import re

cadena = "192.168.1.1"
patron = re.compile('\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}')
match = patron.search(cadena)

print("Match : {}".format(match))
print("Retorno cadena de carecteres que coinciden RE : {}".format(match.group()))

