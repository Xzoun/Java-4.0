Algoritmo sin_titulo
	Definir num1, num2, num3, cont Como Entero
	num2 = Aleatorio(1, 10)
	Escribir "Adiviná que número estoy pensando."
	Leer num1
	Hacer
		Si num1 < num2
			Escribir "Probá denuevo. Pista, un poco más arriba."
			Leer num1
		SiNo
		Si num1 > num2 
			Escribir "Probá denuevo. Pista, un poco más abajo."
			Leer num1
		FinSi
		FinSi	
	Mientras Que num2 <> num1 
		Escribir "Si pa! El número es " num2 "."
FinAlgoritmo
