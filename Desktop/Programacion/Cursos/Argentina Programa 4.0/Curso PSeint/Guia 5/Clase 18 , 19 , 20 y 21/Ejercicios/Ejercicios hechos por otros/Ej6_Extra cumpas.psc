Algoritmo Ej6_Extra
	Definir vector, n, x Como Entero
	Escribir "ingrese la dimensión del vector"
	leer n
	Dimension vector[n]
	
	Para x=0 hasta n-1 Hacer
		vector[x]=azar(100)
		Escribir vector[x]
	FinPara
	Escribir "la diferencia es: ", diferencia(vector,x,n)
FinAlgoritmo

Funcion k = diferencia(vector,x,n)
	Definir max, min, k Como Entero
	max=0
	min=101
	Para x=0 hasta n-1 Hacer		
		si vector[x]>max Entonces
			max=vector[x]
		FinSi
		si vector[x]<min Entonces
			min=vector[x]
		FinSi
		
	FinPara
escribir max, " ", min
k=max-min
FinFuncion