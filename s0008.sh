#!/usr/bin/env bash
mensaje='HOLA MUNDO'
echo $mensaje
readonly mensaje
mensaje='CAMBIO DE TEXTO'
echo $mensaje
read -rsp $'\nPress enter to continue....'