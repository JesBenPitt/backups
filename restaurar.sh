#!/bin/bash
clear
read -p "Introduce la ruta absoluta de donde se encuentran las copias de seguridad (ej: /home/vagrant/): " backups
cd $backups
clear
echo "Estas en $PWD/"
echo
while true
do
    echo "¿Qué copias quieres restaurar?"
    echo "1) Total."
    echo "2) Diferencial."
    echo "3) Incremental."
    echo "4) Salir."
    echo
    read -p "Eligue una opción: " op

    case $op in
        1) read -p "Introduce el archivo de copia total que quieres restaurar: " total1
           read -p "Introduce la ruta donde quieres restaurar la copia: " ruta1
           sudo tar -xpzf $total1 -C $ruta1
           if [ $? -eq 0 ]; then
                clear
                echo "Copia total restaurada."
            else
                clear
                echo "Algo ha salido mal."
                break
           fi
        ;;
        2) read -p "Introduce el archivo de copia diferencial que quieres restaurar: " dif1
           read -p "Introduce la ruta donde quieres restaurar la copia: " ruta2
           for archivo in $backups$dif1
           do
              sudo tar -xpzf $archivo -C $ruta2
           done
           if [ $? -eq 0 ]; then
                clear
                echo "Copia diferencial restaurada."
            else
                clear
                echo "Algo ha salido mal."
                break
           fi
        ;;
        3) read -p "Introduce la fecha de los archivos de copia incremental que quieres restaurar: " inc1
           read -p "Introduce la ruta donde quieres restaurar la copia: " ruta3
           for archivo in $backups$inc1
           do
              sudo tar -xpzf $archivo -C $ruta3 
           done
           if [ $? -eq 0 ]; then
                clear
                echo "Copia incremental restaurada."
            else
                clear
                echo "Algo ha salido mal."
                break
           fi
        ;;
        4) clear
           echo "Programa Finalizado."
           break
        ;;
        *) echo "Selecciona una opción válida."
        ;;
    esac
done    