Algoritmo desafioClase26
	Definir tablero como Cadena
	Dimension tablero(9, 12)
	
	inicializarMatriz(tablero, 9, 12)
	
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	buscarR(tablero, 0)
	buscarR(tablero, 1)
	buscarR(tablero, 2)
	buscarR(tablero, 3)
	buscarR(tablero, 4)
	buscarR(tablero, 5)
	buscarR(tablero, 6)
	buscarR(tablero, 7)
	buscarR(tablero, 8)

	
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo


SubProceso inicializarMatriz(tablero, 9, 12)
	Definir i, j Como Entero	
	para i = 0 Hasta 8
		para j = 0 Hasta 11 Hacer
			tablero(i,j) = '*'
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(tablero, 9, 12)
	Definir i, j Como Entero	
	para i = 0 Hasta 8
		para j = 0 Hasta 11 Hacer
			Escribir  sin saltar ' ' tablero(i,j) ' '
		FinPara
		Escribir ''
	FinPara
FinSubProceso

SubProceso agregarPalabra(tablero, palabra, fila)
	Definir i, j Como Entero
	
	palabra = Mayusculas(palabra)
	
	para i = 0 Hasta 8
		para j = 0 Hasta 11 Hacer
			
			si i = fila Entonces
				tablero(fila,j) = Subcadena(palabra, j, j)
			FinSi
			
			si j >= Longitud(palabra) Entonces
				tablero(fila,j) = '*'
			FinSi
			
		FinPara
	FinPara
FinSubProceso

SubProceso buscarR(tablero, fila)
	Definir i , j, cont Como Entero
	Definir palabra Como Caracter
	cont = 0
	
	para j = 0 Hasta 11 Hacer
		si tablero(fila, j) = 'R' y cont == 0 Entonces
			Escribir 'R: en posicion [' fila ',' j ']'
			cont = 1
		FinSi
	FinPara

FinSubProceso





