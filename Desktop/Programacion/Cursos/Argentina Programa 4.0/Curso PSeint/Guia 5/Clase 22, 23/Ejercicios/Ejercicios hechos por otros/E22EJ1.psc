//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.
Algoritmo E22EJ1
	Definir matriz Como Real
	Definir i,j Como Entero
	Dimension matriz[3,3]
	
	para i = 0 hasta 3-1 
		para j = 0 hasta 3-1
			Escribir "Ingrese el elemento de la matriz [" i "," j "]"
			leer matriz[i,j]
		FinPara
	FinPara
	
	para i = 0 hasta 3-1 
		para j = 0 hasta 3-1
			Escribir sin saltar matriz[i,j] " "
		FinPara
		Escribir " "
	FinPara
	
FinAlgoritmo
