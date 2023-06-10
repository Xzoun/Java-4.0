Algoritmo sin_titulo
//	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
	//	los muestre por pantalla.
	Definir matriz, palabras como cadena
	Definir i, j Como Entero
	Dimension matriz(3,3)
	Escribir "Por favor ingrese las palabras que va a utilizar"
	Para i = 0 hasta 3-1
		Para j = 0 hasta 3-1
			Leer palabras
			matriz(i,j) = palabras
		FinPara
	FinPara
	Para i = 0 hasta 3-1
		Para j = 0 hasta 3-1
			Escribir sin saltar matriz(i,j) "   "
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
