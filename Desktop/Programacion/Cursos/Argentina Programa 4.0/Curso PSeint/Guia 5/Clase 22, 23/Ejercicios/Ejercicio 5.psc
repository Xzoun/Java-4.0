Algoritmo sin_titulo
//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, .
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//Nota: recordar el uso de la función Subcadena().
Definir matriz, pal como caracter

Dimension matriz(3,3)
Escribir "Por favor ingrese una palabra de 9 caracteres de longitud."
Leer pal
rellenarmatriz(matriz,pal)
FinAlgoritmo



Subproceso rellenarmatriz(m,p)
	Definir i, j, k como entero
	Definir g como caracter
	g=""
	
Para i =0 hasta 0
	Para j=0 hasta 3-1
			m(i,j)=subcadena(p,j,j)
		Escribir sin saltar m(i,j) "   "
	FinPara
	Escribir " "
FinPara
Para i =1 hasta 1
	Para j=0 hasta 3-1
		m(i,j)=subcadena(p,j+3,j+3)
		Escribir sin saltar m(i,j) "   "
	FinPara
	Escribir " "
FinPara
Para i =2 hasta 2
	Para j=0 hasta 3-1
		m(i,j)=subcadena(p,j+6,j+6)
		Escribir sin saltar m(i,j) "   "
	FinPara
	Escribir " "
FinPara

FinSubProceso
