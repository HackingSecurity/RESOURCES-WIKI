# Tres grande campos en expresiones regulares

Estos categoria RE las obtenemos normalmente en linux:

PCRG -> lenguaje perl
ERG y BRE asociadas a POSIX -> bash


# PCRE perl compatible regular expressions
# ERE extended regular expressions
# BRE basic regular expressions

#https://en.wikipedia.org/wiki/Regular_expression
#https://en.wikipedia.org/wiki/Perl_Compatible_Regular_f						 	Expressions


# PYTHON
No solamente la RE están asociadas a la consola, sino que se puede encontrar en cualquier lenguaje de programación por que necesitemos buscar o parchear algo con alguna cadena/s de caracteres.

En python podemos usar la libreria "import re"

[platzi](https://platzi.com/blog/expresiones-regulares-python/)
[python-re](https://docs.python.org/es/3/howto/regex.html)

1) Crear objetivo de tipo patron

Patro para buscar una ipv4 como por ejemplo 192.168.1.1
* patron = re.compile('\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{\1,3}')

2) porteriormente ya podemos buscar una coincidencia en nuestro array, cadena o estructura de datos que tengamos

cadena = "192.168.1.1"
patron.search(cadena)

3) mostrar la coincidencia

print("Retorno cadena de carecteres que coinciden RE : {}".format(match.group()))