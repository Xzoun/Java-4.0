Algoritmo sin_titulo
//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subprograma 
	//que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los resultados por pantalla. 
	Definir matriz, n, m, sum Como Entero
	Escribir " Ingrese primero la cantidad de filas y luego la cantidad de columnas que desea que tenga su matriz."
	Leer n, m
	Dimension matriz(n,m)
	sum=0
	Llenarmatriz(matriz,n,m)
	Suma(matriz,n,m, sum)

FinAlgoritmo
Subproceso Llenarmatriz(mat,n,m)
	Definir i, j Como Entero
	Para i = 0 hasta n-1
		Para j = 0 hasta m-1
			mat(i,j)=aleatorio(0,9)
		FinPara
	FinPara
FinSubProceso
Subproceso Suma(mat,n,m,c)
	Escribir " "
	Escribir "Su matriz es "
	Escribir " "
	Definir i, j como entero
	Para i = 0 hasta n-1
		Para j=0 hasta m-1
			c = c + mat(i,j)
			Escribir sin saltar mat(i,j) "   "
		FinPara
		Escribir " "
	FinPara
	Escribir " "
	Escribir "La suma de todos los valores de la matriz es: " c "."
FinSubProceso

