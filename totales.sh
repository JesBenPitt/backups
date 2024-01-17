#!/bin/bash
fecha=$(date +%Y-%m-%d_%H-%M-%S)
# Establecemos la variable de la fecha para ordenar las copias de seguridad.

if [ -e total_ref ]; then
    rm -r total_ref.st
    #Veririca si el archivo existe o no, si existe, lo elimina.
fi

tar -czf $HOME/backups/backup_$fecha"_total".tar.gz $1 -g total_ref.st
# Se crea un archivo en el directorio /home/vagrant/backups/ con el nombre
# backup_$fecha"_total".tar.gz, que contiene los archivos del directorio
# especificado en $1 y crea una snapshot llamada total_ref.st que guarda
# todo lo nuevo del directorio al que le hicimos la copia de seguridad.

cp total_ref.st inc_ref.st
# Copiamos el archivo de la snapshot y le llamamos inc_ref.st para que
# la copia de seguridad incremental la tome como referencia y lea el archivo.