Algoritmo sin_titulo
	Definir frase como cadena
	definir letra, c como caracter
	Definir num1, num2, num3, i Como Entero
	Escribir "ingrese una frase"
	Leer frase
	Escribir "ingrese la letra que quiere contabilizar"
	Leer letra
	i = 0
	c = letra
	num3=longitud(frase)
	num2=0
	Escribir "la letra " letra " aparece " Busca(letra,frase,i,c,num2,num3) " veces en la frase ingresada." 
FinAlgoritmo	

funcion num2<-Busca(l,f,i,c,num2,num3)
	Para i = 0 hasta num3 con paso 1
		c = subcadena(f, i, i)
		Si c = l Entonces
			num2 = num2 + 1
		FinSi
	FinPara
FinFuncion