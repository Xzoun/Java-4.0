Algoritmo sin_titulo
	Definir Num1, Num2, promp, promi, cp, ci como entero
	Definir rta, rta2 como cadena
	
	Num2 = 0
	promp = 1
	promi = 1
	cp = 0
	ci =0
	
	Hacer
		Escribir "Ingrese un número."
		Leer Num1
		Num2 = Num2 + 1
			Si num1 mod 2 = 0 Entonces
				cp = cp + 1
				promp = promp + num1
		Sino 
			Si num1 mod 2 = 1 Entonces
					
				ci = ci + 1
				promi = promi + num1
					
			FinSi
			FinSi
		Mientras que (cp + ci) < 10
		promp = promp -1
		promi = promi -1
		Escribir "El promedio de números pares es " promp/cp
		Escribir "El promedio de números impares es " promi/ci
FinAlgoritmo
