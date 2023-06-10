Algoritmo ej_numero_cuatro
//Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3 
//comprendidos entre 1 y 100. 	
	Definir i, j, num1, num2, num3, num4 como entero
	Num2 = 0
	num4 = 0
	Para i=1 hasta 100 con paso 1 Hacer
		num1 = 2 * i
		Si num1 <= 100 Entonces
			num2 = num2+1
		FinSi
		num3 = 3 * i
		Si num3 <= 100 Entonces
			num4 = num4+1
		FinSi
	FinPara
	Escribir "Los múltiplos de 2, entre 1 y 100 son " num2
	Escribir "Los múltiplos de 3, entre 1 y 100 son " num4
	
	
FinAlgoritmo
	