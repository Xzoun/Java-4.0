Algoritmo sin_titulo
	Definir Num1, Num2 como entero
	Definir rta, rta2 como cadena
	
Num2 = 0
num1 = 1	
	Hacer
		Escribir "Ingrese un número."
		Leer Num1
			Si num1 > 0 Entonces
			Num2 = Num2 + Num1
				Escribir "Desea escribir otro número? s/n"
				Leer rta
			rta2 = Mayusculas(rta)
			Sino 
				Escribir "Número no válido, debe ser positivo."
				Escribir "Desea escribir otro número? s/n"
				Leer rta
			rta2 = Mayusculas(rta)
			FinSi
	Mientras Que rta2 <> "N" 
		Escribir "La sumatoria de todos los números ingresados es " Num2 ". Muchas gracias."
	
	
FinAlgoritmo
