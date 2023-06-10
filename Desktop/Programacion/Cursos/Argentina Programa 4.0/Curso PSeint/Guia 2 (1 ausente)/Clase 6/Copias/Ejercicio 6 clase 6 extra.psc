Algoritmo sin_titulo
	definir kilos, precio, preciofinal Como Real
	
	Escribir "Ingrese la cantidad de kilos comprados: "
	leer kilos
	precio=200
	
	Si kilos <= 2 Entonces
		preciofinal = precio * kilos
		Escribir "El Precio final es: " preciofinal
	SiNo
		SI kilos >= 2.01 y kilos <= 5 Entonces
		preciofinal = (precio * kilos) * 0.9
		Escribir "El Precio final es: " preciofinal
		SiNo
			si kilos >= 5.01 y kilos <= 10 Entonces
		        preciofinal = (precio * kilos) * 0.85
		        Escribir "El Precio final es: " preciofinal
				
			SiNo
				
				preciofinal = (precio * kilos) * 0.8
		         Escribir "El Precio final es: " preciofinal
					
				
			FinSi
		FinSi
	Fin Si
	
FinAlgoritmo
