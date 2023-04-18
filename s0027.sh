#!/usr/bin/env bash
micarpeta=/home/alejandro
if [ -d $micarpeta ];
then
    echo "Carpeta $micarpeta existe"
cd $micarpeta
pwd
ls
else
    echo "No hay archivo o directorio $micarpeta"
fi;
read -rsp $'\nPress enter to continue....'