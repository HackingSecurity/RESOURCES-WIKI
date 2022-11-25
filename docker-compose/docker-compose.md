  # Por que usar docker

* Mayor productividad cuando hablamos de varias aplicaciones conectadas entre si
* 

# Procedimiento para lanzar docker compose

Crearemos un fichero llamado "docker-compose.yml" y posteriormente podemos modificar este como en la plantilla que presentamos.

# Comandos para ejecutar docker-compose

## Ejecución

```console
#ejecuta fichero y descripción paso a paso stdout
docker-compose up

#ejectua fichero sin la descripción
docker-compose up -d  

#Destruir contendores
docker-compose down

```

## Contenedores

```console
#ver los logs de un contendor concreto
#donde [app] es el servico concreto
docker-compose logs [app]

#Para poder monitorizar los logs de un contenedor
docker-compose logs -f [app]

#Correr una consola
docker-compose exec [app] bash

#Listar los componentess
docker-compose ps


```

# resources cheatsheet (hojas de trucos)

[docker-compose](https://devhints.io/docker-compose)

[cheatsheet](https://jonlabelle.com/snippets/view/markdown/docker-compose-cheatsheet) 

