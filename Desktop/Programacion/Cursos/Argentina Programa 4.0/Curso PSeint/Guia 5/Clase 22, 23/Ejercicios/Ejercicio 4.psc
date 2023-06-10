Algoritmo sin_titulo
//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro 
//	subproceso para imprimir la matriz.
Definir matriz Como Entero
Dimension matriz(5,5)
Rellenarmatriz(matriz)
Imprimirmatriz(matriz)
FinAlgoritmo
Subproceso Rellenarmatriz(m)
	Definir i, j Como Entero
Para i=0 hasta 5-1
	Para j=0 hasta 5-1
		Si i = j Entonces
			m(i,j)=0
		SiNo
			m(i,j)=aleatorio(1,9)
		FinSi
	FinPara
FinPara
FinSubProceso


Subproceso imprimirmatriz(m)
	Definir i, j como entero
Para i=0 hasta 5-1
	Para j=0 hasta 5-1
		Escribir sin saltar m(i,j) "  "
	FinPara
	Escribir " "
FinPara
FinSubProceso
	