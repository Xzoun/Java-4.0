Algoritmo E22EJ5
	//	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
	//	trando la manera de que la frase se muestre de manera continua en la matriz.
	//	Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
	
	Definir matriz Como caracter 
	Definir i, j, N Como Entero
	N = 3
	Dimension matriz[N,N]
	
    definir palabra como cadena
	Escribir "Ingrese la mágica palabra de 9 caracteres "
	Leer palabra
	
	para i = 0 hasta N-1 
		para j = 0 hasta N-1
			matriz[i,j] = Subcadena(palabra, i*N+j, i*3+j)
		fin para
	FinPara
	
	para i = 0 hasta N-1 
		para j = 0 hasta N-1
			escribir sin saltar matriz[i,j] 
		fin para
		escribir " "
	FinPara
FinAlgoritmo
// HABILIDAD
// 012345678
//  i = 0
// j = 0 1 2 