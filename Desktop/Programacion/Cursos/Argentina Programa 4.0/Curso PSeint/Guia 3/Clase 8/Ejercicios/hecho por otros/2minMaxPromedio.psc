///Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
///programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
///todos ellos.

///Para poder lograr, por ejemplo, el máximo inicializaremos una variable en cero llamada
///numeroMaximo. Luego iremos comparando cada número que se ingresa con esta variable.
///Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
///máximo entre estos números será 5. Si luego ingreso el número 2, se evalúa 2 > 5 lo que
///resultará falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una lógica
///similar tendrá el mínimo.

Algoritmo minMaxPromedio
	Definir num, max, min, i, suma Como Entero
	Definir promedio Como Entero
	
	max=0
	i=0
	suma=0
	min=9999999
	
	Hacer
		Escribir "ingreasar un número entero"
		Leer num
		i=i+1
		suma=suma+num
		
			si 	min>num y num <>0 Entonces
				min=num
			FinSi
			
			si 	max<num Entonces
				max=num
			FinSi
		
		Mientras Que num <> 0
		
	i=i-1	
	Escribir "Número más alto: ",max 
	Escribir "Número más bajo: ",min 
	Escribir "Promedio: ",suma/i
FinAlgoritmo
