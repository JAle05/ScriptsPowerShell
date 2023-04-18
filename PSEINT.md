# PSEINT
<p>
PSeInt (Pseudo-Intérprete) es un software libre y gratuito que se utiliza para enseñar programación y algoritmos a principiantes. PSeInt está diseñado para ser una herramienta didáctica que permita a los estudiantes aprender los conceptos básicos de la programación sin tener que preocuparse por la sintaxis de un lenguaje de programación específico.
</p>

<p>
Con PSeInt, los usuarios pueden crear, probar y depurar algoritmos en pseudocódigo, que es un lenguaje de programación informal que se utiliza para describir un algoritmo en términos generales, sin preocuparse por la sintaxis específica de un lenguaje de programación real. PSeInt cuenta con una interfaz gráfica de usuario fácil de usar que permite a los usuarios crear y ejecutar algoritmos paso a paso, ver el estado de las variables y depurar los errores en el código.
</p>

<p>
PSeInt es una herramienta muy popular para la enseñanza de programación en escuelas secundarias y universidades de todo el mundo. Además, PSeInt es compatible con varios idiomas y plataformas, lo que hace que sea accesible para usuarios de todo el mundo.
</p>

# EJEMPLOS

<pre>
<code>
Algoritmo Vector_datos
	Definir vcodigo, vnombre Como Caracter
	definir vedad Como Entero
	definir vestatura como real
	dimension vcodigo[5], vedad[5], vestatura[5], vnombre[5]
	definir p Como real
	definir posicion Como entero
	//SIMULACION DE UNA BASE DE DATOS (TABLA)
	vcodigo[1] = "A1"
	vcodigo[2] = "A2"
	vcodigo[3] = "A3"
	vcodigo[4] = "A4"
	vcodigo[5] = "A5"
	
	vnombre[1] = "LUIS"
	vnombre[2] = "MIGUEL"
	vnombre[3] = "CARLOS"
	vnombre[4] = "CARMEN"
	vnombre[5] = "CARLOS"
	
	vedad[1] = 23
	vedad[2] = 24
	vedad[3] = 21
	vedad[4] = 22
	vedad[5] = 25
	
	vestatura[1] = 1.72
	vestatura[2] = 1.67
	vestatura[3] = 1.61
	vestatura[4] = 1.60
	vestatura[5] = 1.62
	
	Repetir
		Escribir "1. PEDIR INFORMACION DEL ALUMNO POR CODIGO"
		Escribir "2. MOSTRAR EL PROMEDIO DE EDAD DE TODOS LOS ALUMNOS"
		Escribir "3. CAMBIAR EL NOMBRE DE UN ALUMNO DADO SU CODIGO"
		Leer OPCION
		Segun OPCION Hacer
		    "1":
				//PEDIR INFORMACION DEL ALUMNO POR CODIGO
				Escribir "Ingrese el Codigo del Alumno?"
				leer codigo 
				//BUSCAR
				encontre = Falso
				Para i<-1 Hasta 5 Con Paso 1 Hacer
					si vcodigo[i] = codigo Entonces
						Imprimir "Nombre", vnombre[i]
						Imprimir "Edad", vedad[i]
						Imprimir "Estatura", vestatura[i]
						encontre = Verdadero
					FinSi
				Fin Para
				si encontre = Falso entonces
					escribir "CODIGO INCORRECTO"
				FinSi
			"2":
				//MOSTRAR EL PROMEDIO DE EDAD DE TODOS LOS ALUMNOS
				s = 0
				Para i<-1 Hasta 5 Con Paso 1 Hacer
					s = s + vedad[i]
				Fin Para
				p= s/5
				Escribir "promedio", p
			"3":
				//CAMBIAR EL NOMBRE DE UN ALUMNO DADO SU CODIGO
				
				Escribir "Ingrese el Codigo del Alumno?"
				leer codigo 
				encontre = Falso
				Para i<-1 Hasta 5 Con Paso 1 Hacer
					si vcodigo[i] = codigo Entonces
						encontre = Verdadero
						posicion = i
					FinSi
					
				Fin Para
				si encontre = Falso entonces
					escribir "CODIGO INCORRECTO"
				SiNo
					escribir "ingrese nombre nuevo?"
					leer nombrenuevo
					vnombre[posicion] = nombrenuevo
					Escribir "cambio Corrrecto  ", vnombre[posicion]
				FinSi
				
			De Otro Modo:
				ESCRIBIR "OPCION INCORRECTA"
		Fin Segun
		
	Hasta Que FALSE
	
FinAlgoritmo
</code>
</pre>

# ANEXO 1: VIDEO
<p align="center">
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"_blank">
     <img src="      " alt="Expresiones Regulares" width="400" height="300" border="10" /></a>
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"></a>
</p>

