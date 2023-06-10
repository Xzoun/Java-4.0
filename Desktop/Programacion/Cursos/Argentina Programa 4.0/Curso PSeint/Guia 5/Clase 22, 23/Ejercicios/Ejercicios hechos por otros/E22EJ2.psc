Algoritmo E22EJ2
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coorde-
//	nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//	encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	
	Definir matriz, N Como Entero
	Definir i,j Como Entero
	Definir encontreValor como logico
	Dimension matriz[5,5]
	encontreValor = Falso
	para i = 0 hasta 5-1 
		para j = 0 hasta 5-1
			matriz[i,j] = Aleatorio(1,25) 
		FinPara
	FinPara
	Escribir "La matriz ya se cargó con numeros aleatorios"
	
	Escribir "Ingrese el valor a buscar "
	Leer N
	
	para i = 0 hasta 5-1 
		para j = 0 hasta 5-1
			si N = matriz[i,j] Entonces
				Escribir "Acertaste!!! en la posicion i=" i " j=" j
				encontreValor = Verdadero
			FinSi
		FinPara
	FinPara
	si encontreValor = Falso
		Escribir "La pifiesta fea!!!"
	FinSi
FinAlgoritmo
