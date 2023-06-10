Algoritmo sin_titulo
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
	//	encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	Definir Matriz, i, j, num, cont Como Entero
	Dimension Matriz(5,5)
	Escribir "Ingrese el número que desea buscar, rango de 0 a 100."
	Leer num
	cont=0
	Para i=0 hasta 5-1
		Para j=0 hasta 5-1
			Matriz(i,j)=aleatorio(0,100)
		FinPara
	FinPara
	Para i=0 hasta 5-1
		Para j=0 hasta 5-1
			Si Matriz(i,j)=num Entonces
				Escribir "El " num " se encuentra en la fila " i+1 " columna " j+1 "."
				cont = 1
			FinSi
		FinPara
	FinPara
	Si cont = 0 Entonces
		Escribir "Segui Participando... El número no está! :D "
	FinSi
	Para i=0 hasta 5-1
		Para j=0 hasta 5-1
			Escribir sin saltar Matriz(i,j) "       "
		FinPara
	Escribir " "
	FinPara
	
FinAlgoritmo
