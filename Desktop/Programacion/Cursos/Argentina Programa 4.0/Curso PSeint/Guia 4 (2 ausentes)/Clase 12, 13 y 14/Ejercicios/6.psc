
Algoritmo sin_titulo
//	Realizar una función que calcule y retorne la suma de todos los divisores del número n 
//	distintos de n. El valor de n debe ser ingresado por el usuario.
	Definir num1, num2, num3,sum como entero
	Escribir "Ingrese un numero"
	Leer num1
	num2=0
	num3=0
	sum <-div(num1,num2,num3)
FinAlgoritmo
	
	
	
SubProceso sum <-div(a,b,c) 
	Escribir "Los divisores de " a ", sin contar a " a " son:"
	para b=a-1 hasta 1 con paso -1
		Si a mod b = 0
			c=c+b
			Escribir b
		FinSi
	Finpara
	Escribir " "
	Escribir "La suma de ellos es " c
	
FinSubProceso

