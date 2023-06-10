Algoritmo Ej4_extras
	Definir matrix1, matrix2, matrix3 Como Entero
	Dimension matrix1(3,3), matrix2(3,3), matrix3(3,3)
	rellenar(matrix1, matrix2)
	multi(matrix1, matrix2, matrix3)
	most(matrix1, matrix2, matrix3)
FinAlgoritmo
subproceso rellenar(matrix1, matrix2)
	definir i, j como entero
	Para i <- 0 hasta 2 Hacer
		Para j <- 0 hasta 2 Hacer
			matrix1(i,j)=Aleatorio(1,10)
			matrix2(i,j)=Aleatorio(1,10)
		FinPara
	FinPara
FinSubProceso
SubProceso multi(matrix1, matrix2, matrix3)
	definir i, j, aux como entero
	Para i <- 0 hasta 2 Hacer
		Para j <- 0 hasta 2 Hacer
			matrix3(i,j)= matrix1(i,j)*matrix2(i,j)
		FinPara
	FinPara
FinSubProceso
SubProceso most(matrix1, matrix2, matrix3)
	Definir i, j Como Real
	Para i = 0 Hasta 2 Hacer
		Para j = 0 hasta 2 Hacer
			Escribir " " matrix1(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir " "
	Para i = 0 Hasta 2 Hacer
		Para j = 0 hasta 2 Hacer
			Escribir " " matrix2(i,j) " " Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
	Escribir " "
	Para i = 0 Hasta 2 Hacer
		Para j = 0 hasta 2 Hacer
				Escribir " " matrix3(i,j) " " Sin Saltar 
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	
