Algoritmo sin_titulo
//	6 - Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//	letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
	
	Definir letra Como Caracter
	Escribir "Ingrese la letra: "
	Leer letra
	EntreLetras(letra)
	
FinAlgoritmo

SubProceso EntreLetras(letra_1 Por Valor)	// O --> O > M + O < T --> Escribir "Esta en el medio"
	
	Si letra_1 >= "M" y letra_1 <= "T" Entonces
		Escribir "La letra esta en el medio de M y T"
	SiNo
		Escribir "La letra NO esta en el medio de M y T"
	Fin Si
	
	
FinSubProceso
