Algoritmo sin_titulo
	Definir num1, num2 como entero
	
	Escribir "Ingrese la cantidad de tornillos defectuosos que produce"
	Leer num1
	Escribir "Ingrese la cantidad de tornillos sin defectos que produce"
	Leer num2
	
	Si (num1  < 200) y (num2 > 10000) Entonces
		Escribir" El operario es de grado 8"
	SiNo
		Si (num1 >= 200) y (num2 > 10000) Entonces
			Escribir "El operario es de grado 7"
		SiNo
			Si (num1 < 200) y (num2 < 10000) Entonces
				Escribir "El operario es de grado 6"
			SiNo
				Escribir "El operario es de grado 5"
			FinSi
		FinSi
	Fin Si
	
FinAlgoritmo
