Algoritmo sin_titulo
	Definir a, num1 Como Entero
	Definir x como real
	a=0
	x=0
	Escribir "ingrese números para calcular el promedio"
	Leer num1
	Mientras num1 <> (-1)
		Escribir "Recuerde ingresar -1 para finalizar."
		Leer num1
		x = (x  + num1)
		a = (a + 1)
	FinMientras
	Escribir " El promedio es " (x+1)/(a-1) "."
FinAlgoritmo

