Algoritmo sin_titulo
	Definir Num1 como entero
	Escribir "Ingrese un año."
	Leer Num1
	Si (((Num1 mod 4) = 0) y ((num1 mod 100) <> 0)) o (((num1 mod 100) = 0) y ((num1 mod 400) = 0)) Entonces
		Escribir "El año es bisiesto." 
	SiNo
		Escribir "El año no es bisiesto."
	FinSi
FinAlgoritmo
