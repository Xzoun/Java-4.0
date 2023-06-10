Algoritmo Descomposicion
	
	Definir num, unidad, decena, centena Como Entero
	Escribir "Insertar un número entero de tres cifras:"
	Leer num
	unidad=(num mod 10)
	num=trunc(num/10)
	decena=(num mod 10)
	num=trunc(num/10)
	centena=num
	Si unidad = centena Entonces
		Escribir "Felicitaciones! El numero ingresado es capicua"
	SiNo
		Escribir "Segui participando"
	Fin Si
	
	
FinAlgoritmo
