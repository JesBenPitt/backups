#!/bin/bash
find /home/vagrant/*.tar.gz -cmin +4 -type f -exec rm {} \;
# Parámetro "-ctime +n" para filtrar por número de días de creación
# Parámetro "-cmin +n" para filtrar por número de minutos de creación
