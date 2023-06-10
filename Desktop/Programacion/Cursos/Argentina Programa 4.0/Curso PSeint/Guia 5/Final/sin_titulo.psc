Algoritmo sin_titulo
//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicialice las 
//	matrices para evitar el ingreso de datos por teclado. 
	Definir MatrizA,MatrizB,MatrizAB Como Entero
	Dimension MatrizA(3,3),MatrizB(3,3), MatrizAB(3,3)
	RellenarMatriz(MatrizA,MatrizB,matrizAB)
	MultiplicacionMatriz(MatrizA,MatrizB,MatrizAB)
	
FinAlgoritmo


Subproceso MultiplicacionMatriz(ma,mb,mab)
	Definir i, j Como Entero
	Escribir "Matriz AB"
	Para i = 0 hasta 3-1
		Para j = 0 hasta 3-1
			mab(i,j)=mab(i,j)+ma(i,j)*mb(i,j)
			Escribir sin saltar mab(i,j) "    "
		FinPara
		Escribir " "
	FinPara
	
	
	
FinSubProceso



Subproceso RellenarMatriz(ma,mb,mab)
	Definir i, j Como Entero
	Para i = 0 hasta 3-1
		Para j = 0 hasta 3-1
			ma(i,j)=aleatorio(0,9)
			mb(i,j)=aleatorio(0,9)
			mab(i,j)=0
		FinPara
	FinPara
	Escribir "Matriz A"
	Para i=0 hasta 3-1
		Para j = 0 hasta 3-1
			
			Escribir sin saltar ma(i,j) " "
		FinPara
		Escribir " "
	FinPara
	Escribir "Matriz B"
	Para i = 0 hasta 3-1
		Para j = 0 hasta 3-1
			
			Escribir sin saltar mb(i,j) " "
		FinPara
		Escribir " "
	FinPara
FinSubProceso

