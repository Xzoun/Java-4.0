Algoritmo sin_titulo
	definir min, max, num1, num2 Como Entero
	Escribir "Ingresar un número"
	Leer num1
	num2 = 0
	num3 = 0
	Mientras num1 <> 0 
		Escribir "Ingresar un número."
		Leer num1
		Si num1 > max Entonces
			num2 = num1
			Escribir "el máximo es " num2 "."
		SiNo
			Escribir "el máximo es " max "."
		FinSi
	FinMientras

FinAlgoritmo
