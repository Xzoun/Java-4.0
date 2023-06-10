Algoritmo sin_titulo
	definir num1, num2, num3 Como Real
	escribir "ingrese un año: "
	leer num1
	num2 = (num1 mod 4)
	escribir num2
	Si num2 = 0 Entonces
		escribir "El año es bisiesto"
	SiNo
	Escribir "El año no es bisiesto"	
	Fin Si
FinAlgoritmo
