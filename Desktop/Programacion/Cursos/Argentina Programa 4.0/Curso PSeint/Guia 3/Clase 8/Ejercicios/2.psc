Algoritmo sin_titulo
Definir num, max, min, k, suman Como real
num = 0
max = 0	
min = 1000000000000000
k = 0
suman = 0
Hacer
	Escribir "Ingrese un número."
	Leer num
	k = k + 1
	suman = suman + num
	Si num < min y num <> 0 Entonces
		min = num
	FinSi
	Si num > max Entonces
		max = num
	FinSi
	
Hasta que num = 0	
k = k - 1
Escribir "El mínimo es " min "."
Escribir "El máximo es " max "."
Escribir "El promedio es " suman/k "."

FinAlgoritmo
