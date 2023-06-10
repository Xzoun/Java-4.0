Funcion a=sum(b)
	Definir a,c Como Entero
	a=0
	si b>0 y b<10
		a=b
	SiNo
		Hacer
			
			c=b mod 10
			a=a+c
			b=trunc(b/10)
		Mientras Que b<>0 
	FinSi
FinFuncion


Algoritmo sin_titulo
	Definir num,z Como Entero
	leer num
	z=sum(num)
	Escribir z
FinAlgoritmo
