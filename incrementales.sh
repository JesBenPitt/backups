#!/bin/bash
fecha=$(date +%Y-%m-%d_%H-%M-%S)
# Establecemos la variable de la fecha para ordenar las copias de seguridad.

if [ ! -d backups ]; then
    mkdir $HOME/backups/
    # Se crea la carpeta /backups/ en el directorio /home/vagrant/ en el caso de que no exista.
fi

tar -czf $HOME/backups/backup_$fecha"_inc".tar.gz $1 -g inc_ref.st
# Se crea un archivo en el directorio /home/vagrant/backups/ con el nombre
# backup_$fecha"_inc".tar.gz, que contiene los archivos del directorio
# especificado en $1 y toma de referencia el último archivo de snapshot
# que se creo al realizar la última copia de seguridad, lo lee, lo compara
# con el directorio al que se le hace la copia de seguridad y si hay algo
# nuevo que ha cambiado, machaca el archivo y lo guarda.