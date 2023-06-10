//Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//su valor más grande.

Algoritmo Ej6_Extra
	Definir vector, n, x Como Entero
	Escribir "ingrese la dimensión del vector"
	leer n
	Dimension vector[n]
	
	Para x=0 hasta n-1 Hacer
		vector[x]=azar(100)
		Escribir vector[x]
	FinPara
	Escribir "la diferencia es: ", diferencia(vector,[n])
FinAlgoritmo

Funcion k = diferencia(j, w Por Referencia)
	Definir max, min, c, i, k Como Entero
	c=0
	max=0
	min=0
	i=0
	k=0
	Para i=0 hasta w-1 Hacer
		
		si j(i) > max Y c==0 Entonces
			max = j(i)
			min = j(i)
			c = c+1
		sino 
			si j(i)>max Entonces
				max=j(i)
			SiNo
				
				si j(i)<min Entonces
					min=j(i)
				FinSi
				
			FinSi
		FinSi
		
	FinPara
		k=max-min
FinFuncion
	