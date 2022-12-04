#!/bin/bash


#Crea una carpeta
mkdir   ~/backup

#Creamos un tar/comprimido con los ficheros 
tar czf ~/Descargas/backupDescargas.`date +%F`.tgz ~/Descargas

#mv ~/Descargas/backupDescargas.`date +%F`.tgz /media/mount-server/path
mv ~/Descargas/backupDescargas.`date +%F`.tgz ~/backup 
#rmdir ~/Descargasls
