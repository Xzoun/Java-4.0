Algoritmo sin_titulo
	definir llantas, precio Como Entero
	
	Escribir "Ingrese la cantidad de llantas compradas: "
	Leer llantas
	
	Si llantas< 5 Entonces
		precio = 3000 * llantas
		Escribir "El Precio final es: " precio
	SiNo
		SI llantas >= 5 y llantas <= 10 Entonces
		precio = 2500 * llantas
		Escribir "El Precio final es: " precio
		SiNo
				precio = 2000 * precio
		         Escribir "El Precio final es: " precio
					
		FinSi
	Fin Si
FinAlgoritmo
