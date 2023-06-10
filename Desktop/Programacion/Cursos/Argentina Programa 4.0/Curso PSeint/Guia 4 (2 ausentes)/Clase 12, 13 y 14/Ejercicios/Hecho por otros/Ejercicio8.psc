Algoritmo sin_titulo
	definir usuario, contrasena Como Caracter
	Escribir "ingrese el usuario y la contraseña"
	leer usuario,contrasena
	Escribir login(usuario,contrasena)
FinAlgoritmo


Funcion R=login(usuario,contrasena)
	definir R Como Logico
	definir contador Como Entero
	contador=0
	si contrasena<>"asdasd" o usuario<>"usuario1" Entonces
		
		Repetir
			Escribir "ingrese el usuario y/o la contraseña correctamente"
			leer usuario,contrasena
			contador=contador+1
		hasta Que (contrasena="asdasd"y usuario="usuario1") o contador=3
		
		si contrasena="asdasd" y usuario="usuario1"
			R=Verdadero
		sino 
			R=falso
		FinSi
	SiNo
		R=Verdadero
	FinSi
FinFuncion
	