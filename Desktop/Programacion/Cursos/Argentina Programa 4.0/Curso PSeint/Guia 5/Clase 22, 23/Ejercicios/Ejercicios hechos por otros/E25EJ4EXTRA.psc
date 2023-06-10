Algoritmo E25EJ4EXTRA
//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
	//	lice las matrices para evitar el ingreso de datos por teclado.
	Definir matrizA, matrizB, matrizAB, i, j, k, suma Como Entero
	dimension matrizA[3,3], matrizB[3,3],matrizAB[3,3]
	
	para i=0 hasta 3-1
		para j=0 hasta 3-1
			matrizA[i,j] = Aleatorio(1,3)
			matrizB[i,j] = aleatorio(1,3)
			matrizAB[i,j] = 0
		FinPara
	FinPara
	
	suma = 0
	para k=0 hasta 2 Hacer
		para i=0 hasta 2 Hacer
			para j=0 hasta 2 Hacer
				suma = suma + matrizA(k,j)*matrizB(j,i)
			FinPara
			matrizAB(k,i) = suma
			suma=0
		FinPara
	FinPara
	
	Escribir "Matriz A"
	para i=0 hasta 3-1
		para j=0 hasta 3-1
			escribir sin saltar matrizA[i,j] " "
		FinPara
		escribir  " "
	FinPara
	Escribir " "
	Escribir "Matriz B"
	para i=0 hasta 3-1
		para j=0 hasta 3-1
			escribir sin saltar matrizB[i,j] " "
		FinPara
		escribir  " "
	FinPara
	Escribir " "
	Escribir "Matriz AB"
	para i=0 hasta 3-1
		para j=0 hasta 3-1
			escribir sin saltar matrizAB[i,j] " "
		FinPara
		escribir  " "
	FinPara
	
FinAlgoritmo
//           J 0  1  2  
//             1  2  3 
//             1  2  3
//             1  2  3
// i=0  1 2 3  6 12 18
// i=1  4 5 6
// i=2  7 8 9