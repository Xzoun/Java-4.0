Algoritmo sin_titulo
	Definir num1,num2,num3 Como Entero

	Escribir "Ingrese un número."
	Leer num1
	num2=0
	
	Num3=0
	primo(num1,num2,num3)
	
FinAlgoritmo



SubProceso primo(a,b,c)
	para b=1 hasta a con paso 1
		Si a mod b = 0 Entonces
			c = c + 1
		FinSi
	FinPara
	Si c > 2 Entonces
		Escribir "El número no es primo."
	SiNo
		Escribir "El número es primo."
	FinSi
FinSubProceso

	