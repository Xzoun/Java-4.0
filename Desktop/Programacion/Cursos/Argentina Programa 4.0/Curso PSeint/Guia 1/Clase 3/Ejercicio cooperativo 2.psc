Algoritmo Descomposicion
	
	Definir num, unidad, decena, centena Como Entero
	Escribir "Insertar un número entero de tres cifras:"
	Leer num
	unidad=(num mod 10)
	num=trunc(num/10)
	decena=(num mod 10)
	num=trunc(num/10)
	centena=num
	Escribir "Centena: " centena
	Escribir "Decena: " decena
	Escribir "Unidad: " unidad
	
FinAlgoritmo
