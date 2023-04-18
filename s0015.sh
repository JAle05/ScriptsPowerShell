#!/usr/bin/env bash
edad=15
if [[ "TENGO $edad AÑOS" = 'TENGO 15 AÑOS' ]]
then
    echo "SON IGUALES"
else
    echo "SON DISTINTOS"
fi;
read -rsp $'\nPress enter to continue....'