Algoritmo sin_titulo
	Definir Usuario, pass, Ulogin, Upass,rta Como Caracter
	Definir Sesion, contador, opc, nbot, contador2, al, saldo, saldo1, saldo2, saldo3 Como Entero
	usuario = "123"
	pass = "456"
	Sesion <- 0
	contador = 1
	
Mientras sesion < 3 hacer
	
	Escribir "Ingrese su usuario"
	leer ULogin
	Escribir "Ingrese su contraseña"
	leer UPass
	
	Si (Ulogin == Usuario) Entonces
		si (UPass == pass) Entonces
			
			sesion = 4
			
			escribir "Login validado"
			Escribir " "
	SiNo
		si contador == 3 Entonces
			
		FinSi
		Escribir "La contraseña es incorrecta"
	FinSi
	
SiNo
	Escribir "El usuario y/o clave es incorrecta"
FinSi
sesion = sesion + 1
FinMientras
Saldo = 0
Hacer
	Escribir "Ingrese:"
	Escribir "1 para cargar botellas."
	Escribir "2 para consultar saldo."
	Escribir "3 para salir."
	Leer opc
	contador2=0
	saldo1=0
	saldo2=0
	saldo3=0
	
Segun opc  
1:
		Escribir "¿Cuántas botellas ingresará al sistema?" 
		Leer nbot
			Repetir
				contador2 = contador2 + 1
				al=aleatorio(100,3000)
				Si al<=500 Entonces
				saldo1=saldo1+50
				Sino 
					Si al > 500 y al <= 1500
					saldo2=saldo2+125
					SiNo
						Si al > 1500
						saldo3=saldo3+200
					FinSi
				FinSi
			FinSi
			
			Mientras Que contador2 < nbot
		Escribir "Se le pagará $" saldo1+saldo2+saldo3 " por sus " nbot " botellas. Está de acuerdo S/N?"
		Leer rta
			Si rta = "S" o rta = "s" Entonces
				Escribir "Perfecto, el importe fue añadido a su saldo."
				Escribir " "
				Saldo=Saldo+saldo1+saldo2+saldo3
			Sino
				Escribir "Devolviendo material."
				Escribir " "
			FinSi
2:
	Saldo=Saldo+saldo1+saldo2+saldo3
	Escribir "Su saldo actual es de $" Saldo "." 
	Escribir " "
FinSegun
Mientras que opc < 3 	
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



FinAlgoritmo
