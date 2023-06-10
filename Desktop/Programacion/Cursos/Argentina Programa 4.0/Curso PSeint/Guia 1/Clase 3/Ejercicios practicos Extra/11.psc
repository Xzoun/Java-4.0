Algoritmo sin_titulo
	Definir num1,num2,num3, num4, num5, num6, prom, prom2, final, tp Como Real
	Escribir "Por favor ingrese la nota obtenida en cada uno de sus parciales."
	Leer num1, num2, num3
	Escribir "Bien, ahora ingrese la calificacion de su examen final"
	Leer num4
	Escribir "Perfecto bro, ahora dame la nota del practico"
	Leer num5
	
	prom = (num1+num2+num3)/3
	prom2 = prom*55/100
	final = num4*30/100
	tp = num5*15/100
	
	Num6 = prom2 + final + tp
	
	Escribir " "
	Escribir "Su calificacion final es de " num6
	Escribir " "
	
FinAlgoritmo
