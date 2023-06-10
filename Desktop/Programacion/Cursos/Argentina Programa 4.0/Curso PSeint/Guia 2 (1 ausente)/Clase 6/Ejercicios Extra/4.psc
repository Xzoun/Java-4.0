Algoritmo sin_titulo
	Definir Num1 como entero
	Escribir "Ingrese la cantidad de llantas que desea comprar."
	Leer Num1
	Si Num1 >= 5 y Num1 <= 10 Entonces
		Escribir "El precio de las llantas es de $2.500 y debe abonar $" Num1*2500 "."
	SiNo
		Si Num1 > 10 Entonces
			Escribir "El precio de las llantas es de $2.000 y debe abonar $" Num1*2000 "."
		SiNo
			Escribir "El precio de las llantas es de $3000 y debe abonar $" Num1*3000 "."
		FinSi
	FinSi
FinAlgoritmo

		