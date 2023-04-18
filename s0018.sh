#!/usr/bin/env bash
miarchivo="EjemploBucle.txt"
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'