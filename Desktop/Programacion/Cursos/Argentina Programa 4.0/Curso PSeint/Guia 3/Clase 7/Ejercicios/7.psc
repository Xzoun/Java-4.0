Algoritmo sin_titulo
	Definir n como cadena
	Definir n1, n2 , n3 como real
	Escribir "Ingrese su nombre."
	Leer n
	
	Mientras n <> ""
		Escribir "Ingrese la nota obtenida en la práctica."
		Escribir "Luego ingrese la calificación obtenida en Problemas, y por último su calificación teórica."
		Leer n1, n2 , n3
		Si (n1 >= 0) y (n1 <= 10) y (n2 >= 0) y (n2 <= 10) y (n3 >= 0) y (n3 <= 10) Entonces
			
			Escribir "Su promedio es de " (n1/10) + (n2*5/10) + (n3*4/10) "."
			
		SiNo
			Escribir "Ingresó valores no válidos."
		FinSi
		
		Escribir " "		
		Escribir "Ingrese su nombre"
		Leer n
		
	FinMientras
Escribir "Gracias por utilizar."	
FinAlgoritmo

