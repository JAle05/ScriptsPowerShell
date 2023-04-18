#!/usr/bin/env bash
touch /root/prueba
if [ $? -eq 0 ];
then
    echo "Se ha creado el Fichero"
else
    echo "No se ha creado el Fichero"
fi;
read -rsp $'\nPress enter to continue....'