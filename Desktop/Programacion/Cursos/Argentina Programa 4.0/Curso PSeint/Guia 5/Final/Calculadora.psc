Algoritmo sin_titulo
//Definicion de variables
Definir calculadora Como Entero
Definir cadena1, cadena2 como caracter
Definir diagonal3d1, diagonal3d2 Como Entero
//Definimos las 3 dimensiones de la matriz calculadora	
Dimension calculadora(3,3,3)
//Asignamos valores a las cadenas de texto
cadena1 = "123456789"
cadena2 = "987654321"
//Inicializamos la matriz
InicializarMatriz(calculadora)
//Llenamos las matrices como se marca en el enunciado
LlenarMatriz_Z0(calculadora,cadena1)
LlenarMatriz_Z1(calculadora,cadena2)
LlenarMatriz_Z2(calculadora)
//Mostramos los resultados de la matriz
imprimirMatriz(calculadora)
//Asiganmos los valores de las diagonales 3D
diagonal3D1 = calculadora(0,2,0)*calculadora(1,1,1)*calculadora(2,0,2) 
Escribir calculadora(0,2,0)
diagonal3D2 = calculadora(0,0,0)*calculadora(1,1,1)*calculadora(2,2,2)		
//Escribimos los resultados de las diagonales
Escribir "La multiplicación de los elementos de la diagonal 3D 1 es " diagonal3D1
Escribir "La multiplicación de los elementos de la diagonal 3D 2 es " diagonal3D2

FinAlgoritmo

Subproceso LlenarMatriz_Z0(calcu,c1)
	Definir i, j, k, contador Como Entero
	Para i=0 hasta 3-1
		Para j=0 hasta 3-1
			Para k=0 hasta 3-1
				Segun i
				0:
				calcu(0,0,k)=convertiranumero(subcadena(c1,k,k)) 
				1:
				calcu(0,1,k)=convertiranumero(subcadena(c1,k+3,k+3))
				2:
				calcu(0,2,k)=convertiranumero(subcadena(c1,k+6,k+6))
				FinSegun
				
			FinPara	
		FinPara
	FinPara
FinSubProceso


Subproceso LlenarMatriz_Z1(calcu,c2)
Definir i, j, k, contador Como Entero
	Para i=0 hasta 3-1
		Para j=0 hasta 3-1
			Para k=0 hasta 3-1
				Segun j
				0:
					calcu(1,0,k)=convertiranumero(subcadena(c2,k,k)) 
				1:
					calcu(1,1,k)=convertiranumero(subcadena(c2,k+3,k+3))
				2:
					calcu(1,2,k)=convertiranumero(subcadena(c2,k+6,k+6))
				FinSegun
			FinPara
		FinPara
	Finpara	
FinSubProceso

SubProceso LlenarMatriz_Z2(calcu)
Definir i, j, k, contador Como Entero
Para i=0 hasta 3-1
	Para j=0 hasta 3-1
		Para k=0 hasta 3-1
			Segun j
				0:
					calcu(2,0,k)=calcu(0,j,k)*calcu(1,j,k)
				1:
					calcu(2,1,k)=calcu(0,j,k)*calcu(1,j,k)
				2:
					calcu(2,2,k)=calcu(0,j,k)*calcu(1,j,k)
			FinSegun
		FinPara
	FinPara
Finpara	
FinSubProceso
	
Subproceso InicializarMatriz(calcu)
	Definir i, j, k como entero
	Para i=0 hasta 3-1
		Para j=0 hasta 3-1
			Para k=0 hasta 3-1
				calcu(i,j,k) = 0
			FinPara
		FinPara
	FinPara
FinSubProceso


Subproceso imprimirMatriz(calcu)
	Definir i, j, k como entero
	Para i=0 hasta 3-1
		Para j=0 hasta 3-1
			Para k=0 hasta 3-1
				Escribir sin saltar calcu(i,j,k) "   "
			FinPara
			Escribir "   "
		FinPara
		Escribir "    "
	FinPara
FinSubProceso

