#!/usr/bin/env bash
$user=whoami
echo "Forma 1"
if whoami > nul; then
    echo "El usuario $user esta Trabajando"
fi;
echo "FORMA 2"
if whoami; then
    echo "El usuario $user esta trabajando"
fi;
read -rsp $'\nPress enter to continue....'