Algoritmo dia22ex4
	
	//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
	//	lice las matrices para evitar el ingreso de datos por teclado.
	
	definir matriz1,matriz2,matriz3, i, j Como Entero
	dimension matriz1[3,3], matriz2[3,3], matriz3[3,3]
	
	rellenarMatrices(matriz1,matriz2)
	
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			Escribir matriz1[i,j] "   " Sin Saltar
		FinPara
		escribir ""
	FinPara
	
	Escribir ""
	
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			Escribir matriz2[i,j] "   " Sin Saltar
		FinPara
		escribir ""
	FinPara
	
	Escribir ""
	
	multi(matriz1,matriz2,matriz3)
	
FinAlgoritmo

SubProceso rellenarMatrices(matriz1,matriz2)
	
	definir i,j Como Entero
	
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matriz1[i,j]=Aleatorio(1,3)
			matriz2[i,j]=Aleatorio(1,3)
		FinPara
	FinPara
	
FinSubProceso

SubProceso multi(matriz1,matriz2,matriz3)
	
	definir i,j,k,suma Como Entero
	suma=0
	
	para k<-0 hasta 2 Hacer
		para i<-0 hasta 2 Hacer
			para j<-0 hasta 2 Hacer
				suma=suma+matriz1(k,j)*matriz2(j,i)
			FinPara
			matriz3(k,i)=suma
			suma=0
		FinPara
	FinPara
	
	para i<-0 hasta 2
		para j<-0 hasta 2 Hacer
			Escribir matriz3[i,j] "   " sin saltar
		FinPara
		Escribir ""
	FinPara

	
FinSubProceso
