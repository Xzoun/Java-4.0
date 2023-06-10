Algoritmo sin_titulo
	//	3. Realizar un procedimiento que permita realizar la división entre dos números y muestre el co-
	//	ciente y el resto utilizando el método de restas sucesivas.
	
	//	El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
	//	obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
	//	realizadas es el cociente. Por ejemplo: 50 / 13:
	//		50 - 13 = 37 una resta realizada
	//		37 - 13 = 24 dos restas realizadas
	//		24 - 13 = 11 tres restas realizadas
	//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
	
	Definir num1, num2 Como Entero
	Escribir "Ingrese num1: "
	Leer num1
	Escribir "Ingrese num2: "
	Leer num2
	
	CocienteYResto(num1,num2)
	
FinAlgoritmo

SubProceso CocienteYResto(dividendo, divisor)
	Definir cociente, resto Como Entero
	cociente = 1
	resto = dividendo - divisor // 50 - 13 --> Resto = 37
	
	Mientras resto >= divisor Hacer
		cociente = cociente + 1 // Contador de vueltas
		resto = resto - divisor
	Fin Mientras
	
	Escribir "Cociente: ", cociente
	Escribir "Resto: ", resto

FinSubProceso
