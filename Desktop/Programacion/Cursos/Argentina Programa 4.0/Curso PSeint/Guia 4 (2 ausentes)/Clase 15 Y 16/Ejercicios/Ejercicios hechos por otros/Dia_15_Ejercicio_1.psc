Algoritmo sin_titulo
	//	1. Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
	//	La variable A, debe terminar con el valor de la variable B.
	Definir a, b Como Entero
	Escribir "Ingrese a: "
	Leer a
	Escribir "Ingrese b: "
	Leer b
	
	CambioValor(a,b)
	
	Escribir "A: ", a, " - B: ", b
	
	// Valor
	// Memoria --> a --> 6
	// Memoria --> b --> 10
	// Memoria --> num1 --> 1
	// Memoria --> b
	
	// Referencia
	// Memoria --> a
	// Memoria --> b
	
FinAlgoritmo


SubProceso CambioValor (num1 Por Referencia, num2 Por Referencia)
	Definir aux Como Entero
	aux = num1
	num1 = num2
	num2 = aux	
FinSubProceso
	