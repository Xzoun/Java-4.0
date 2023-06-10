// Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//
//principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subpro-
//ceso para imprimir la matriz.

// 0  2  3 
// 2  0  5
// 3  5  0 


Algoritmo E22EJ4
	
Definir matriz, N Como Entero

Escribir "Ingrese el valor de N "
Leer N
Dimension matriz[N,N]

crearMatriz(matriz, N) 
MostrarMatriz(matriz, N)

FinAlgoritmo

subproceso crearMatriz(matriz, N) 
	Definir i, j Como Entero
	para i = 0 hasta N-1 
		para j = 0 hasta N-1
			si i = j Entonces
				matriz[i,j] = 0
			sino
				matriz[i,j] = Aleatorio(1,9) 
			FinSi
			
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarMatriz(matriz, N)
	definir i, j como entero
	para i = 0 hasta N-1 
		para j = 0 hasta N-1
			Escribir sin saltar matriz[i,j] " "
		FinPara
		Escribir " "
	FinPara
FinSubProceso