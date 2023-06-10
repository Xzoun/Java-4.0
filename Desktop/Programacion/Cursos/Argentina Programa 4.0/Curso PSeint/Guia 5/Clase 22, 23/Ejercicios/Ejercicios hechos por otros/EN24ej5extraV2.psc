//5. Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5

Algoritmo EN24ej5
	Definir matriz, i, j,k, num, suma Como Entero
	
	Escribir "Escriba cantidad de filas de la Matriz"
	leer i
	j=3
	k=3
	Dimension matriz(i,j)
	suma=0
	para i= 0 Hasta i-1 Hacer
		para j=0 hasta 1 Hacer
			leer num
			matriz(i,j)=num
		FinPara
	FinPara
//	para i=0 hasta i-1 Hacer
//		para j=0 hasta 2 Hacer
//			si j<2 Entonces
//				leer num
//				matriz(i,j)=num
//				suma=suma+num
//			SiNo
//				matriz(i,j)=suma
//				suma=0
//			FinSi
//			
//		FinPara
//			
//	FinPara
	
	para i=0 hasta i-1 Hacer
		//para j =0 Hasta 1 Hacer
			matriz(i,2)=matriz(i,0)+matriz(i,1)
		//FinPara
	FinPara
//	
	para i=0 hasta i-1 Hacer
		para j=0 Hasta 2 Hacer
			escribir "[", matriz(i,j), "] " Sin Saltar
		FinPara
		escribir ""
	FinPara
FinAlgoritmo
