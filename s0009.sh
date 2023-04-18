#!/usr/bin/env bash
echo "NOMBRE DEL SCRIPT: $0"
echo "PARAMETRO 1: $1"
echo "PARAMETRO 2: $2"
echo "VALORES DE LOS PARAMETROS: $@"
echo "VALORES DE LOS PARAMETROS: $*"
echo "TOTAL PARAMETROS: $#"
echo $?
read -rsp $'\nPress enter to continue....'