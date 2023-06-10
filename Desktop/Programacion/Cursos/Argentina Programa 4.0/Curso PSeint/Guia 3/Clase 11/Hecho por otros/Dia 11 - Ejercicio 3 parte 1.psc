Algoritmo sin_titulo
	Definir Usuario, pass, Ulogin, Upass Como Caracter
	Definir Sesion, contador Como Entero
	usuario = "Albus_D"
	pass = "caramelosDeLimon"
	Sesion <- 0
	contador = 1
	
	mientras sesion < 3 hacer
	
	Escribir "Ingrese su usuario"
	leer ULogin
	Escribir "Ingrese su contraseña"
	leer UPass
	
	Si (Ulogin == Usuario) Entonces
		si (UPass == pass) Entonces
			
			sesion = 4
			
		escribir "Login validado"
	SiNo
		si contador == 3 Entonces
			
		FinSi
		Escribir "La contraseña es incorrecta"
	FinSi
	
SiNo
	Escribir "El usuario es incorrecto"
FinSi
sesion = sesion + 1
FinMientras


FinAlgoritmo
