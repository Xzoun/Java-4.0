Algoritmo sin_titulo
	Definir num1, num2, num3, num4 Como Real
	Leer num1, num2, num3, num4
	Si num1 <= num2 y num1 <= num3 y num1 <= num4 Entonces
		Escribir "Su promedio es " (num2 + num3 + num4)/3
	SiNo
		Si num2 <= num1 y num2 <= num3 y num2 <= num4 Entonces
			Escribir "Su promedio es " (num1 + num3 + num4)/3
		Sino
			Si num3 <= num1 y num3 <= num2 y num3 <= num4 Entonces
				Escribir "Su promedio es " (num1 + num2 + num4)/3
			SiNo
				Escribir "Su promedio es " (num1 + num2 + num3)/3
			FinSi
		FinSi
	FinSi
FinAlgoritmo
