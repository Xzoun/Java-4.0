Algoritmo sin_titulo
	Definir vector,i, h, suma, resta, mult como real
	Dimension vector(10)
	Escribir "Ingrese 10 números."
	
	para i = 0 hasta 10-1 con paso 1
		Leer h
		Vector(i) = h
	FinPara
	Escribir "Los números ingresados son"
	Suma = 0
	Resta = 0
	mult=1
	Para i = 0 hasta 10-1 con paso 1
		suma = suma + Vector(i)
		resta = resta - vector(i)
		mult = mult * vector(i)
	FinPara
	Escribir suma
	Escribir resta
	Escribir mult
FinAlgoritmo