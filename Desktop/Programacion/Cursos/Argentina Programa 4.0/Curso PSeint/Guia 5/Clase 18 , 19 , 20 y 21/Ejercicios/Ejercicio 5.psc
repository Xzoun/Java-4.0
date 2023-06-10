Algoritmo sin_titulo
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario.
//	A continuación, se deberá crear una función que reciba el vector y devuelva el valor más
//	grande del vector.
	Definir Vector,n,j,a Como Entero
	Escribir "Ingrese una dimensión para su vector"
	Leer n
	Dimension Vector(n)
	Escribir "Bien, ahora ingrese los valores que va a utilizar"
	Para j = 0 hasta n-1
		Leer a
		Vector(j)=a
	FinPara
	Maximo(vector,n)
FinAlgoritmo



Funcion Maximo(v,n)
	Definir i, max, cont Como Entero
	max = v(0)
	cont = 0
Para i = 1 hasta n-1
	Si v(i) < max  Entonces
		cont = cont + 1
	Sino 
		max = v(i)
	FinSi
FinPara

Si cont = n-1 Entonces
	Escribir "El número más grande es " v(0)
SiNo
	Escribir "El número más grande es " max
FinSi

FinFuncion
