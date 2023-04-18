#!/usr/bin/env bash
miarchivo="EjemploBucle.txt"
IFS=$'\n'
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'