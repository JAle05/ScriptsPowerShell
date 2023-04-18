#!/usr/bin/env bash
usuario=alejandro
if grep $usuario /etc/passwd > nul;
then
    echo "EL usuario $usuario existe"
else
    echo "El usuario $usuario no existe"
fi;
read -rsp $'\nPress enter to continue....'