#!/usr/bin/env bash
miarchivo="EjemploBucleFor1.txt"
IFS=$';'
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'