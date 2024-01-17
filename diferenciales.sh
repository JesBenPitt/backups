#!/bin/bash
fecha=$(date +%Y-%m-%d_%H-%M-%S)
# Establecemos la variable de la fecha para ordenar las copias de seguridad.

cp total_ref.st dif_ref.st
# Copiamos el archivo de la snapshot de la copia total para tenerlo como referencia
# y machacarlo.

tar -czf $HOME/backups/backup_$fecha"_dif".tar.gz $1 -g dif_ref.st
# Se crea un archivo en el directorio /home/vagrant/backups/ con el nombre
# backup_$fecha"_dif".tar.gz, que contiene los archivos del directorio
# especificado en $1 y lee la snapshot copiada anteriormente, lo compara con
# el directorio al que se le va a hacer la copia y si hay algo cambiado,
# machaca el archivo y lo guarda.

cp dif_ref.st inc_ref.st
# Copiamos el archivo de la snapshot y le llamamos inc_ref.st para que
# la copia de seguridad incremental la tome como referencia y lea el archivo.