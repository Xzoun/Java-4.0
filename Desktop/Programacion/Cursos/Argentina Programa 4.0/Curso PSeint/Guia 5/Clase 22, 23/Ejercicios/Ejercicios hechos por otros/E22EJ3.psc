Algoritmo E22EJ2
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//  un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
//  grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
//  sultados por pantalla.
	
	Definir matriz, N, M Como Entero

	Escribir "Ingrese el valor de N y M"
	Leer N M
	Dimension matriz[N,M]
	
	crearMatriz(matriz, N, M) 
	sumaYMostrar(matriz, N, M)

FinAlgoritmo

subproceso crearMatriz(matriz, N, M) 
	Definir i, j Como Entero
	para i = 0 hasta N-1 
		para j = 0 hasta M-1
			matriz[i,j] = Aleatorio(1,10) 
		FinPara
	FinPara
FinSubProceso

SubProceso sumaYMostrar(matriz, N, M)
	definir suma, i, j como entero
	
	suma = 0
	para i = 0 hasta N-1 
		para j = 0 hasta M-1
			Escribir sin saltar matriz[i,j] " "
			suma = suma + matriz[i,j]
		FinPara
		Escribir " "
	FinPara
	
	Escribir "La suma de los elementos de la matriz es " suma
FinSubProceso
	