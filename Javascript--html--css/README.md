# Conceptos desarrollo web:
* HTML -> Lenguaje de marcado (los huesos del cuerpo humano)
* CSS -> Lenguaje de hojas de estilo (musculatura en el cuerpo humano)



# Proceso de renderizado (lo que pasa por debajo y lo hace el navegador)

Tranformar las etiquetas a un objeto -> entienda el navegador (proceso intermedio)
* DOM (Documents Object Model)
  
Traducción de css por parte del navegador
* CSSOM

Un arbol que coge el DOM y CSSOM juntos para poder renderizarlo
* RENDER TREE


Esta parte es conceptual y realmente pasa pero también tenemos que tener en cuenta la traducción
más técnica de lo que pasa:

## 1) Procesar html y construcción del dom

1) La traducción se hace cogiendo el código proporcionado (html) y genera bytes
2) posteriomente lo transforma en un caracteres según etiquetas legibles por nosotros
    dependiendo de la codificación que le hayamos pasado antes (UTF-8)
3) Posteriormente se crean los token de nuestra etiquetas y sus cierres, relacionando así token
   con etiquetas
4) se crean los nodos que son analogos a las etiquetas y otro tipo de datos que es el contenido
5) Coger todos los nodos y arganizarlo en un armbol -> DOM es un esquema en arbol


## 2) procesar el css y construir el cssom 

es otro arbol donde cada nodo es una etiqueta y su css correspodiente

## 3) DOM + CSSOM = render tree

se juntas ambos arboles

## 4) Se ejecuta el diseño en el render tree
se ejecuta y te dice si tiene fallos o no

## 5) Pinta el nodo en la pantalla
Lo que ve el usuario final

# REFERENCIAS: 

Especializado en etiquetas de html

* https://htmlreference.io/

HTML, CSS, y un largo etc
* https://www.w3schools.com/
      
CSS 
* https://cssreference.io/


# sheatsheet muy importante

https://lenguajehtml.com/html/cheatsheets/#chuleta-html5-en-formato-pdf-gratis