Algoritmo sin_titulo
Definir n1, n2, n3 Como Real
Leer n1
	n2 = 0
	n3 = 0
	
	Mientras n1 >= 1
		n2 = trunc(n1/10)
		n3 = n3 + 1
		n1 = n2
	FinMientras
	
Escribir "La cantidad de digitos ingresados son " n3 "."
FinAlgoritmo

