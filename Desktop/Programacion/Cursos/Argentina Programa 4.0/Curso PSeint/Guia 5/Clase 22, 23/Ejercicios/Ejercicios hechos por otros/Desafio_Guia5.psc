Algoritmo Desafio_Guia5
	Definir matriz Como caracter
	Definir f,c Como Entero
	f=8
	c=11
	Dimension matriz(f,c)
	rellenarMatriz(matriz,f,c)
	imprimirMatrix(matriz,f,c)
	intercambio(matriz,f,c)
	
	
FinAlgoritmo
SubProceso rellenarMatriz(m,f,c)
	Definir i,j Como Entero
	definir v,mat,programa,subpro,subproce,variable,enter,par,mientr Como Caracter
	v="Vector"
	mat="Matrix"
	programa="Programa"
	subpro="Subproceso"
	variable="Variable"
	enter="Entero"
	par="Para"
	mientr="Mientras"
	para i =0 Hasta f-1 Hacer
		para j=0 Hasta c-1 Hacer
			Segun i Hacer
				0:
					si j>Longitud(v) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(v,j,j)
					FinSi
					
				1:
					si j>Longitud(mat) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(mat,j,j)
					FinSi
				2:
					si j>Longitud(programa) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(programa,j,j)
					FinSi
				3:
					si j>Longitud(subpro) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(subpro,j,j)
					FinSi
				4:
					si j>Longitud(variable) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(variable,j,j)
					FinSi
				5:
					si j>Longitud(enter) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(enter,j,j)
					FinSi
				6:
					si j>Longitud(par) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(par,j,j)
					FinSi
				7:
					si j>Longitud(mientr) Entonces
						m(i,j)=" "
					SiNo
						m(i,j)=Subcadena(mientr,j,j)
					FinSi
			Fin Segun
		FinPara
	FinPara
FinSubProceso
SubProceso imprimirMatrix(m,f,c)
	Definir i,j Como Entero
	para i =0 Hasta f-1 Hacer
		para j=0 Hasta c-1 Hacer
			Escribir m(i,j)," " Sin Saltar	
		FinPara
		Escribir " "
	FinPara
FinSubProceso
SubProceso intercambio(m,f,c)
	Definir i,j,coord0, coord1, coord2, coord3, coord4, coord5, coord6, coord7, coord8, contador Como Entero
	para i=0 Hasta f-1 Hacer
		contador = 0
		para j=0 hasta c-1 Hacer
			Segun i Hacer
				0:
					Si m(i,j) = "r" y contador =0 Entonces
						coord0 = j
						contador = contador + 1
						Escribir j
					FinSi
				1:
					Si m(i,j) = "r" y contador =0 Entonces
						coord1 = j
						contador = contador + 1
						Escribir j
					FinSi
				2:
					Si m(i,j) = "r" y contador =0 Entonces
						coord2 = j
						contador = contador + 1
						Escribir j
					FinSi
				3:
					Si m(i,j) = "r" y contador =0 Entonces
						coord3 = j
						contador = contador + 1
						Escribir j
					FinSi
				4:
					Si m(i,j) = "r" y contador =0 Entonces
						coord4 = j
						contador = contador + 1
						Escribir j
					FinSi
				5:
					Si m(i,j) = "r" y contador =0 Entonces
						coord5 = j
						contador = contador + 1
						Escribir j
					FinSi
				6:
					Si m(i,j) = "r" y contador =0 Entonces
						coord6 = j
						contador = contador + 1
						Escribir j
					FinSi
				7:
					Si m(i,j) = "r" y contador =0 Entonces
						coord7 = j
						contador = contador + 1
						Escribir j
					FinSi
				8:
					Si m(i,j) = "r" y contador =0 Entonces
						coord8 = j
						contador = contador + 1
						Escribir j
					FinSi
			Fin Segun
		FinPara
	FinPara
FinSubProceso
SubProceso desplazarletras(intercambio,f, c)
	
	Definir i,j Como Entero
	Escribir coord1
	
FinSubProceso
	