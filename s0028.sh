#!/usr/bin/env bash
clear
variable="Hola"
if [ -n $variable ];
then
    echo "Tiene una longitud mayor que cero"
else
    echo "Tiene una longitud de cero"
fi;
read -rsp $'\nPress enter to continue....'