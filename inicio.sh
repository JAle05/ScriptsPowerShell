#!/bin/bash
#Autor: Josealejandrodeabreu
#fecha: 18/04/2023
while true 
do
clear
echo "MENU"
echo "____"
echo "(1) CREAR EL CONTROL DE VERSION"
ECHO "(2) CONFIGURAR USUARIO: NOMBRE -EMAIL-PASSWORD"
ECHO "(3) REALIZAR PRIMER COMMIT"
ECHO "(4) REALIZAR EL COMMIT SOBRE EL ULTIMO"
ECHO "(5) CONFIGURAR EL REPOSITORIO REMOTO"
ECHO "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
ECHO "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
ECHO "(8) SALIR"

ECHO
ECHO -n "ESCRIBA SU OPCION?  "
read  opcion

case $opcion in
1)
clear
echo "(1) CREAR EL CONTROL DE VERSION"
echo "_______________________________"
git init
read -rsp $'\nPress enter to continue....'
;;
2)
clear
echo "(2) CONFIGURAR USUARIO: NOMBRE -EMAIL-PASSWORD"
echo "______________________________________________"
git config user.name "JAle05"
git config user.email "josealejandro.deabreu@gmail.com"
git config user.password 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
read -rsp $'\nPress enter to continue....'
;;
3)
clear
echo "(3) REALIZAR PRIMER COMMIT"
echo "__________________________"
git add .
git commit -m "snapshot1"
read -rsp $'\nPress enter to continue....'
;;
4)
clear
echo "(4) REALIZAR EL COMMIT SOBRE EL ULTIMO"
echo "______________________________________"
git add .
git commit --amend -m "snapshot1"
read -rsp $'\nPress enter to continue....'
;;
5)
clear
echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
echo "____________________________________"
git remote add origin "https://github.com/JAle05/Lenguaje-Estructurado.git"
read -rsp $'\nPress enter to continue....'
;;
6)
clear
echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
echo "________________________________________________________"
git branch -M main
read -rsp $'\nPress enter to continue....'
;;
7)
clear
echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
echo "________________________________________"
git push -u -f origin main
read -rsp $'\nPress enter to continue....'
;;
8)
clear
echo "(8) GRACIAS POR SU VISITA"
echo "_________"
read -rsp $'\nPress enter to continue....'
exit 0
;;
*)
clear
echo "OPCION INCORRECTA"
esac
done