# SCRIPT DE LINUX

<p>
Un script de Linux es un archivo de texto que contiene una serie de comandos de Linux que se ejecutan de forma secuencial. Estos scripts se utilizan para automatizar tareas y procesos en sistemas Linux y pueden ser escritos en cualquier editor de texto.
</p>

<p>
Los scripts de Linux suelen tener la extensión ".sh" y se ejecutan utilizando el intérprete de comandos de Linux, también conocido como shell. Los scripts pueden incluir comandos simples de Linux como "ls", "mkdir" y "cd", así como operaciones más complejas como la manipulación de archivos y la ejecución de programas.
</p>

<p>
Los scripts de Linux son muy útiles para automatizar tareas repetitivas, lo que ahorra tiempo y reduce errores. Por ejemplo, un script puede automatizar la copia de archivos de una ubicación a otra, o puede automatizar la instalación y configuración de software en un servidor.
</p>

<p>
Los scripts de Linux también son útiles para la administración de sistemas, ya que permiten a los administradores automatizar tareas de mantenimiento y configuración, y pueden ser programados para ejecutarse de forma regular mediante el uso de herramientas de programación de tareas.
</p>

<p>
En resumen, los scripts de Linux son archivos de texto que contienen comandos de Linux que se ejecutan de forma secuencial para automatizar tareas y procesos en sistemas Linux.
</p>

# EJEMPLOS

-<strong>EJEMPLO 0001:</strong> DETERMINAR SI 2 ES MAYOR QUE 3. USAR CORCHETE SIMPLE

<pre>
<code>
#!/usr/bin/env bash
if [ 2 -gt 1 ]
then
    ECHO "2 ES MAYOR QUE 1"
else
    ECHO "2 NO ES MAYOR QUE 1"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>

RESULTADO
2 MAYOR QUE 1


-<strong>EJEMPLO 0002:</strong> DETERMINAR SI 2 ES DISTINTO QUE 3. USAR UN CORCHETE SIMPLE.

<pre>
<code>
#!/usr/bin/env bash
if [ 2 -ne 3 ]
then
    ECHO "2 ES DISTINTO A 3"
else
    ECHO "2 ES IGUAL A 3"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
2 ES DISTINTO A 3


-<strong>EJEMPLO 0003:</strong> DETERMINAR SI 4 ESTA ENTRE 3 Y 5. USAR CORCHETE DOBLE

<pre>
<code>
#!/usr/bin/env bash
if [[ 4 -gt 3 && 4 -lt 5 ]]
then
    ECHO "4 ESTA ENTRE 3 y 5"
else
    ECHO "4 NO ESTA ENTRE 3 Y 5"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
4 ESTA ENTRE 3 Y 5


-<strong>EJEMPLO 0004:</strong> DETERMINAR SI 4 ESTA ENTRE 3 y 5. USAR CORCHETE SIMPLE.

<pre>
<code>
#!/usr/bin/env bash
if [ 4 -gt 3 -a 4 -lt 5 ]
then
    ECHO "4 ESTA ENTRE 3 y 5"
else
    ECHO "4 NO ESTA ENTRE 3 Y 5"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>

RESULTADO
4 ESTA ENTRE 3 Y 5


-<strong>EJEMPLO 0005:</strong> DETERMINAR SI 2 ES DISTINTO DE 3 USAR CORCHETE DOBLE

<pre>
<code>
#!/usr/bin/env bash
if [[ 2 -ne 3 ]]
then
    ECHO "2 ES DISTINTO QUE 3"
else
    ECHO "2 NO ES DISTINTO 3"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
2 ES DISTINTO A 3


-<strong>EJEMPLO 0006:</strong> CREAR UNA VARIABLE QUE LLAMAREMOS EDAD Y LE ASIGNAREMOS UN VALOR DE 15, LUEGO IMPRIMIREMOS EL CONTENIDO DE LA VARIABLE EN PANTALLA.

<pre>
<code>
#!/usr/bin/env bash
edad=15
echo $edad
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
15


<p>
-##### PODEMOS ASIGNARLE DIFERENTES VALORES A UNA MISMA VARIABLE
    </p>


-<strong>EJEMPLO 0007:</strong>

<pre>
<code>
#!/usr/bin/env bash
mensaje='HOLA MUNDO'
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=8
echo $mensaje
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESPUESTA
HOLA MUNDO
5.5
8


<p>
-##### EL SHELL TIENE UNA FORMA DE EVITAR QUE SE PUEDA MODIFICAR EL VALOR DE UNA VARIABLE, ES DECIR PONERLO COMO SOLO LECTURA. EN EL EJEMPLO SIGUIENTE DA UN
    ERROR SI INTENTAMOS MODIFICAR EL CONTENIDO DE LA VARIABLE.
    </p>


-<strong>EJEMPLO 0008:</strong>

<pre>
<code>
#!/usr/bin/env bash
mensaje='HOLA MUNDO'
echo $mensaje
readonly mensaje
mensaje='CAMBIO DE TEXTO'
echo $mensaje
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO 
HOLA MUNDO 


<p>
-##### VARIABLES ESPECIALES 

    $$ MUESTRA EL NUMERO DE PROCESO DEL SISTEMA QUE TIENE EL SHELL, ES DECIR EL PID.

    $0 MUESTRA EL NOMBRE DEL SCRIPT QUE SE ESTA EJECUTANDO.

    $# MUESTRA EL NUMERO TOTAL DE PARAMETROS QUE LE PASAMOS AL SCRIPT.

    $* MUESTRA EL VALOR DE TODOS LOS PARAMETROS QUE LE PASAMOS AL SCRIPT.

    $@ MUESTRA EL VALOR DE TODOS LOS PARAMETROS QUE LE PASAMOS AL SCRIPT.

    $! MUESTRA EL NUMERO DE PROCESO DEL ULTIMO COMANDO QUE ESTA EN SEGUNDO PLANO.

    $? MUESTRA EL ESTADO DE SALIDA DEL ULTIMO COMANDO EJECUTADO. SHELL DEVUELVE UN ESTADO PARA SABER SI ES CORRECTO LA EJECUCION O NO, ES DECIR, MOSTRARA UN 0 SI HA IDO TODO BIEN Y UN 1 SI HA FALLADO O HA TENIDO ERRORES.

    $n EL VALOR DE n ES EL NUMERO DE ARGUMENTO QUE LE PASAMOS AL SCRIPT, DE FORMA QUE SI   HAY VARIOS PARAMETROS LOS DEFINIRIAMOS COMO $1, $2, $3, EN EL CASO DE  QUE HAYA 3 PARAMETROS.
</p>


-<strong>EJEMPLO 0009:</strong>


<pre>
<code>
#!/usr/bin/env bash
echo "NOMBRE DEL SCRIPT: $0"
echo "PARAMETRO 1: $1"
echo "PARAMETRO 2: $2"
echo "VALORES DE LOS PARAMETROS: $@"
echo "VALORES DE LOS PARAMETROS: $*"
echo "TOTAL PARAMETROS: $#"
echo $?
read -rsp $'\nPress enter to continue....'
</code>
</pre>

CREAMOS UN SCRIPT DE LA SIGUIENTE MANERA SI AL SCRIPT LE DAMOS EL NOMBRE s0009.sh seria de la siguiente manera

./s0009.sh HOLA MUNDO


RESULTADO
NOMBRE DEL SCRIPT: C:\Users\Curso Tarde.DESKTOP-SMSA191\Desktop\s0009.sh
PARAMETRO 1:
PARAMETRO 2:
VALORES DE LOS PARAMETROS:
VALORES DE LOS PARAMETROS:
TOTAL PARAMETROS: 0
0


-<strong>EJEMPLO 0010:</strong>

<pre>
<code>
#!/usr/bin/env bash
echo HOY COMO ESTAS
edad=28
echo CREO QUE TIENES $edad ANIOS
echo -e "ESTA \nFRASE \nSE \nMOSTRARA \nPALABRA \nEN \nUNA \nLINEA \nDISTINTA \nCADA \nPALABRA"
echo -e "SUPRIMIR LO QUE VIENE A CONTINUACION \cel SALTO DE LINEA"
echo IMPRIMIR TODOS LOS FICHEROS Y CARPETAS A MODO COMANDO ls
echo *
echo IMPRIMIR TODOS LOS FICHEROS DE UN FORMATO CONCRETO
echo *.sh
echo "ESTA FRASE SE DIRECCIONA A UN ARCHIVO DONDE QUEDA GRABADO" > salvar.txt
echo "ESTO QUE SIGUE SE ANIADE AL ARCHIVO" >> salvar.txt
echo -n "OMITIMOS EL SALTO DE LINEA"
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
HOY COMO ESTAS
CREO QUE TIENES 28 ANIOS
ESTA
FRASE
SE
MOSTRARA
PALABRA
EN
UNA
LINEA
DISTINTA
CADA
PALABRA
SUPRIMIR LO QUE VIENE A CONTINUACION IMPRIMIR TODOS LOS FICHEROS Y CARPETAS A MODO COMANDO ls
Alej Cisco Packet Tracer.lnk EjerciciosJAVA11-04 GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} Instaladores Lenguaje Estructurado Microsoft Edge.lnk SCRIPT VARIOS.sh SQL Server Management Studio Management Studio 19.lnk SQL Server Profiler 19.lnk SerieInfinita.rar Visual Studio Code.lnk Windows PowerShell.lnk desktop.ini ejemplospseint - Acceso directo.lnk salvar.txt
IMPRIMIR TODOS LOS FICHEROS DE UN FORMATO CONCRETO
SCRIPT VARIOS.sh
OMITIMOS EL SALTO DE LINEA


-<strong>EJEMPLO 0011:</strong>REPRESENTAR CARACTERES UNICODE

<pre>
<code>
#!/usr/bin/env bash
echo -e "\u2622"
echo -e "\U1f41e"
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
☢
🐞


-<strong>EJEMPLO 0012:</strong> COMPARAR EL CONTENIDO DE 2 VARIABLES QUE TIENEN UNA CADENA ALMACENADA CADA VARIABLE.

<pre>
<code>
#!/usr/bin/env bash
nombre="Luis"
nombre="Luis"
if [[$nombre1 = $nombre2]]
then 
    echo "SON IGUALES"
else
    echo "SON DISTINTOS"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
SON IGUALES


-<strong>EJEMPLO 0013:</strong> SE PUEDE COMPARAR LAS CADENAS DIRECTAMENTE SI NO SE TIENE ESPACIOS EN BLANCO SIN COMILLAS SIMPLES O DOBLES.

<pre>
<code>
#!/usr/bin/env bash
if [[ LUIS = LUIS ]]
then 
    echo "SON IGUALES"
else
    echo "SON DISTINTOS"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
SON IGUALES


-<strong>EJEMPLO 0014:</strong> SI LA CADENA TIENE ESPACIOS EN BLANCO SE TIENE QUE PONER ENTRE COMILLAS SIMPLES.

<pre>
<code>
#!/usr/bin/env bash
if [[ 'LUIS ESTAS BIEN' = 'LUIS ESTAS BIEN' ]]
then 
    echo "SON IGUALES"
else
    echo "SON DISTINTOS"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
SON IGUALES


-<strong>EJEMPLO 0015:</strong> SI LA CADENA VA A INCLUIR VARIABLES EMPLEAR COMILLAS DOBLES.

<pre>
<code>
#!/usr/bin/env bash
edad=15
if [[ "TENGO $edad AÑOS" = 'TENGO 15 AÑOS' ]]
then
    echo "SON IGUALES"
else
    echo "SON DISTINTOS"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
SON IGUALES


-<strong>EJEMPLO 0016:</strong>HACER UN BUCLE FORM PARA ITERAR SOBLRE VALORES SIMPLES, SIENDO ESTOS VALORES CADENAS SIMPLES.

<pre>
<code>
#!/usr/bin/env bash
for var in PRIMERO SEGUNDO TERCERO CUARTO QUINTO; do
    echo "EL $var ITEM"
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO 
EL PRIMERO ITEM
EL SEGUNDO ITEM
EL TERCERO ITEM
EL CUARTO ITEM
EL QUINTO ITEM


-<strong>EJEMPLO 0017:</strong>HACER UN BUCLE FOR PARA INTERACTUAR SOBRE VALORES SIMPLES, SIENDO ESTOS VALORES NUMEROS.

<pre>
<code>
#!/usr/bin/env bash
for var in 1 2 3 4 5; do
    echo "Numero $var"
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>

RESULTADO
Numero 1
Numero 2
Numero 3
Numero 4
Numero 5


-<strong>EJEMPLO 0018:</strong>HACER UN BUCLE FOR PARA INTERCATUAR SOBRE VALORES COMPLEJOS, SIENDO ESTOS VALORES PALABRAS O FRASES.

<pre>
<code>
#!/usr/bin/env bash
for var in PRIMERO "EL SEGUNDO" "EL TERCERO" "EL QUINTO SOY YO"; do
    echo "ESTO ES: $var"
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESPUESTA
ESTO ES: PRIMERO
ESTO ES: EL SEGUNDO
ESTO ES: EL TERCERO
ESTO ES: EL QUINTO SOY YO


-<strong>EJEMPLO 0019:</strong>HACER UN BUCLE FOR PARA MOSTRAR EL CONTENIDO DE UN ARCHIVO.

-Crear primero el archivo EjemploBucleFor.txt
con el siguiente contenido:

EJEMPLO DE BUCLE FOR

-AHORA CORRE EL SIGUIENTE SCRIPT s0018.sh

<pre>
<code>
#!/usr/bin/env bash
miarchivo="EjemploBucleFor.txt"
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESPUESTA
EJEMPLO
DE
BUCLE
FOR


-<strong>EJEMPLO 0020:</strong>HACER UN BUCLE FOR PARA LEER UN ARCHIVO, PERO QUE CONSIDERE EL CARACTER DE NUEVA LINEA COMO UN SEPARADOR EN LUGAR DE ESPACIOS.

<pre>
<code>
#!/usr/bin/env bash
miarchivo="EjemploBucleFor.txt"
IFS=$'\n'
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
EJEMPLO DE BUCLE FOR


-<strong>EJEMPLO 0021:</strong>HACER UN BUCLE FOR PARA LEER UN ARCHIVO PERO QUE CONSIDERE EL CARACTER PUNTO Y COMA COMO SEPARADOR.

-Crea primero el larchivo EjemploBucleFor1.txt
con el siguiente contenido

Luis;Ruiz;Roncal;24;1.74

<pre>
<code>
#!/usr/bin/env bash
miarchivo="EjemploBucleFor1.txt"
IFS=$';'
for var in $(cat $miarchivo); do
    echo $var
done
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
Luis
Ruiz
Roncal
24
1.74


-<strong>EJEMPLO 0022:</strong>MOSTRAR EL DIRECTORIO ACTUAL Y EL USUARIO QUE SE HA LOGUEADO EN EL SISTEMA. EL SIMBOLO # AL INICIO DE UNA LINEA ES PARA MOSTRAR COMENTARIOS DE UNA LINEA DENTRO DEL SCRIPT EL COMANDO echo ES PARA MOSTRAR MENSAJES EN LA PANTALLA EL COMANDO pwd MUESTRA EL DIRECTORIO ACTUAL Y EL COMANDO whoami ES PARA MOSTRAR EL USUARIO QUE SE HA LOGUEADO EN EL SISTEMA.

<pre>
<code>
#!/usr/bin/env bash
# Nuestro Comentario de Una Linea
echo "El directorio actual es:"
pwd
echo "el usuario logueado es:"
whoami
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
El directorio actual es:
/c/Users/Curso Tarde.DESKTOP-SMSA191/Desktop
el usuario logueado es:
Curso Tarde


-<strong>EJEMPLO 0023:</strong>HACER UN SCRIPT QUE MUESTRE EL MENSAJE "EL USUARIO nombreusuario ESTA TRABAJANDO". CON >nul ANULAMOS LA SALIDA DEL COMANDO PARA QUE NO SE MUESTRE EN PANTALLA.

<pre>
<code>
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
</code>
</pre>


RESULTADO
Forma 1
El usuario  esta Trabajando
FORMA 2
Curso Tarde
El usuario  esta trabajando


-<strong>EJEMPLO 0024:</strong>HACER UN SCRIPT QUE VERIFIQUE SI UN USUARIO EXISTE O NO EXISTE.

<pre>
<code>
#!/usr/bin/env bash
usuario=alejandro
if grep $usuario /etc/passwd > nul;
then
    echo "EL usuario $usuario existe"
else
    echo "El usuario $usuario no existe"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESPUESTA
grep: /etc/passwd: No such file or directory
El usuario alejandro no existe


-<strong>EJEMPLO 0025:</strong>HACER UN SCRIPT QUE VERIFIQUE SI EL USUARIO LOGUEADO PUEDE CREAR UN ARCHIVO.

<pre>
<code>
#!/usr/bin/env bash
touch /root/prueba
if [ $? -eq 0 ];
then
    echo "Se ha creado el Fichero"
else
    echo "No se ha creado el Fichero"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>

RESULTADO
touch: cannot touch '/root/prueba': No such file or directory
No se ha creado el Fichero

<p>
ESTE EJEMPLO SE PARTE CON LA CONDICION QUE EL USUARIO QUE EJECUTA EL SCRIPT ES UN USUARIO DISTINTO A ROOT.
AQUI EL COMANDO TOUCH INTENTARA CREAR EL FICHERO /ROOT/PRUEBA Y FALLARA... POR QUE NO ESTAS LOGUEADO COMO USUARIO ROOT ¿NO? AL FALLAR MOSTRARA UN MENSAJE DE ERROR PERO ¿COMO SE ENTERA NUESTRO SCRIPT DE QUE EL PROGRAMA HA FALLADO? PUES A TRAVES DE LA VARIABLE $? ,  $? ES UNA VARIABLE ESPECIAL QUE RECOGE EL VALOR DEVUELTO POR EL ULTIMO PROGRAMA EJECUTADO. CUANDO TOUCH FUNCIONA SIN PROBLEMAS DEVUELVE EL VALOR 0; CUANDO FALLA, COMO EN ESTE CASO, DEVUELVE UN NUMERO DISTINTO DE CERO.
ENTONCES BASTARA CON COMBROBAR SI LA VARIABLE $? TIENE ALMACENADO UN 0 PARA VER SI HA FUNCIONADO CORRECTAMENTE.
</P>


-<strong>EJEMPLO 0026:</strong> SCRIPT QUE VERIFICA SI EL USUARIO LOGUEADO PUEDE CREAR UN ARCHIVO.

<pre>
<code>
#!/usr/bin/env bash
touch prueba
if [ $? -eq 0 ];
then
    echo "Se ha creado el Fichero"
else
    echo "No se ha creado el Fichero"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESULTADO
Se ha creado el Fichero


-<strong>EJEMPLO 0027:</strong>COMPROBAR SI PUEDO INGRESAR A MI CARPETA PERSONAL DE TRABAJO


<pre>
<code>
#!/usr/bin/env bash
micarpeta=/home/alejandro
if [ -d $micarpeta ];
then
    echo "Carpeta $micarpeta existe"
cd $micarpeta
pwd
ls
else
    echo "No hay archivo o directorio $micarpeta"
fi;
read -rsp $'\nPress enter to continue....'
</code>
</pre>


RESPUESTA
No hay archivo o directorio /home/alejandro



-<strong>EJEMPLO 0028:</strong>VERIFICAR SI UNA VARIABLE TIENE VALOR O NO. CON -n BUSCA UN VALOR MAYOR QUE CERO.

<pre>
<code>
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
</code>
</pre>


RESPUESTA
Tiene una longitud mayor que cero
